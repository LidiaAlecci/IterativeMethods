#ifndef JACOBI_H
#define JACOBI_H

#include "IterativeMethods.h"

// Jacobi inherits from IterativeMethods with public inheritance
class Jacobi : public IterativeMethods {
private:
	Eigen::VectorXd PInverse;
	void setPInverse();
public:
	Jacobi(const Eigen::SparseMatrix<double>& _A, const Eigen::VectorXd& _b, StopCrit* _stopCrit);
	void set(const Eigen::SparseMatrix<double>& A, const Eigen::VectorXd& b, StopCrit* stopCrit) override;
	void next(IterationData* dataIt) const override;
};

#endif