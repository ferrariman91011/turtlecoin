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
include src/CMakeFiles/Crypto.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/Crypto.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/Crypto.dir/flags.make

src/CMakeFiles/Crypto.dir/crypto/aesb.c.o: src/CMakeFiles/Crypto.dir/flags.make
src/CMakeFiles/Crypto.dir/crypto/aesb.c.o: ../src/crypto/aesb.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Mkilaghbian/Desktop/turtlecoin/builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/CMakeFiles/Crypto.dir/crypto/aesb.c.o"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Crypto.dir/crypto/aesb.c.o   -c /Users/Mkilaghbian/Desktop/turtlecoin/src/crypto/aesb.c

src/CMakeFiles/Crypto.dir/crypto/aesb.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Crypto.dir/crypto/aesb.c.i"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Mkilaghbian/Desktop/turtlecoin/src/crypto/aesb.c > CMakeFiles/Crypto.dir/crypto/aesb.c.i

src/CMakeFiles/Crypto.dir/crypto/aesb.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Crypto.dir/crypto/aesb.c.s"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Mkilaghbian/Desktop/turtlecoin/src/crypto/aesb.c -o CMakeFiles/Crypto.dir/crypto/aesb.c.s

src/CMakeFiles/Crypto.dir/crypto/blake256.c.o: src/CMakeFiles/Crypto.dir/flags.make
src/CMakeFiles/Crypto.dir/crypto/blake256.c.o: ../src/crypto/blake256.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Mkilaghbian/Desktop/turtlecoin/builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object src/CMakeFiles/Crypto.dir/crypto/blake256.c.o"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Crypto.dir/crypto/blake256.c.o   -c /Users/Mkilaghbian/Desktop/turtlecoin/src/crypto/blake256.c

src/CMakeFiles/Crypto.dir/crypto/blake256.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Crypto.dir/crypto/blake256.c.i"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Mkilaghbian/Desktop/turtlecoin/src/crypto/blake256.c > CMakeFiles/Crypto.dir/crypto/blake256.c.i

src/CMakeFiles/Crypto.dir/crypto/blake256.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Crypto.dir/crypto/blake256.c.s"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Mkilaghbian/Desktop/turtlecoin/src/crypto/blake256.c -o CMakeFiles/Crypto.dir/crypto/blake256.c.s

src/CMakeFiles/Crypto.dir/crypto/chacha8.c.o: src/CMakeFiles/Crypto.dir/flags.make
src/CMakeFiles/Crypto.dir/crypto/chacha8.c.o: ../src/crypto/chacha8.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Mkilaghbian/Desktop/turtlecoin/builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object src/CMakeFiles/Crypto.dir/crypto/chacha8.c.o"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Crypto.dir/crypto/chacha8.c.o   -c /Users/Mkilaghbian/Desktop/turtlecoin/src/crypto/chacha8.c

src/CMakeFiles/Crypto.dir/crypto/chacha8.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Crypto.dir/crypto/chacha8.c.i"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Mkilaghbian/Desktop/turtlecoin/src/crypto/chacha8.c > CMakeFiles/Crypto.dir/crypto/chacha8.c.i

src/CMakeFiles/Crypto.dir/crypto/chacha8.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Crypto.dir/crypto/chacha8.c.s"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Mkilaghbian/Desktop/turtlecoin/src/crypto/chacha8.c -o CMakeFiles/Crypto.dir/crypto/chacha8.c.s

src/CMakeFiles/Crypto.dir/crypto/crypto-ops-data.c.o: src/CMakeFiles/Crypto.dir/flags.make
src/CMakeFiles/Crypto.dir/crypto/crypto-ops-data.c.o: ../src/crypto/crypto-ops-data.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Mkilaghbian/Desktop/turtlecoin/builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object src/CMakeFiles/Crypto.dir/crypto/crypto-ops-data.c.o"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Crypto.dir/crypto/crypto-ops-data.c.o   -c /Users/Mkilaghbian/Desktop/turtlecoin/src/crypto/crypto-ops-data.c

src/CMakeFiles/Crypto.dir/crypto/crypto-ops-data.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Crypto.dir/crypto/crypto-ops-data.c.i"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Mkilaghbian/Desktop/turtlecoin/src/crypto/crypto-ops-data.c > CMakeFiles/Crypto.dir/crypto/crypto-ops-data.c.i

