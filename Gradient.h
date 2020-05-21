#ifndef GRADIENT_H
#define GRADIENT_H

#include "IterativeMethods.h"

// Gradient inherits from IterativeMethods with public inheritance
class Gradient : public IterativeMethods {
public:
	Gradient(const Eigen::SparseMatrix<double>& _A, const Eigen::VectorXd& _b, StopCrit* _stopCrit);
	void set(const Eigen::SparseMatrix<double>& A, const Eigen::VectorXd& b, StopCrit* stopCrit) override;
	void next(IterationData* dataIt) const override;
};
#endif