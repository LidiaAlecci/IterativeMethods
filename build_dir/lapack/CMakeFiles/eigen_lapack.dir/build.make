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
include lapack/CMakeFiles/eigen_lapack.dir/depend.make

# Include the progress variables for this target.
include lapack/CMakeFiles/eigen_lapack.dir/progress.make

# Include the compile flags for this target's objects.
include lapack/CMakeFiles/eigen_lapack.dir/flags.make

lapack/CMakeFiles/eigen_lapack.dir/single.cpp.o: lapack/CMakeFiles/eigen_lapack.dir/flags.make
lapack/CMakeFiles/eigen_lapack.dir/single.cpp.o: source_dir/lapack/single.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lapack/CMakeFiles/eigen_lapack.dir/single.cpp.o"
	cd /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/lapack && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/eigen_lapack.dir/single.cpp.o -c /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/lapack/single.cpp

lapack/CMakeFiles/eigen_lapack.dir/single.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/eigen_lapack.dir/single.cpp.i"
	cd /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/lapack && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/lapack/single.cpp > CMakeFiles/eigen_lapack.dir/single.cpp.i

lapack/CMakeFiles/eigen_lapack.dir/single.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/eigen_lapack.dir/single.cpp.s"
	cd /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/lapack && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/lapack/single.cpp -o CMakeFiles/eigen_lapack.dir/single.cpp.s

lapack/CMakeFiles/eigen_lapack.dir/double.cpp.o: lapack/CMakeFiles/eigen_lapack.dir/flags.make
lapack/CMakeFiles/eigen_lapack.dir/double.cpp.o: source_dir/lapack/double.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object lapack/CMakeFiles/eigen_lapack.dir/double.cpp.o"
	cd /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/lapack && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/eigen_lapack.dir/double.cpp.o -c /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/lapack/double.cpp

lapack/CMakeFiles/eigen_lapack.dir/double.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/eigen_lapack.dir/double.cpp.i"
	cd /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/lapack && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/lapack/double.cpp > CMakeFiles/eigen_lapack.dir/double.cpp.i

lapack/CMakeFiles/eigen_lapack.dir/double.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/eigen_lapack.dir/double.cpp.s"
	cd /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/lapack && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/lapack/double.cpp -o CMakeFiles/eigen_lapack.dir/double.cpp.s

lapack/CMakeFiles/eigen_lapack.dir/complex_single.cpp.o: lapack/CMakeFiles/eigen_lapack.dir/flags.make
lapack/CMakeFiles/eigen_lapack.dir/complex_single.cpp.o: source_dir/lapack/complex_single.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object lapack/CMakeFiles/eigen_lapack.dir/complex_single.cpp.o"
	cd /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/lapack && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/eigen_lapack.dir/complex_single.cpp.o -c /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/lapack/complex_single.cpp

lapack/CMakeFiles/eigen_lapack.dir/complex_single.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/eigen_lapack.dir/complex_single.cpp.i"
	cd /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/lapack && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/lapack/complex_single.cpp > CMakeFiles/eigen_lapack.dir/complex_single.cpp.i

lapack/CMakeFiles/eigen_lapack.dir/complex_single.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/eigen_lapack.dir/complex_single.cpp.s"
	cd /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/lapack && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/lapack/complex_single.cpp -o CMakeFiles/eigen_lapack.dir/complex_single.cpp.s

lapack/CMakeFiles/eigen_lapack.dir/complex_double.cpp.o: lapack/CMakeFiles/eigen_lapack.dir/flags.make
lapack/CMakeFiles/eigen_lapack.dir/complex_double.cpp.o: source_dir/lapack/complex_double.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object lapack/CMakeFiles/eigen_lapack.dir/complex_double.cpp.o"
	cd /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/lapack && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/eigen_lapack.dir/complex_double.cpp.o -c /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/lapack/complex_double.cpp