src/CMakeFiles/Crypto.dir/crypto/crypto-ops-data.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Crypto.dir/crypto/crypto-ops-data.c.s"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Mkilaghbian/Desktop/turtlecoin/src/crypto/crypto-ops-data.c -o CMakeFiles/Crypto.dir/crypto/crypto-ops-data.c.s

src/CMakeFiles/Crypto.dir/crypto/crypto-ops.c.o: src/CMakeFiles/Crypto.dir/flags.make
src/CMakeFiles/Crypto.dir/crypto/crypto-ops.c.o: ../src/crypto/crypto-ops.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Mkilaghbian/Desktop/turtlecoin/builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object src/CMakeFiles/Crypto.dir/crypto/crypto-ops.c.o"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Crypto.dir/crypto/crypto-ops.c.o   -c /Users/Mkilaghbian/Desktop/turtlecoin/src/crypto/crypto-ops.c

src/CMakeFiles/Crypto.dir/crypto/crypto-ops.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Crypto.dir/crypto/crypto-ops.c.i"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Mkilaghbian/Desktop/turtlecoin/src/crypto/crypto-ops.c > CMakeFiles/Crypto.dir/crypto/crypto-ops.c.i

src/CMakeFiles/Crypto.dir/crypto/crypto-ops.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Crypto.dir/crypto/crypto-ops.c.s"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Mkilaghbian/Desktop/turtlecoin/src/crypto/crypto-ops.c -o CMakeFiles/Crypto.dir/crypto/crypto-ops.c.s

src/CMakeFiles/Crypto.dir/crypto/crypto.cpp.o: src/CMakeFiles/Crypto.dir/flags.make
src/CMakeFiles/Crypto.dir/crypto/crypto.cpp.o: ../src/crypto/crypto.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Mkilaghbian/Desktop/turtlecoin/builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object src/CMakeFiles/Crypto.dir/crypto/crypto.cpp.o"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Crypto.dir/crypto/crypto.cpp.o -c /Users/Mkilaghbian/Desktop/turtlecoin/src/crypto/crypto.cpp

src/CMakeFiles/Crypto.dir/crypto/crypto.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Crypto.dir/crypto/crypto.cpp.i"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Mkilaghbian/Desktop/turtlecoin/src/crypto/crypto.cpp > CMakeFiles/Crypto.dir/crypto/crypto.cpp.i

src/CMakeFiles/Crypto.dir/crypto/crypto.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Crypto.dir/crypto/crypto.cpp.s"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Mkilaghbian/Desktop/turtlecoin/src/crypto/crypto.cpp -o CMakeFiles/Crypto.dir/crypto/crypto.cpp.s

src/CMakeFiles/Crypto.dir/crypto/groestl.c.o: src/CMakeFiles/Crypto.dir/flags.make
src/CMakeFiles/Crypto.dir/crypto/groestl.c.o: ../src/crypto/groestl.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Mkilaghbian/Desktop/turtlecoin/builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object src/CMakeFiles/Crypto.dir/crypto/groestl.c.o"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Crypto.dir/crypto/groestl.c.o   -c /Users/Mkilaghbian/Desktop/turtlecoin/src/crypto/groestl.c

src/CMakeFiles/Crypto.dir/crypto/groestl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Crypto.dir/crypto/groestl.c.i"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Mkilaghbian/Desktop/turtlecoin/src/crypto/groestl.c > CMakeFiles/Crypto.dir/crypto/groestl.c.i

src/CMakeFiles/Crypto.dir/crypto/groestl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Crypto.dir/crypto/groestl.c.s"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Mkilaghbian/Desktop/turtlecoin/src/crypto/groestl.c -o CMakeFiles/Crypto.dir/crypto/groestl.c.s

src/CMakeFiles/Crypto.dir/crypto/hash-extra-blake.c.o: src/CMakeFiles/Crypto.dir/flags.make
src/CMakeFiles/Crypto.dir/crypto/hash-extra-blake.c.o: ../src/crypto/hash-extra-blake.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Mkilaghbian/Desktop/turtlecoin/builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object src/CMakeFiles/Crypto.dir/crypto/hash-extra-blake.c.o"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Crypto.dir/crypto/hash-extra-blake.c.o   -c /Users/Mkilaghbian/Desktop/turtlecoin/src/crypto/hash-extra-blake.c

src/CMakeFiles/Crypto.dir/crypto/hash-extra-blake.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Crypto.dir/crypto/hash-extra-blake.c.i"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Mkilaghbian/Desktop/turtlecoin/src/crypto/hash-extra-blake.c > CMakeFiles/Crypto.dir/crypto/hash-extra-blake.c.i

