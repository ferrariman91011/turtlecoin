# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.12.3/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.12.3/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/Mkilaghbian/Desktop/turtlecoin

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/Mkilaghbian/Desktop/turtlecoin/builds

# Include any dependencies generated for this target.
include src/CMakeFiles/miner.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/miner.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/miner.dir/flags.make

src/CMakeFiles/miner.dir/Miner/BlockchainMonitor.cpp.o: src/CMakeFiles/miner.dir/flags.make
src/CMakeFiles/miner.dir/Miner/BlockchainMonitor.cpp.o: ../src/Miner/BlockchainMonitor.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Mkilaghbian/Desktop/turtlecoin/builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/miner.dir/Miner/BlockchainMonitor.cpp.o"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/miner.dir/Miner/BlockchainMonitor.cpp.o -c /Users/Mkilaghbian/Desktop/turtlecoin/src/Miner/BlockchainMonitor.cpp

src/CMakeFiles/miner.dir/Miner/BlockchainMonitor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/miner.dir/Miner/BlockchainMonitor.cpp.i"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Mkilaghbian/Desktop/turtlecoin/src/Miner/BlockchainMonitor.cpp > CMakeFiles/miner.dir/Miner/BlockchainMonitor.cpp.i

src/CMakeFiles/miner.dir/Miner/BlockchainMonitor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/miner.dir/Miner/BlockchainMonitor.cpp.s"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Mkilaghbian/Desktop/turtlecoin/src/Miner/BlockchainMonitor.cpp -o CMakeFiles/miner.dir/Miner/BlockchainMonitor.cpp.s

src/CMakeFiles/miner.dir/Miner/Miner.cpp.o: src/CMakeFiles/miner.dir/flags.make
src/CMakeFiles/miner.dir/Miner/Miner.cpp.o: ../src/Miner/Miner.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Mkilaghbian/Desktop/turtlecoin/builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/CMakeFiles/miner.dir/Miner/Miner.cpp.o"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/miner.dir/Miner/Miner.cpp.o -c /Users/Mkilaghbian/Desktop/turtlecoin/src/Miner/Miner.cpp

src/CMakeFiles/miner.dir/Miner/Miner.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/miner.dir/Miner/Miner.cpp.i"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Mkilaghbian/Desktop/turtlecoin/src/Miner/Miner.cpp > CMakeFiles/miner.dir/Miner/Miner.cpp.i

src/CMakeFiles/miner.dir/Miner/Miner.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/miner.dir/Miner/Miner.cpp.s"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Mkilaghbian/Desktop/turtlecoin/src/Miner/Miner.cpp -o CMakeFiles/miner.dir/Miner/Miner.cpp.s

src/CMakeFiles/miner.dir/Miner/MinerManager.cpp.o: src/CMakeFiles/miner.dir/flags.make
src/CMakeFiles/miner.dir/Miner/MinerManager.cpp.o: ../src/Miner/MinerManager.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Mkilaghbian/Desktop/turtlecoin/builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/CMakeFiles/miner.dir/Miner/MinerManager.cpp.o"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/miner.dir/Miner/MinerManager.cpp.o -c /Users/Mkilaghbian/Desktop/turtlecoin/src/Miner/MinerManager.cpp

src/CMakeFiles/miner.dir/Miner/MinerManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/miner.dir/Miner/MinerManager.cpp.i"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Mkilaghbian/Desktop/turtlecoin/src/Miner/MinerManager.cpp > CMakeFiles/miner.dir/Miner/MinerManager.cpp.i

src/CMakeFiles/miner.dir/Miner/MinerManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/miner.dir/Miner/MinerManager.cpp.s"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Mkilaghbian/Desktop/turtlecoin/src/Miner/MinerManager.cpp -o CMakeFiles/miner.dir/Miner/MinerManager.cpp.s

src/CMakeFiles/miner.dir/Miner/MiningConfig.cpp.o: src/CMakeFiles/miner.dir/flags.make
src/CMakeFiles/miner.dir/Miner/MiningConfig.cpp.o: ../src/Miner/MiningConfig.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Mkilaghbian/Desktop/turtlecoin/builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/CMakeFiles/miner.dir/Miner/MiningConfig.cpp.o"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/miner.dir/Miner/MiningConfig.cpp.o -c /Users/Mkilaghbian/Desktop/turtlecoin/src/Miner/MiningConfig.cpp

src/CMakeFiles/miner.dir/Miner/MiningConfig.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/miner.dir/Miner/MiningConfig.cpp.i"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Mkilaghbian/Desktop/turtlecoin/src/Miner/MiningConfig.cpp > CMakeFiles/miner.dir/Miner/MiningConfig.cpp.i

src/CMakeFiles/miner.dir/Miner/MiningConfig.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/miner.dir/Miner/MiningConfig.cpp.s"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Mkilaghbian/Desktop/turtlecoin/src/Miner/MiningConfig.cpp -o CMakeFiles/miner.dir/Miner/MiningConfig.cpp.s

src/CMakeFiles/miner.dir/Miner/main.cpp.o: src/CMakeFiles/miner.dir/flags.make
src/CMakeFiles/miner.dir/Miner/main.cpp.o: ../src/Miner/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Mkilaghbian/Desktop/turtlecoin/builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/CMakeFiles/miner.dir/Miner/main.cpp.o"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/miner.dir/Miner/main.cpp.o -c /Users/Mkilaghbian/Desktop/turtlecoin/src/Miner/main.cpp

