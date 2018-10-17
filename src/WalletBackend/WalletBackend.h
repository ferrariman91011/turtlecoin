// Copyright (c) 2018, The TurtleCoin Developers
// 
// Please see the included LICENSE file for more information.

#pragma once

#include "CryptoTypes.h"

#include "json.hpp"

#include <Logging/LoggerManager.h>

#include <NodeRpcProxy/NodeRpcProxy.h>

#include <string>

#include <tuple>

#include <vector>

#include <WalletBackend/SubWallets.h>
#include <WalletBackend/WalletErrors.h>
#include <WalletBackend/WalletSynchronizer.h>

using nlohmann::json;

class WalletBackend
{
    public:

        /* Very heavily suggested to not call this directly. Call one of the
           below functions to correctly initialize a wallet. This is left
           public so the json serialization works correctly. */
        WalletBackend();

        /* Deconstructor */
        ~WalletBackend();

        /* Delete the copy constructor */
        WalletBackend(const WalletBackend &) = delete;

        /* Delete the Assignment operator */
        WalletBackend & operator=(const WalletBackend &) = delete;

        /* Move constructor */
        WalletBackend(WalletBackend && old);

        /* Move Assignment Operator */
        WalletBackend & operator=(WalletBackend && old);

        /* Imports a wallet from a mnemonic seed. Returns the wallet class,
           or an error. */
        static std::tuple<WalletError, WalletBackend> importWalletFromSeed(
            const std::string mnemonicSeed,
            const std::string filename,
            const std::string password,
            const uint64_t scanHeight,
            const std::string daemonHost,
            const uint16_t daemonPort);

        /* Imports a wallet from a private spend key and a view key. Returns
           the wallet class, or an error. */
        static std::tuple<WalletError, WalletBackend> importWalletFromKeys(
            const Crypto::SecretKey privateSpendKey,
            const Crypto::SecretKey privateViewKey,
            const std::string filename,
            const std::string password,
            const uint64_t scanHeight,
            const std::string daemonHost,
            const uint16_t daemonPort);

        /* Imports a view wallet from a private view key and an address.
           Returns the wallet class, or an error. */
        static std::tuple<WalletError, WalletBackend> importViewWallet(
            const Crypto::SecretKey privateViewKey,
            const std::string address,
            const std::string filename,
            const std::string password,
            const uint64_t scanHeight,
            const std::string daemonHost,
            const uint16_t daemonPort);

        /* Creates a new wallet with the given filename and password */
        static std::tuple<WalletError, WalletBackend> createWallet(
            const std::string filename,
            const std::string password,
            const std::string daemonHost,
            const uint16_t daemonPort);

        /* Opens a wallet already on disk with the given filename + password */
        static std::tuple<WalletError, WalletBackend> openWallet(
            const std::string filename,
            const std::string password,
            const std::string daemonHost,
            const uint16_t daemonPort);

        WalletError save() const;

        /* Converts the class to a json object */
        json toJson() const;

        /* Initializes the class from a json string */
        void fromJson(const json &j);
        
        std::tuple<WalletError, Crypto::Hash> sendTransactionBasic(
            const std::string destination,
            const uint64_t amount,
            const std::string paymentID);

        std::tuple<WalletError, Crypto::Hash> sendTransactionAdvanced(
            const std::vector<std::pair<std::string, uint64_t>> destinations,
            const uint64_t mixin,
            const uint64_t fee,
            const std::string paymentID,
            const std::vector<std::string> subWalletsToTakeFrom,
            const std::string changeAddress);

        /* Get the balance for one subwallet */
        std::tuple<WalletError, uint64_t> getBalance(
            const std::string address) const;

        /* Get the balance for all subwallets */
        uint64_t getTotalBalance() const;

        std::shared_ptr<EventHandler> m_eventHandler;

    private:

        /* Standard Constructor */
        WalletBackend(
            const std::string filename,
            const std::string password,
            const Crypto::SecretKey privateSpendKey,
            const Crypto::SecretKey privateViewKey,
            const uint64_t scanHeight,
            const bool newWallet,
            const std::string daemonHost,
            const uint16_t daemonPort);

        /* View wallet constructor */
        WalletBackend(
            const std::string filename,
            const std::string password,
            const Crypto::SecretKey privateViewKey,
            const std::string address,
            const uint64_t scanHeight,
            const std::string daemonHost,
            const uint16_t daemonPort);

        WalletError init();

        /* Initialize stuff which can't be initialized via the json
           initializaton */
        WalletError initializeAfterLoad(
            const std::string filename,
            const std::string password,
            const std::string daemonHost,
            const uint16_t daemonPort);

        /* Start the sync process */
        void sync();

        /* The filename the wallet is saved to */
        std::string m_filename;

        /* The password the wallet is encrypted with */
        std::string m_password;

        /* The sub wallets container (Using a shared_ptr here so
           the WalletSynchronizer has access to it) */
        std::shared_ptr<SubWallets> m_subWallets;

        /* The daemon connection */
        std::shared_ptr<CryptoNote::NodeRpcProxy> m_daemon;

        /* The log manager */
        std::shared_ptr<Logging::LoggerManager> m_logManager;

        /* The logger instance (Need to keep around because the daemon
           constructor takes a reference to the variable, so if it goes out
           of scope we segfault... :facepalm: */
        std::shared_ptr<Logging::LoggerRef> m_logger;

        /* We use a shared pointer here, because we start the thread in the
           class, with the class as a context, hence, when we go to move the
           WalletSynchronizer class, the thread gets moved() across, but it
           is still pointing to a class which has been moved from, which
           is undefined behaviour. So, none of our changes to the
           WalletSynchronizer class reflect in the thread.

           The ideal way to fix this would probably to disable move semantics,
           and just assign once - however this is pretty tricky to do, as
           we want to use the factory pattern so we're not initializing
           with crappy data, and can return a meaningful error to the user
           rather than having to throw() or check isInitialized() everywhere.

           More info here: https://stackoverflow.com/q/43203869/8737306
           
           PS: I want to die */
        std::shared_ptr<WalletSynchronizer> m_walletSynchronizer;
};