src/CMakeFiles/Crypto.dir/crypto/hash-extra-blake.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Crypto.dir/crypto/hash-extra-blake.c.s"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Mkilaghbian/Desktop/turtlecoin/src/crypto/hash-extra-blake.c -o CMakeFiles/Crypto.dir/crypto/hash-extra-blake.c.s

src/CMakeFiles/Crypto.dir/crypto/hash-extra-groestl.c.o: src/CMakeFiles/Crypto.dir/flags.make
src/CMakeFiles/Crypto.dir/crypto/hash-extra-groestl.c.o: ../src/crypto/hash-extra-groestl.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Mkilaghbian/Desktop/turtlecoin/builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object src/CMakeFiles/Crypto.dir/crypto/hash-extra-groestl.c.o"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Crypto.dir/crypto/hash-extra-groestl.c.o   -c /Users/Mkilaghbian/Desktop/turtlecoin/src/crypto/hash-extra-groestl.c

src/CMakeFiles/Crypto.dir/crypto/hash-extra-groestl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Crypto.dir/crypto/hash-extra-groestl.c.i"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Mkilaghbian/Desktop/turtlecoin/src/crypto/hash-extra-groestl.c > CMakeFiles/Crypto.dir/crypto/hash-extra-groestl.c.i

src/CMakeFiles/Crypto.dir/crypto/hash-extra-groestl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Crypto.dir/crypto/hash-extra-groestl.c.s"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Mkilaghbian/Desktop/turtlecoin/src/crypto/hash-extra-groestl.c -o CMakeFiles/Crypto.dir/crypto/hash-extra-groestl.c.s

src/CMakeFiles/Crypto.dir/crypto/hash-extra-jh.c.o: src/CMakeFiles/Crypto.dir/flags.make
src/CMakeFiles/Crypto.dir/crypto/hash-extra-jh.c.o: ../src/crypto/hash-extra-jh.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Mkilaghbian/Desktop/turtlecoin/builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object src/CMakeFiles/Crypto.dir/crypto/hash-extra-jh.c.o"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Crypto.dir/crypto/hash-extra-jh.c.o   -c /Users/Mkilaghbian/Desktop/turtlecoin/src/crypto/hash-extra-jh.c

src/CMakeFiles/Crypto.dir/crypto/hash-extra-jh.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Crypto.dir/crypto/hash-extra-jh.c.i"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Mkilaghbian/Desktop/turtlecoin/src/crypto/hash-extra-jh.c > CMakeFiles/Crypto.dir/crypto/hash-extra-jh.c.i

src/CMakeFiles/Crypto.dir/crypto/hash-extra-jh.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Crypto.dir/crypto/hash-extra-jh.c.s"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Mkilaghbian/Desktop/turtlecoin/src/crypto/hash-extra-jh.c -o CMakeFiles/Crypto.dir/crypto/hash-extra-jh.c.s

src/CMakeFiles/Crypto.dir/crypto/hash-extra-skein.c.o: src/CMakeFiles/Crypto.dir/flags.make
src/CMakeFiles/Crypto.dir/crypto/hash-extra-skein.c.o: ../src/crypto/hash-extra-skein.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Mkilaghbian/Desktop/turtlecoin/builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object src/CMakeFiles/Crypto.dir/crypto/hash-extra-skein.c.o"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Crypto.dir/crypto/hash-extra-skein.c.o   -c /Users/Mkilaghbian/Desktop/turtlecoin/src/crypto/hash-extra-skein.c

src/CMakeFiles/Crypto.dir/crypto/hash-extra-skein.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Crypto.dir/crypto/hash-extra-skein.c.i"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Mkilaghbian/Desktop/turtlecoin/src/crypto/hash-extra-skein.c > CMakeFiles/Crypto.dir/crypto/hash-extra-skein.c.i

src/CMakeFiles/Crypto.dir/crypto/hash-extra-skein.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Crypto.dir/crypto/hash-extra-skein.c.s"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Mkilaghbian/Desktop/turtlecoin/src/crypto/hash-extra-skein.c -o CMakeFiles/Crypto.dir/crypto/hash-extra-skein.c.s

