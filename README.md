# IterativeMethods

This is a student project required for the course of scientific calculation methods at the first year of the master degree in Computer Science at University of Milano-Bicocca.

## Request

The request was to develop a little library to solve symmetric and positive definite matrices with this methods: Jacobi, Gauss-Seidel, Gradient, Conjugate Gradient; with the scaled residuals criterion.

## How to compile and execute
This project required Eigen. In the follow directive: "/build_dir/" is the directory of Eigen.

Compile:
```bash
sudo g++ -I /build_dir/ ConjugateGradient.cpp GaussSeidel.cpp Gradient.cpp
IterationData.cpp IterativeMethods.cpp Jacobi.cpp ResidualStopCrit.cpp
StopCrit.cpp ResultData.cpp IterationDataConjugate.cpp Main.cpp -o main.o
```
Execute:
```bash
./main.o
```

It was developed in may 2020.
