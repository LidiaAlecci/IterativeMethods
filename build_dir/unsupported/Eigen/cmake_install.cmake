# Install script for directory: /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/unsupported/Eigen

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/unsupported/Eigen" TYPE FILE FILES
    "/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/unsupported/Eigen/AdolcForward"
    "/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/unsupported/Eigen/AlignedVector3"
    "/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/unsupported/Eigen/ArpackSupport"
    "/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/unsupported/Eigen/AutoDiff"
    "/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/unsupported/Eigen/BVH"
    "/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/unsupported/Eigen/EulerAngles"
    "/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/unsupported/Eigen/FFT"
    "/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/unsupported/Eigen/IterativeSolvers"
    "/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/unsupported/Eigen/KroneckerProduct"
    "/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/unsupported/Eigen/LevenbergMarquardt"
    "/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/unsupported/Eigen/MatrixFunctions"
    "/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/unsupported/Eigen/MoreVectorization"
    "/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/unsupported/Eigen/MPRealSupport"
    "/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/unsupported/Eigen/NonLinearOptimization"
    "/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/unsupported/Eigen/NumericalDiff"
    "/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/unsupported/Eigen/OpenGLSupport"
    "/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/unsupported/Eigen/Polynomials"
    "/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/unsupported/Eigen/Skyline"
    "/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/unsupported/Eigen/SparseExtra"
    "/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/unsupported/Eigen/SpecialFunctions"
    "/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/unsupported/Eigen/Splines"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/unsupported/Eigen" TYPE DIRECTORY FILES "/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/unsupported/Eigen/src" FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/unsupported/Eigen/CXX11/cmake_install.cmake")

endif()

