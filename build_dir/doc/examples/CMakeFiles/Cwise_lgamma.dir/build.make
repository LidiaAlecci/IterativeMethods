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
include doc/examples/CMakeFiles/Cwise_lgamma.dir/depend.make

# Include the progress variables for this target.
include doc/examples/CMakeFiles/Cwise_lgamma.dir/progress.make

# Include the compile flags for this target's objects.
include doc/examples/CMakeFiles/Cwise_lgamma.dir/flags.make

doc/examples/CMakeFiles/Cwise_lgamma.dir/Cwise_lgamma.cpp.o: doc/examples/CMakeFiles/Cwise_lgamma.dir/flags.make
doc/examples/CMakeFiles/Cwise_lgamma.dir/Cwise_lgamma.cpp.o: source_dir/doc/examples/Cwise_lgamma.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object doc/examples/CMakeFiles/Cwise_lgamma.dir/Cwise_lgamma.cpp.o"
	cd /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/doc/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Cwise_lgamma.dir/Cwise_lgamma.cpp.o -c /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/doc/examples/Cwise_lgamma.cpp

doc/examples/CMakeFiles/Cwise_lgamma.dir/Cwise_lgamma.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Cwise_lgamma.dir/Cwise_lgamma.cpp.i"
	cd /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/doc/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/doc/examples/Cwise_lgamma.cpp > CMakeFiles/Cwise_lgamma.dir/Cwise_lgamma.cpp.i

doc/examples/CMakeFiles/Cwise_lgamma.dir/Cwise_lgamma.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Cwise_lgamma.dir/Cwise_lgamma.cpp.s"
	cd /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/doc/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/doc/examples/Cwise_lgamma.cpp -o CMakeFiles/Cwise_lgamma.dir/Cwise_lgamma.cpp.s

# Object files for target Cwise_lgamma
Cwise_lgamma_OBJECTS = \
"CMakeFiles/Cwise_lgamma.dir/Cwise_lgamma.cpp.o"

# External object files for target Cwise_lgamma
Cwise_lgamma_EXTERNAL_OBJECTS =

doc/examples/Cwise_lgamma: doc/examples/CMakeFiles/Cwise_lgamma.dir/Cwise_lgamma.cpp.o
doc/examples/Cwise_lgamma: doc/examples/CMakeFiles/Cwise_lgamma.dir/build.make
doc/examples/Cwise_lgamma: doc/examples/CMakeFiles/Cwise_lgamma.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Cwise_lgamma"
	cd /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/doc/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Cwise_lgamma.dir/link.txt --verbose=$(VERBOSE)
	cd /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/doc/examples && ./Cwise_lgamma >/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/doc/examples/Cwise_lgamma.out

# Rule to build all files generated by this target.
doc/examples/CMakeFiles/Cwise_lgamma.dir/build: doc/examples/Cwise_lgamma

.PHONY : doc/examples/CMakeFiles/Cwise_lgamma.dir/build

doc/examples/CMakeFiles/Cwise_lgamma.dir/clean:
	cd /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/doc/examples && $(CMAKE_COMMAND) -P CMakeFiles/Cwise_lgamma.dir/cmake_clean.cmake
.PHONY : doc/examples/CMakeFiles/Cwise_lgamma.dir/clean

doc/examples/CMakeFiles/Cwise_lgamma.dir/depend:
	cd /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/doc/examples /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/doc/examples /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/doc/examples/CMakeFiles/Cwise_lgamma.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : doc/examples/CMakeFiles/Cwise_lgamma.dir/depend

