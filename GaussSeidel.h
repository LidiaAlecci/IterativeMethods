#ifndef GAUSSSEIDEL_H
#define GAUSSSEIDEL_H

#include "IterativeMethods.h"

// GaussSeidel inherits from IterativeMethods with public inheritance
class GaussSeidel : public IterativeMethods {
private:
	Eigen::SparseMatrix<double> P;
	void setP();
public:
	GaussSeidel(const Eigen::SparseMatrix<double>& _A, const Eigen::VectorXd& _b, StopCrit* _stopCrit);
	void set(const Eigen::SparseMatrix<double>& A, const Eigen::VectorXd& b, StopCrit* stopCrit) override;
	void next(IterationData* dataIt) const override;
	Eigen::VectorXd solveP(const Eigen::VectorXd rhs) const;
};
#endif