src/CMakeFiles/miner.dir/Miner/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/miner.dir/Miner/main.cpp.i"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Mkilaghbian/Desktop/turtlecoin/src/Miner/main.cpp > CMakeFiles/miner.dir/Miner/main.cpp.i

src/CMakeFiles/miner.dir/Miner/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/miner.dir/Miner/main.cpp.s"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Mkilaghbian/Desktop/turtlecoin/src/Miner/main.cpp -o CMakeFiles/miner.dir/Miner/main.cpp.s

# Object files for target miner
miner_OBJECTS = \
"CMakeFiles/miner.dir/Miner/BlockchainMonitor.cpp.o" \
"CMakeFiles/miner.dir/Miner/Miner.cpp.o" \
"CMakeFiles/miner.dir/Miner/MinerManager.cpp.o" \
"CMakeFiles/miner.dir/Miner/MiningConfig.cpp.o" \
"CMakeFiles/miner.dir/Miner/main.cpp.o"

# External object files for target miner
miner_EXTERNAL_OBJECTS =

src/UBDI\ Miner: src/CMakeFiles/miner.dir/Miner/BlockchainMonitor.cpp.o
src/UBDI\ Miner: src/CMakeFiles/miner.dir/Miner/Miner.cpp.o
src/UBDI\ Miner: src/CMakeFiles/miner.dir/Miner/MinerManager.cpp.o
src/UBDI\ Miner: src/CMakeFiles/miner.dir/Miner/MiningConfig.cpp.o
src/UBDI\ Miner: src/CMakeFiles/miner.dir/Miner/main.cpp.o
src/UBDI\ Miner: src/CMakeFiles/miner.dir/build.make
src/UBDI\ Miner: src/libCryptoNoteCore.a
src/UBDI\ Miner: src/libRpc.a
src/UBDI\ Miner: src/libSerialization.a
src/UBDI\ Miner: src/libSystem.a
src/UBDI\ Miner: src/libHttp.a
src/UBDI\ Miner: src/libLogging.a
src/UBDI\ Miner: src/libCommon.a
src/UBDI\ Miner: src/libCrypto.a
src/UBDI\ Miner: /usr/local/lib/libboost_system.a
src/UBDI\ Miner: /usr/local/lib/libboost_filesystem.a
src/UBDI\ Miner: /usr/local/lib/libboost_thread-mt.a
src/UBDI\ Miner: /usr/local/lib/libboost_date_time.a
src/UBDI\ Miner: /usr/local/lib/libboost_chrono.a
src/UBDI\ Miner: /usr/local/lib/libboost_regex.a
src/UBDI\ Miner: /usr/local/lib/libboost_serialization.a
src/UBDI\ Miner: /usr/local/lib/libboost_program_options.a
src/UBDI\ Miner: /usr/local/lib/libboost_atomic-mt.a
src/UBDI\ Miner: src/libP2P.a
src/UBDI\ Miner: src/libCryptoNoteCore.a
src/UBDI\ Miner: src/libRpc.a
src/UBDI\ Miner: src/libP2P.a
src/UBDI\ Miner: src/libSerialization.a
src/UBDI\ Miner: src/libSystem.a
src/UBDI\ Miner: src/libHttp.a
src/UBDI\ Miner: src/libCommon.a
src/UBDI\ Miner: src/libCrypto.a
src/UBDI\ Miner: src/libLogging.a
src/UBDI\ Miner: /usr/local/lib/libboost_system.a
src/UBDI\ Miner: /usr/local/lib/libboost_filesystem.a
src/UBDI\ Miner: /usr/local/lib/libboost_thread-mt.a
src/UBDI\ Miner: /usr/local/lib/libboost_date_time.a
src/UBDI\ Miner: /usr/local/lib/libboost_chrono.a
src/UBDI\ Miner: /usr/local/lib/libboost_regex.a
src/UBDI\ Miner: /usr/local/lib/libboost_serialization.a
src/UBDI\ Miner: /usr/local/lib/libboost_program_options.a
src/UBDI\ Miner: /usr/local/lib/libboost_atomic-mt.a
src/UBDI\ Miner: external/miniupnpc/libminiupnpc.a
src/UBDI\ Miner: src/CMakeFiles/miner.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/Mkilaghbian/Desktop/turtlecoin/builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable \"UBDI Miner\""
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/miner.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/miner.dir/build: src/UBDI\ Miner

.PHONY : src/CMakeFiles/miner.dir/build

src/CMakeFiles/miner.dir/clean:
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && $(CMAKE_COMMAND) -P CMakeFiles/miner.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/miner.dir/clean

src/CMakeFiles/miner.dir/depend:
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/Mkilaghbian/Desktop/turtlecoin /Users/Mkilaghbian/Desktop/turtlecoin/src /Users/Mkilaghbian/Desktop/turtlecoin/builds /Users/Mkilaghbian/Desktop/turtlecoin/builds/src /Users/Mkilaghbian/Desktop/turtlecoin/builds/src/CMakeFiles/miner.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/miner.dir/depend