src/CMakeFiles/Crypto.dir/crypto/hash.c.o: src/CMakeFiles/Crypto.dir/flags.make
src/CMakeFiles/Crypto.dir/crypto/hash.c.o: ../src/crypto/hash.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Mkilaghbian/Desktop/turtlecoin/builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object src/CMakeFiles/Crypto.dir/crypto/hash.c.o"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Crypto.dir/crypto/hash.c.o   -c /Users/Mkilaghbian/Desktop/turtlecoin/src/crypto/hash.c

src/CMakeFiles/Crypto.dir/crypto/hash.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Crypto.dir/crypto/hash.c.i"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Mkilaghbian/Desktop/turtlecoin/src/crypto/hash.c > CMakeFiles/Crypto.dir/crypto/hash.c.i

src/CMakeFiles/Crypto.dir/crypto/hash.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Crypto.dir/crypto/hash.c.s"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Mkilaghbian/Desktop/turtlecoin/src/crypto/hash.c -o CMakeFiles/Crypto.dir/crypto/hash.c.s

src/CMakeFiles/Crypto.dir/crypto/jh.c.o: src/CMakeFiles/Crypto.dir/flags.make
src/CMakeFiles/Crypto.dir/crypto/jh.c.o: ../src/crypto/jh.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Mkilaghbian/Desktop/turtlecoin/builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object src/CMakeFiles/Crypto.dir/crypto/jh.c.o"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Crypto.dir/crypto/jh.c.o   -c /Users/Mkilaghbian/Desktop/turtlecoin/src/crypto/jh.c

src/CMakeFiles/Crypto.dir/crypto/jh.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Crypto.dir/crypto/jh.c.i"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Mkilaghbian/Desktop/turtlecoin/src/crypto/jh.c > CMakeFiles/Crypto.dir/crypto/jh.c.i

src/CMakeFiles/Crypto.dir/crypto/jh.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Crypto.dir/crypto/jh.c.s"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Mkilaghbian/Desktop/turtlecoin/src/crypto/jh.c -o CMakeFiles/Crypto.dir/crypto/jh.c.s

src/CMakeFiles/Crypto.dir/crypto/keccak.c.o: src/CMakeFiles/Crypto.dir/flags.make
src/CMakeFiles/Crypto.dir/crypto/keccak.c.o: ../src/crypto/keccak.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Mkilaghbian/Desktop/turtlecoin/builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building C object src/CMakeFiles/Crypto.dir/crypto/keccak.c.o"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Crypto.dir/crypto/keccak.c.o   -c /Users/Mkilaghbian/Desktop/turtlecoin/src/crypto/keccak.c

src/CMakeFiles/Crypto.dir/crypto/keccak.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Crypto.dir/crypto/keccak.c.i"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Mkilaghbian/Desktop/turtlecoin/src/crypto/keccak.c > CMakeFiles/Crypto.dir/crypto/keccak.c.i

src/CMakeFiles/Crypto.dir/crypto/keccak.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Crypto.dir/crypto/keccak.c.s"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Mkilaghbian/Desktop/turtlecoin/src/crypto/keccak.c -o CMakeFiles/Crypto.dir/crypto/keccak.c.s

src/CMakeFiles/Crypto.dir/crypto/oaes_lib.c.o: src/CMakeFiles/Crypto.dir/flags.make
src/CMakeFiles/Crypto.dir/crypto/oaes_lib.c.o: ../src/crypto/oaes_lib.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Mkilaghbian/Desktop/turtlecoin/builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building C object src/CMakeFiles/Crypto.dir/crypto/oaes_lib.c.o"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Crypto.dir/crypto/oaes_lib.c.o   -c /Users/Mkilaghbian/Desktop/turtlecoin/src/crypto/oaes_lib.c

src/CMakeFiles/Crypto.dir/crypto/oaes_lib.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Crypto.dir/crypto/oaes_lib.c.i"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Mkilaghbian/Desktop/turtlecoin/src/crypto/oaes_lib.c > CMakeFiles/Crypto.dir/crypto/oaes_lib.c.i

src/CMakeFiles/Crypto.dir/crypto/oaes_lib.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Crypto.dir/crypto/oaes_lib.c.s"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Mkilaghbian/Desktop/turtlecoin/src/crypto/oaes_lib.c -o CMakeFiles/Crypto.dir/crypto/oaes_lib.c.s

src/CMakeFiles/Crypto.dir/crypto/random.c.o: src/CMakeFiles/Crypto.dir/flags.make
src/CMakeFiles/Crypto.dir/crypto/random.c.o: ../src/crypto/random.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Mkilaghbian/Desktop/turtlecoin/builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building C object src/CMakeFiles/Crypto.dir/crypto/random.c.o"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Crypto.dir/crypto/random.c.o   -c /Users/Mkilaghbian/Desktop/turtlecoin/src/crypto/random.c

