# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir

# Include any dependencies generated for this target.
include test/CMakeFiles/diagonalmatrices_2.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/diagonalmatrices_2.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/diagonalmatrices_2.dir/flags.make

test/CMakeFiles/diagonalmatrices_2.dir/diagonalmatrices.cpp.o: test/CMakeFiles/diagonalmatrices_2.dir/flags.make
test/CMakeFiles/diagonalmatrices_2.dir/diagonalmatrices.cpp.o: source_dir/test/diagonalmatrices.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/diagonalmatrices_2.dir/diagonalmatrices.cpp.o"
	cd /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/diagonalmatrices_2.dir/diagonalmatrices.cpp.o -c /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/test/diagonalmatrices.cpp

test/CMakeFiles/diagonalmatrices_2.dir/diagonalmatrices.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/diagonalmatrices_2.dir/diagonalmatrices.cpp.i"
	cd /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/test/diagonalmatrices.cpp > CMakeFiles/diagonalmatrices_2.dir/diagonalmatrices.cpp.i

test/CMakeFiles/diagonalmatrices_2.dir/diagonalmatrices.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/diagonalmatrices_2.dir/diagonalmatrices.cpp.s"
	cd /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/test/diagonalmatrices.cpp -o CMakeFiles/diagonalmatrices_2.dir/diagonalmatrices.cpp.s

# Object files for target diagonalmatrices_2
diagonalmatrices_2_OBJECTS = \
"CMakeFiles/diagonalmatrices_2.dir/diagonalmatrices.cpp.o"

# External object files for target diagonalmatrices_2
diagonalmatrices_2_EXTERNAL_OBJECTS =

test/diagonalmatrices_2: test/CMakeFiles/diagonalmatrices_2.dir/diagonalmatrices.cpp.o
test/diagonalmatrices_2: test/CMakeFiles/diagonalmatrices_2.dir/build.make
test/diagonalmatrices_2: test/CMakeFiles/diagonalmatrices_2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable diagonalmatrices_2"
	cd /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/diagonalmatrices_2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/diagonalmatrices_2.dir/build: test/diagonalmatrices_2

.PHONY : test/CMakeFiles/diagonalmatrices_2.dir/build

test/CMakeFiles/diagonalmatrices_2.dir/clean:
	cd /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/test && $(CMAKE_COMMAND) -P CMakeFiles/diagonalmatrices_2.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/diagonalmatrices_2.dir/clean

test/CMakeFiles/diagonalmatrices_2.dir/depend:
	cd /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/test /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/test /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/test/CMakeFiles/diagonalmatrices_2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/diagonalmatrices_2.dir/depend