lapack/CMakeFiles/eigen_lapack.dir/complex_double.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/eigen_lapack.dir/complex_double.cpp.i"
	cd /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/lapack && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/lapack/complex_double.cpp > CMakeFiles/eigen_lapack.dir/complex_double.cpp.i

lapack/CMakeFiles/eigen_lapack.dir/complex_double.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/eigen_lapack.dir/complex_double.cpp.s"
	cd /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/lapack && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/lapack/complex_double.cpp -o CMakeFiles/eigen_lapack.dir/complex_double.cpp.s

lapack/CMakeFiles/eigen_lapack.dir/__/blas/xerbla.cpp.o: lapack/CMakeFiles/eigen_lapack.dir/flags.make
lapack/CMakeFiles/eigen_lapack.dir/__/blas/xerbla.cpp.o: source_dir/blas/xerbla.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object lapack/CMakeFiles/eigen_lapack.dir/__/blas/xerbla.cpp.o"
	cd /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/lapack && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/eigen_lapack.dir/__/blas/xerbla.cpp.o -c /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/blas/xerbla.cpp

lapack/CMakeFiles/eigen_lapack.dir/__/blas/xerbla.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/eigen_lapack.dir/__/blas/xerbla.cpp.i"
	cd /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/lapack && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/blas/xerbla.cpp > CMakeFiles/eigen_lapack.dir/__/blas/xerbla.cpp.i

lapack/CMakeFiles/eigen_lapack.dir/__/blas/xerbla.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/eigen_lapack.dir/__/blas/xerbla.cpp.s"
	cd /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/lapack && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/blas/xerbla.cpp -o CMakeFiles/eigen_lapack.dir/__/blas/xerbla.cpp.s

# Object files for target eigen_lapack
eigen_lapack_OBJECTS = \
"CMakeFiles/eigen_lapack.dir/single.cpp.o" \
"CMakeFiles/eigen_lapack.dir/double.cpp.o" \
"CMakeFiles/eigen_lapack.dir/complex_single.cpp.o" \
"CMakeFiles/eigen_lapack.dir/complex_double.cpp.o" \
"CMakeFiles/eigen_lapack.dir/__/blas/xerbla.cpp.o"

# External object files for target eigen_lapack
eigen_lapack_EXTERNAL_OBJECTS =

lapack/libeigen_lapack.so: lapack/CMakeFiles/eigen_lapack.dir/single.cpp.o
lapack/libeigen_lapack.so: lapack/CMakeFiles/eigen_lapack.dir/double.cpp.o
lapack/libeigen_lapack.so: lapack/CMakeFiles/eigen_lapack.dir/complex_single.cpp.o
lapack/libeigen_lapack.so: lapack/CMakeFiles/eigen_lapack.dir/complex_double.cpp.o
lapack/libeigen_lapack.so: lapack/CMakeFiles/eigen_lapack.dir/__/blas/xerbla.cpp.o
lapack/libeigen_lapack.so: lapack/CMakeFiles/eigen_lapack.dir/build.make
lapack/libeigen_lapack.so: blas/libeigen_blas.so
lapack/libeigen_lapack.so: lapack/CMakeFiles/eigen_lapack.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX shared library libeigen_lapack.so"
	cd /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/lapack && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/eigen_lapack.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lapack/CMakeFiles/eigen_lapack.dir/build: lapack/libeigen_lapack.so

.PHONY : lapack/CMakeFiles/eigen_lapack.dir/build

lapack/CMakeFiles/eigen_lapack.dir/clean:
	cd /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/lapack && $(CMAKE_COMMAND) -P CMakeFiles/eigen_lapack.dir/cmake_clean.cmake
.PHONY : lapack/CMakeFiles/eigen_lapack.dir/clean

lapack/CMakeFiles/eigen_lapack.dir/depend:
	cd /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/lapack /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/lapack /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/lapack/CMakeFiles/eigen_lapack.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lapack/CMakeFiles/eigen_lapack.dir/depend

