// Copyright (c) 2018, The TurtleCoin Developers
// 
// Please see the included LICENSE file for more information.

/////////////////////////////////////
#include <WalletBackend/SubWallets.h>
/////////////////////////////////////

#include <config/CryptoNoteConfig.h>

#include <ctime>

/* TODO: Remove */
#include <iostream>

#include <random>

#include <WalletBackend/Utilities.h>

//////////////////////////
/* NON MEMBER FUNCTIONS */
//////////////////////////

namespace
{

    uint64_t getCurrentTimestampAdjusted()
    {
        /* Get the current time as a unix timestamp */
        std::time_t time = std::time(nullptr);

        /* Take the amount of time a block can potentially be in the past/future */
        std::initializer_list<uint64_t> limits =
        {
            CryptoNote::parameters::CRYPTONOTE_BLOCK_FUTURE_TIME_LIMIT,
            CryptoNote::parameters::CRYPTONOTE_BLOCK_FUTURE_TIME_LIMIT_V3,
            CryptoNote::parameters::CRYPTONOTE_BLOCK_FUTURE_TIME_LIMIT_V4
        };

        /* Get the largest adjustment possible */
        uint64_t adjust = std::max(limits);

        /* Take the earliest timestamp that will include all possible blocks */
        return time - adjust;
    }

    /* Converts a height to a timestamp */
    uint64_t scanHeightToTimestamp(const uint64_t scanHeight)
    {
        if (scanHeight == 0)
        {
            return 0;
        }

        /* Get the amount of seconds since the blockchain launched */
        uint64_t secondsSinceLaunch = scanHeight * 
                                      CryptoNote::parameters::DIFFICULTY_TARGET;

        /* Get the genesis block timestamp and add the time since launch */
        uint64_t timestamp = CryptoNote::parameters::GENESIS_BLOCK_TIMESTAMP
                           + secondsSinceLaunch;

        /* Don't make timestamp too large or daemon throws an error */
        if (timestamp >= getCurrentTimestampAdjusted())
        {
            return getCurrentTimestampAdjusted();
        }

        return timestamp;
    }
    
} // namespace

///////////////////////////////////
/* CONSTRUCTORS / DECONSTRUCTORS */
///////////////////////////////////

SubWallets::SubWallets()
{
}

/* Makes a new subwallet */
SubWallets::SubWallets(
    const Crypto::SecretKey privateSpendKey,
    const Crypto::SecretKey privateViewKey,
    const std::string address,
    const uint64_t scanHeight,
    const bool newWallet) :

    m_privateViewKey(privateViewKey),
    m_isViewWallet(false)
{
    Crypto::PublicKey publicSpendKey;

    Crypto::secret_key_to_public_key(privateSpendKey, publicSpendKey);

    uint64_t timestamp = newWallet ? getCurrentTimestampAdjusted() : 0;

    m_subWallets[publicSpendKey] = SubWallet(
        publicSpendKey, privateSpendKey, address, scanHeight, timestamp
    );

    m_publicSpendKeys.push_back(publicSpendKey);
}

/* Makes a new view only subwallet */
SubWallets::SubWallets(
    const Crypto::SecretKey privateViewKey,
    const std::string address,
    const uint64_t scanHeight,
    const bool newWallet) :

    m_privateViewKey(privateViewKey),
    m_isViewWallet(true)
{
    const auto [publicSpendKey, publicViewKey] = Utilities::addressToKeys(address);

    uint64_t timestamp = newWallet ? getCurrentTimestampAdjusted() : 0;

    m_subWallets[publicSpendKey] = SubWallet(
        publicSpendKey, address, scanHeight, timestamp
    );

    m_publicSpendKeys.push_back(publicSpendKey);
}

/////////////////////
/* CLASS FUNCTIONS */
/////////////////////

void SubWallets::addSubWallet()
{
    if (m_isViewWallet)
    {
        throw std::runtime_error("Wallet is a view wallet");
    }

    CryptoNote::KeyPair spendKey;

    /* Generate a spend key */
    Crypto::generate_keys(spendKey.publicKey, spendKey.secretKey);

    const std::string address = Utilities::privateKeysToAddress(
        spendKey.secretKey, m_privateViewKey
    );

    m_subWallets[spendKey.publicKey] = SubWallet(
        spendKey.publicKey, spendKey.secretKey, address, 0,
        getCurrentTimestampAdjusted()
    );
}

void SubWallets::importSubWallet(
    const Crypto::SecretKey privateSpendKey,
    const uint64_t scanHeight,
    const bool newWallet)
{
    /* TODO: return a wallet error */
    if (m_isViewWallet)
    {
        throw std::runtime_error("Wallet is a view wallet");
    }

    Crypto::PublicKey publicSpendKey;

    Crypto::secret_key_to_public_key(privateSpendKey, publicSpendKey);

    uint64_t timestamp = newWallet ? getCurrentTimestampAdjusted() : 0;

    const std::string address = Utilities::privateKeysToAddress(
        privateSpendKey, m_privateViewKey
    );

    m_subWallets[publicSpendKey] = SubWallet(
        publicSpendKey, privateSpendKey, address, scanHeight, timestamp
    );

    m_publicSpendKeys.push_back(publicSpendKey);
}

