#ifndef ITERATIVEMETHODS_H
#define ITERATIVEMETHODS_H

#include <eigen3/Eigen/Sparse>
#include <iostream>

#include "StopCrit.h"
#include "IterationData.h"

class IterativeMethods {
protected:
    int dimA;
    Eigen::SparseMatrix<double> A;
    Eigen::VectorXd b;
    StopCrit* stopCrit;
public:
    IterativeMethods(const Eigen::SparseMatrix<double>& _A, const Eigen::VectorXd& _b, StopCrit* _stopCrit);
    void iterativeSolver(IterationData* dataIt) const;
    virtual void set(const Eigen::SparseMatrix<double>& A, const Eigen::VectorXd& b, StopCrit* stopCrit);
    virtual void next(IterationData* dataIt) const = 0;
    StopCrit* getStopCritPointer() const;
};
#endif