src/CMakeFiles/Crypto.dir/crypto/random.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Crypto.dir/crypto/random.c.i"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Mkilaghbian/Desktop/turtlecoin/src/crypto/random.c > CMakeFiles/Crypto.dir/crypto/random.c.i

src/CMakeFiles/Crypto.dir/crypto/random.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Crypto.dir/crypto/random.c.s"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Mkilaghbian/Desktop/turtlecoin/src/crypto/random.c -o CMakeFiles/Crypto.dir/crypto/random.c.s

src/CMakeFiles/Crypto.dir/crypto/skein.c.o: src/CMakeFiles/Crypto.dir/flags.make
src/CMakeFiles/Crypto.dir/crypto/skein.c.o: ../src/crypto/skein.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Mkilaghbian/Desktop/turtlecoin/builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building C object src/CMakeFiles/Crypto.dir/crypto/skein.c.o"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Crypto.dir/crypto/skein.c.o   -c /Users/Mkilaghbian/Desktop/turtlecoin/src/crypto/skein.c

src/CMakeFiles/Crypto.dir/crypto/skein.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Crypto.dir/crypto/skein.c.i"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Mkilaghbian/Desktop/turtlecoin/src/crypto/skein.c > CMakeFiles/Crypto.dir/crypto/skein.c.i

src/CMakeFiles/Crypto.dir/crypto/skein.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Crypto.dir/crypto/skein.c.s"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Mkilaghbian/Desktop/turtlecoin/src/crypto/skein.c -o CMakeFiles/Crypto.dir/crypto/skein.c.s

src/CMakeFiles/Crypto.dir/crypto/slow-hash.c.o: src/CMakeFiles/Crypto.dir/flags.make
src/CMakeFiles/Crypto.dir/crypto/slow-hash.c.o: ../src/crypto/slow-hash.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Mkilaghbian/Desktop/turtlecoin/builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Building C object src/CMakeFiles/Crypto.dir/crypto/slow-hash.c.o"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Crypto.dir/crypto/slow-hash.c.o   -c /Users/Mkilaghbian/Desktop/turtlecoin/src/crypto/slow-hash.c

src/CMakeFiles/Crypto.dir/crypto/slow-hash.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Crypto.dir/crypto/slow-hash.c.i"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Mkilaghbian/Desktop/turtlecoin/src/crypto/slow-hash.c > CMakeFiles/Crypto.dir/crypto/slow-hash.c.i

src/CMakeFiles/Crypto.dir/crypto/slow-hash.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Crypto.dir/crypto/slow-hash.c.s"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Mkilaghbian/Desktop/turtlecoin/src/crypto/slow-hash.c -o CMakeFiles/Crypto.dir/crypto/slow-hash.c.s

src/CMakeFiles/Crypto.dir/crypto/tree-hash.c.o: src/CMakeFiles/Crypto.dir/flags.make
src/CMakeFiles/Crypto.dir/crypto/tree-hash.c.o: ../src/crypto/tree-hash.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Mkilaghbian/Desktop/turtlecoin/builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_19) "Building C object src/CMakeFiles/Crypto.dir/crypto/tree-hash.c.o"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Crypto.dir/crypto/tree-hash.c.o   -c /Users/Mkilaghbian/Desktop/turtlecoin/src/crypto/tree-hash.c

src/CMakeFiles/Crypto.dir/crypto/tree-hash.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Crypto.dir/crypto/tree-hash.c.i"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Mkilaghbian/Desktop/turtlecoin/src/crypto/tree-hash.c > CMakeFiles/Crypto.dir/crypto/tree-hash.c.i

src/CMakeFiles/Crypto.dir/crypto/tree-hash.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Crypto.dir/crypto/tree-hash.c.s"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Mkilaghbian/Desktop/turtlecoin/src/crypto/tree-hash.c -o CMakeFiles/Crypto.dir/crypto/tree-hash.c.s