/* Gets the starting height, and timestamp to begin the sync from. Only one of
   these will be non zero, which will the the lowest one (ignoring null values).

   So, if for example, one subwallet has a start height of 400,000, and another
   has a timestamp of something corresponding to 300,000, we would return
   zero for the start height, and the timestamp corresponding to 300,000.

   Alternatively, if the timestamp corresponded to 500,000, we would return
   400,000 for the height, and zero for the timestamp. */
std::tuple<uint64_t, uint64_t> SubWallets::getMinInitialSyncStart() const
{
    /* Get the smallest sub wallet (by timestamp) */
    auto minElementByTimestamp = *std::min_element(m_subWallets.begin(), m_subWallets.end(),
    [](const auto &lhs, const auto &rhs)
    {
        return lhs.second.m_syncStartTimestamp < rhs.second.m_syncStartTimestamp;
    });

    const uint64_t minTimestamp = minElementByTimestamp.second.m_syncStartTimestamp;

    /* Get the smallest sub wallet (by height) */
    auto minElementByHeight = *std::min_element(m_subWallets.begin(), m_subWallets.end(),
    [](const auto &lhs, const auto &rhs)
    {
        return lhs.second.m_syncStartHeight < rhs.second.m_syncStartHeight;
    });

    const uint64_t minHeight = minElementByHeight.second.m_syncStartHeight;

    /* One or both of the values are zero, caller will use whichever is non
       zero */
    if (minHeight == 0 || minTimestamp == 0)
    {
        return {minHeight, minTimestamp};
    }

    /* Convert timestamp to height so we can compare them, then return the min
       of the two, and set the other to zero */
    const uint64_t timestampFromHeight = scanHeightToTimestamp(minHeight);

    if (timestampFromHeight < minTimestamp)
    {
        return {minHeight, 0};
    }
    else
    {
        return {0, minTimestamp};
    }
}

void SubWallets::addTransaction(const WalletTypes::Transaction tx)
{
    m_transactions.push_back(tx);

    /* We can regenerate the balance from the transactions, but this will be
       faster, as getting the balance is a common operation */
    for (const auto & [pubKey, amount] : tx.transfers)
    {
        m_subWallets[pubKey].m_balance += amount;
        
        if (amount != 0 && tx.fee == 0)
        {
            std::cout << "Coinbase transaction found!" << std::endl;
        }
        else if (amount > 0)
        {
            std::cout << "Incoming transaction found!" << std::endl;
        }
        else if (amount < 0)
        {
            std::cout << "Outgoing transaction found!" << std::endl;
        }
        else
        {
            std::cout << "Fusion transaction found!" << std::endl;
        }

        std::cout << "Hash: " << tx.hash << std::endl
                  << "Amount: " << std::abs(amount) << std::endl
                  << "Fee: " << tx.fee << std::endl
                  << "Block height: " << tx.blockHeight << std::endl
                  << "Timestamp: " << tx.timestamp << std::endl
                  << "Payment ID: " << tx.paymentID << std::endl << std::endl;
    }
}

void SubWallets::completeAndStoreTransactionInput(
    const Crypto::PublicKey publicSpendKey,
    const Crypto::KeyDerivation derivation,
    const size_t outputIndex,
    WalletTypes::TransactionInput input)
{
    const auto subWallet = m_subWallets.find(publicSpendKey);

    /* Check it exists */
    if (subWallet != m_subWallets.end())
    {
        subWallet->second.completeAndStoreTransactionInput(
            derivation, outputIndex, input
        );
    }
}

std::tuple<bool, Crypto::PublicKey>
    SubWallets::getKeyImageOwner(const Crypto::KeyImage keyImage) const
{
    for (const auto & [publicKey, subWallet] : m_subWallets)
    {
        /* See if the sub wallet contains the key image */
        auto it = std::find_if(subWallet.m_transactionInputs.begin(),
                               subWallet.m_transactionInputs.end(),
        [&keyImage](const auto &input)
        {
            return input.keyImage == keyImage;
        });

        /* Found the key image */
        if (it != subWallet.m_transactionInputs.end())
        {
            return {true, subWallet.m_publicSpendKey};
        }
    }

    return {false, Crypto::PublicKey()};
}

/* Remember if the transaction suceeds, we need to remove these key images
   so we don't double spend.
   
   This may throw if you don't validate the user has enough balance, and
   that each of the subwallets exist. */
