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
include unsupported/test/CMakeFiles/NumericalDiff.dir/depend.make

# Include the progress variables for this target.
include unsupported/test/CMakeFiles/NumericalDiff.dir/progress.make

# Include the compile flags for this target's objects.
include unsupported/test/CMakeFiles/NumericalDiff.dir/flags.make

unsupported/test/CMakeFiles/NumericalDiff.dir/NumericalDiff.cpp.o: unsupported/test/CMakeFiles/NumericalDiff.dir/flags.make
unsupported/test/CMakeFiles/NumericalDiff.dir/NumericalDiff.cpp.o: source_dir/unsupported/test/NumericalDiff.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object unsupported/test/CMakeFiles/NumericalDiff.dir/NumericalDiff.cpp.o"
	cd /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/unsupported/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/NumericalDiff.dir/NumericalDiff.cpp.o -c /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/unsupported/test/NumericalDiff.cpp

unsupported/test/CMakeFiles/NumericalDiff.dir/NumericalDiff.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/NumericalDiff.dir/NumericalDiff.cpp.i"
	cd /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/unsupported/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/unsupported/test/NumericalDiff.cpp > CMakeFiles/NumericalDiff.dir/NumericalDiff.cpp.i

unsupported/test/CMakeFiles/NumericalDiff.dir/NumericalDiff.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/NumericalDiff.dir/NumericalDiff.cpp.s"
	cd /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/unsupported/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/unsupported/test/NumericalDiff.cpp -o CMakeFiles/NumericalDiff.dir/NumericalDiff.cpp.s

# Object files for target NumericalDiff
NumericalDiff_OBJECTS = \
"CMakeFiles/NumericalDiff.dir/NumericalDiff.cpp.o"

# External object files for target NumericalDiff
NumericalDiff_EXTERNAL_OBJECTS =

unsupported/test/NumericalDiff: unsupported/test/CMakeFiles/NumericalDiff.dir/NumericalDiff.cpp.o
unsupported/test/NumericalDiff: unsupported/test/CMakeFiles/NumericalDiff.dir/build.make
unsupported/test/NumericalDiff: unsupported/test/CMakeFiles/NumericalDiff.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable NumericalDiff"
	cd /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/unsupported/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/NumericalDiff.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
unsupported/test/CMakeFiles/NumericalDiff.dir/build: unsupported/test/NumericalDiff

.PHONY : unsupported/test/CMakeFiles/NumericalDiff.dir/build

unsupported/test/CMakeFiles/NumericalDiff.dir/clean:
	cd /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/unsupported/test && $(CMAKE_COMMAND) -P CMakeFiles/NumericalDiff.dir/cmake_clean.cmake
.PHONY : unsupported/test/CMakeFiles/NumericalDiff.dir/clean

unsupported/test/CMakeFiles/NumericalDiff.dir/depend:
	cd /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/unsupported/test /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/unsupported/test /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/unsupported/test/CMakeFiles/NumericalDiff.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : unsupported/test/CMakeFiles/NumericalDiff.dir/depend