# Object files for target Crypto
Crypto_OBJECTS = \
"CMakeFiles/Crypto.dir/crypto/aesb.c.o" \
"CMakeFiles/Crypto.dir/crypto/blake256.c.o" \
"CMakeFiles/Crypto.dir/crypto/chacha8.c.o" \
"CMakeFiles/Crypto.dir/crypto/crypto-ops-data.c.o" \
"CMakeFiles/Crypto.dir/crypto/crypto-ops.c.o" \
"CMakeFiles/Crypto.dir/crypto/crypto.cpp.o" \
"CMakeFiles/Crypto.dir/crypto/groestl.c.o" \
"CMakeFiles/Crypto.dir/crypto/hash-extra-blake.c.o" \
"CMakeFiles/Crypto.dir/crypto/hash-extra-groestl.c.o" \
"CMakeFiles/Crypto.dir/crypto/hash-extra-jh.c.o" \
"CMakeFiles/Crypto.dir/crypto/hash-extra-skein.c.o" \
"CMakeFiles/Crypto.dir/crypto/hash.c.o" \
"CMakeFiles/Crypto.dir/crypto/jh.c.o" \
"CMakeFiles/Crypto.dir/crypto/keccak.c.o" \
"CMakeFiles/Crypto.dir/crypto/oaes_lib.c.o" \
"CMakeFiles/Crypto.dir/crypto/random.c.o" \
"CMakeFiles/Crypto.dir/crypto/skein.c.o" \
"CMakeFiles/Crypto.dir/crypto/slow-hash.c.o" \
"CMakeFiles/Crypto.dir/crypto/tree-hash.c.o"

# External object files for target Crypto
Crypto_EXTERNAL_OBJECTS =

src/libCrypto.a: src/CMakeFiles/Crypto.dir/crypto/aesb.c.o
src/libCrypto.a: src/CMakeFiles/Crypto.dir/crypto/blake256.c.o
src/libCrypto.a: src/CMakeFiles/Crypto.dir/crypto/chacha8.c.o
src/libCrypto.a: src/CMakeFiles/Crypto.dir/crypto/crypto-ops-data.c.o
src/libCrypto.a: src/CMakeFiles/Crypto.dir/crypto/crypto-ops.c.o
src/libCrypto.a: src/CMakeFiles/Crypto.dir/crypto/crypto.cpp.o
src/libCrypto.a: src/CMakeFiles/Crypto.dir/crypto/groestl.c.o
src/libCrypto.a: src/CMakeFiles/Crypto.dir/crypto/hash-extra-blake.c.o
src/libCrypto.a: src/CMakeFiles/Crypto.dir/crypto/hash-extra-groestl.c.o
src/libCrypto.a: src/CMakeFiles/Crypto.dir/crypto/hash-extra-jh.c.o
src/libCrypto.a: src/CMakeFiles/Crypto.dir/crypto/hash-extra-skein.c.o
src/libCrypto.a: src/CMakeFiles/Crypto.dir/crypto/hash.c.o
src/libCrypto.a: src/CMakeFiles/Crypto.dir/crypto/jh.c.o
src/libCrypto.a: src/CMakeFiles/Crypto.dir/crypto/keccak.c.o
src/libCrypto.a: src/CMakeFiles/Crypto.dir/crypto/oaes_lib.c.o
src/libCrypto.a: src/CMakeFiles/Crypto.dir/crypto/random.c.o
src/libCrypto.a: src/CMakeFiles/Crypto.dir/crypto/skein.c.o
src/libCrypto.a: src/CMakeFiles/Crypto.dir/crypto/slow-hash.c.o
src/libCrypto.a: src/CMakeFiles/Crypto.dir/crypto/tree-hash.c.o
src/libCrypto.a: src/CMakeFiles/Crypto.dir/build.make
src/libCrypto.a: src/CMakeFiles/Crypto.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/Mkilaghbian/Desktop/turtlecoin/builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_20) "Linking CXX static library libCrypto.a"
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && $(CMAKE_COMMAND) -P CMakeFiles/Crypto.dir/cmake_clean_target.cmake
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Crypto.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/Crypto.dir/build: src/libCrypto.a

.PHONY : src/CMakeFiles/Crypto.dir/build

src/CMakeFiles/Crypto.dir/clean:
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && $(CMAKE_COMMAND) -P CMakeFiles/Crypto.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/Crypto.dir/clean

src/CMakeFiles/Crypto.dir/depend:
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/Mkilaghbian/Desktop/turtlecoin /Users/Mkilaghbian/Desktop/turtlecoin/src /Users/Mkilaghbian/Desktop/turtlecoin/builds /Users/Mkilaghbian/Desktop/turtlecoin/builds/src /Users/Mkilaghbian/Desktop/turtlecoin/builds/src/CMakeFiles/Crypto.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/Crypto.dir/depend

