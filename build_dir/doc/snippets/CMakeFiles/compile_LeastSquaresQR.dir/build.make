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
include doc/snippets/CMakeFiles/compile_LeastSquaresQR.dir/depend.make

# Include the progress variables for this target.
include doc/snippets/CMakeFiles/compile_LeastSquaresQR.dir/progress.make

# Include the compile flags for this target's objects.
include doc/snippets/CMakeFiles/compile_LeastSquaresQR.dir/flags.make

doc/snippets/CMakeFiles/compile_LeastSquaresQR.dir/compile_LeastSquaresQR.cpp.o: doc/snippets/CMakeFiles/compile_LeastSquaresQR.dir/flags.make
doc/snippets/CMakeFiles/compile_LeastSquaresQR.dir/compile_LeastSquaresQR.cpp.o: doc/snippets/compile_LeastSquaresQR.cpp
doc/snippets/CMakeFiles/compile_LeastSquaresQR.dir/compile_LeastSquaresQR.cpp.o: source_dir/doc/snippets/LeastSquaresQR.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object doc/snippets/CMakeFiles/compile_LeastSquaresQR.dir/compile_LeastSquaresQR.cpp.o"
	cd /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/doc/snippets && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/compile_LeastSquaresQR.dir/compile_LeastSquaresQR.cpp.o -c /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/doc/snippets/compile_LeastSquaresQR.cpp

doc/snippets/CMakeFiles/compile_LeastSquaresQR.dir/compile_LeastSquaresQR.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/compile_LeastSquaresQR.dir/compile_LeastSquaresQR.cpp.i"
	cd /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/doc/snippets && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/doc/snippets/compile_LeastSquaresQR.cpp > CMakeFiles/compile_LeastSquaresQR.dir/compile_LeastSquaresQR.cpp.i

doc/snippets/CMakeFiles/compile_LeastSquaresQR.dir/compile_LeastSquaresQR.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/compile_LeastSquaresQR.dir/compile_LeastSquaresQR.cpp.s"
	cd /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/doc/snippets && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/doc/snippets/compile_LeastSquaresQR.cpp -o CMakeFiles/compile_LeastSquaresQR.dir/compile_LeastSquaresQR.cpp.s

# Object files for target compile_LeastSquaresQR
compile_LeastSquaresQR_OBJECTS = \
"CMakeFiles/compile_LeastSquaresQR.dir/compile_LeastSquaresQR.cpp.o"

# External object files for target compile_LeastSquaresQR
compile_LeastSquaresQR_EXTERNAL_OBJECTS =

doc/snippets/compile_LeastSquaresQR: doc/snippets/CMakeFiles/compile_LeastSquaresQR.dir/compile_LeastSquaresQR.cpp.o
doc/snippets/compile_LeastSquaresQR: doc/snippets/CMakeFiles/compile_LeastSquaresQR.dir/build.make
doc/snippets/compile_LeastSquaresQR: doc/snippets/CMakeFiles/compile_LeastSquaresQR.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable compile_LeastSquaresQR"
	cd /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/doc/snippets && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/compile_LeastSquaresQR.dir/link.txt --verbose=$(VERBOSE)
	cd /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/doc/snippets && ./compile_LeastSquaresQR >/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/doc/snippets/LeastSquaresQR.out

# Rule to build all files generated by this target.
doc/snippets/CMakeFiles/compile_LeastSquaresQR.dir/build: doc/snippets/compile_LeastSquaresQR

.PHONY : doc/snippets/CMakeFiles/compile_LeastSquaresQR.dir/build

doc/snippets/CMakeFiles/compile_LeastSquaresQR.dir/clean:
	cd /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/doc/snippets && $(CMAKE_COMMAND) -P CMakeFiles/compile_LeastSquaresQR.dir/cmake_clean.cmake
.PHONY : doc/snippets/CMakeFiles/compile_LeastSquaresQR.dir/clean

doc/snippets/CMakeFiles/compile_LeastSquaresQR.dir/depend:
	cd /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/doc/snippets /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/doc/snippets /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/doc/snippets/CMakeFiles/compile_LeastSquaresQR.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : doc/snippets/CMakeFiles/compile_LeastSquaresQR.dir/depend