std::tuple<std::vector<WalletTypes::TxInputAndOwner>, uint64_t>
        SubWallets::getTransactionInputsForAmount(
    const uint64_t amount,
    const bool takeFromAll,
    std::vector<Crypto::PublicKey> subWalletsToTakeFrom) const
{
    /* If we're able to take from every subwallet, set the wallets to take from
       to all our public spend keys */
    if (takeFromAll)
    {
        subWalletsToTakeFrom = m_publicSpendKeys;
    }

    std::vector<SubWallet> wallets;

    /* Loop through each public key and grab the associated wallet */
    for (const auto &publicKey : subWalletsToTakeFrom)
    {
        wallets.push_back(m_subWallets.at(publicKey));
    }

    std::vector<WalletTypes::TxInputAndOwner> availableInputs;

    /* Copy the transaction inputs from this sub wallet to inputs */
    for (const auto &subWallet : wallets)
    {
        std::transform(subWallet.m_transactionInputs.begin(),
                       subWallet.m_transactionInputs.end(),
                       std::back_inserter(availableInputs),
        [&subWallet](const auto input)
        {
            /* Add in the keys */
            WalletTypes::TxInputAndOwner t;

            t.input = input;
            t.privateSpendKey = subWallet.m_privateSpendKey;
            t.publicSpendKey = subWallet.m_publicSpendKey;

            return t;
        });
    }

    /* Shuffle the inputs */
    std::shuffle(availableInputs.begin(), availableInputs.end(), std::random_device{});

    uint64_t foundMoney = 0;

    std::vector<WalletTypes::TxInputAndOwner> inputsToUse;

    /* Loop through each input */
    for (const auto &walletAmount : availableInputs)
    {
        /* Add each input */
        inputsToUse.push_back(walletAmount);

        foundMoney += walletAmount.input.amount;

        /* Keep adding until we have enough money for the transaction */
        if (foundMoney >= amount)
        {
            return {inputsToUse, foundMoney};
        }
    }

    /* Not enough money to cover the transaction */
    throw std::invalid_argument("Not enough funds found!");
}

/* Gets the address of the 'first' wallet. Since this is an unordered_map, the
   wallet this points to is undefined. You should only really use this in a
   single wallet container */
std::string SubWallets::getDefaultChangeAddress() const
{
    return (*m_subWallets.begin()).second.m_address;
}

/* Will throw if the public keys given don't exist */
uint64_t SubWallets::getBalance(
    std::vector<Crypto::PublicKey> subWalletsToTakeFrom,
    const bool takeFromAll) const
{
    /* If we're able to take from every subwallet, set the wallets to take from
       to all our public spend keys */
    if (takeFromAll)
    {
        subWalletsToTakeFrom = m_publicSpendKeys;
    }

    uint64_t total = 0;

    /* TODO: Overflow */
    for (const auto pubKey : subWalletsToTakeFrom)
    {
        total += m_subWallets.at(pubKey).m_balance;
    }

    return total;
}

/* Removes a spent key image so we don't double spend */
void SubWallets::removeSpentKeyImage(
    const Crypto::KeyImage keyImage,
    const Crypto::PublicKey publicKey)
{
    /* Grab a reference to the transaction inputs so we don't have to type
       this each time */
    auto &inputs = m_subWallets.at(publicKey).m_transactionInputs;

    /* Find the key image to remove and move it to the end of the vector */
    auto it = std::remove_if(inputs.begin(), inputs.end(), [&keyImage](const auto x)
    {
        return x.keyImage == keyImage;
    });

    /* Shouldn't happen */
    if (it == inputs.end())
    {
        throw std::runtime_error("Could not find key image to remove!");
    }

    /* Erase the key image from the vector */
    inputs.erase(it);
}

/* Remove transactions and key images that occured on a forked chain */
void SubWallets::removeForkedTransactions(uint64_t forkHeight)
{
    /* std::remove_if doesn't actually remove anything, it just moves the
       removed items to the end, and gives an iterator to the 'new' end.
       We then call std::erase(newEnd, oldEnd) to remove the items */
    auto newEnd = std::remove_if(m_transactions.begin(), m_transactions.end(),
    [forkHeight](auto tx)
    {
        /* Remove the transaction if it's height is >= than the fork height */
        return tx.blockHeight >= forkHeight;
    });

    m_transactions.erase(newEnd, m_transactions.end());

    /* Loop through each subwallet */
    for (const auto & [publicKey, subWallet] : m_subWallets)
    {
        auto &inputs = m_subWallets.at(publicKey).m_transactionInputs;

        /* Remove the tx input if it's height is >= fork height */
        auto newInputsEnd = std::remove_if(inputs.begin(), inputs.end(),
        [forkHeight](auto input)
        {
            return input.blockHeight >= forkHeight;
        });

        inputs.erase(newInputsEnd, inputs.end());
    }
}

Crypto::SecretKey SubWallets::getPrivateViewKey() const
{
    return m_privateViewKey;
}
