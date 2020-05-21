#include "Gradient.h"

Gradient::Gradient(const Eigen::SparseMatrix<double>& _A, const Eigen::VectorXd& _b, StopCrit* _stopCrit)
	: IterativeMethods(_A, _b, _stopCrit) {
}

void Gradient::next(IterationData* dataIt) const {
	dataIt->prevSol = dataIt->actualSol;
	Eigen::VectorXd residualVector = b - (A * dataIt->actualSol);
	Eigen::VectorXd y = A * residualVector;
	double a = residualVector.transpose() * residualVector;
	double b = residualVector.transpose() * y;
	double alpha = a / b;
	dataIt->actualSol = dataIt->prevSol + alpha * residualVector;
	dataIt->residualHistory.push(residualVector.norm() / dataIt->getBNorm());
}

void Gradient::set(const Eigen::SparseMatrix<double>& A, const Eigen::VectorXd& b, StopCrit* stopCrit) {
	IterativeMethods::set(A, b, stopCrit);
}