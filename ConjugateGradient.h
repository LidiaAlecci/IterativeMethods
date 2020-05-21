#ifndef CONJUGATEGRADIENT_H
#define CONJUGATEGRADIENT_H

#include "IterativeMethods.h"

// ConjugateGradient inherits from IterativeMethods with public inheritance
class ConjugateGradient : public IterativeMethods {
public:
	ConjugateGradient(const Eigen::SparseMatrix<double>& _A, const Eigen::VectorXd& _b, StopCrit* _stopCrit);
	void set(const Eigen::SparseMatrix<double>& A, const Eigen::VectorXd& b, StopCrit* stopCrit) override;
	void next(IterationData* dataIt) const override;
};
#endif