# Install script for directory: /mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/Eigen

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/Eigen" TYPE FILE FILES
    "/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/Eigen/Cholesky"
    "/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/Eigen/CholmodSupport"
    "/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/Eigen/Core"
    "/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/Eigen/Dense"
    "/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/Eigen/Eigen"
    "/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/Eigen/Eigenvalues"
    "/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/Eigen/Geometry"
    "/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/Eigen/Householder"
    "/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/Eigen/IterativeLinearSolvers"
    "/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/Eigen/Jacobi"
    "/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/Eigen/LU"
    "/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/Eigen/MetisSupport"
    "/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/Eigen/OrderingMethods"
    "/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/Eigen/PaStiXSupport"
    "/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/Eigen/PardisoSupport"
    "/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/Eigen/QR"
    "/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/Eigen/QtAlignedMalloc"
    "/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/Eigen/SPQRSupport"
    "/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/Eigen/SVD"
    "/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/Eigen/Sparse"
    "/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/Eigen/SparseCholesky"
    "/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/Eigen/SparseCore"
    "/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/Eigen/SparseLU"
    "/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/Eigen/SparseQR"
    "/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/Eigen/StdDeque"
    "/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/Eigen/StdList"
    "/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/Eigen/StdVector"
    "/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/Eigen/SuperLUSupport"
    "/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/Eigen/UmfPackSupport"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/Eigen" TYPE DIRECTORY FILES "/mnt/c/Users/Indil/Desktop/RStudioGit/IterativeMethods/build_dir/source_dir/Eigen/src" FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()

