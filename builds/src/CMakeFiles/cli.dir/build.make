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

# Utility rule file for cli.

# Include the progress variables for this target.
include src/CMakeFiles/cli.dir/progress.make

src/CMakeFiles/cli: src/UBDI
src/CMakeFiles/cli: src/UBDI\ Wallet


cli: src/CMakeFiles/cli
cli: src/CMakeFiles/cli.dir/build.make

.PHONY : cli

# Rule to build all files generated by this target.
src/CMakeFiles/cli.dir/build: cli

.PHONY : src/CMakeFiles/cli.dir/build

src/CMakeFiles/cli.dir/clean:
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds/src && $(CMAKE_COMMAND) -P CMakeFiles/cli.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/cli.dir/clean

src/CMakeFiles/cli.dir/depend:
	cd /Users/Mkilaghbian/Desktop/turtlecoin/builds && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/Mkilaghbian/Desktop/turtlecoin /Users/Mkilaghbian/Desktop/turtlecoin/src /Users/Mkilaghbian/Desktop/turtlecoin/builds /Users/Mkilaghbian/Desktop/turtlecoin/builds/src /Users/Mkilaghbian/Desktop/turtlecoin/builds/src/CMakeFiles/cli.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/cli.dir/depend

