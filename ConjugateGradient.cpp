#include "ConjugateGradient.h"
#include "IterationDataConjugate.h"
#include <iostream>

ConjugateGradient::ConjugateGradient(const Eigen::SparseMatrix<double>& _A, const Eigen::VectorXd& _b, StopCrit* _stopCrit)
	: IterativeMethods(_A, _b, _stopCrit) {
}

void ConjugateGradient::next(IterationData* dataIt) const {
	IterationDataConjugate* dataItConjugate = dynamic_cast<IterationDataConjugate*> (dataIt);
	if (dataIt->getIter() == 1) {
		dataItConjugate->residual = b - (A * dataItConjugate->actualSol);
		dataItConjugate->direction = dataItConjugate->residual;
	}
	Eigen::VectorXd y = A * dataItConjugate->direction;
	Eigen::VectorXd z = A * dataItConjugate->residual;
	Eigen::RowVectorXd directionRow(dataItConjugate->direction);
	double alpha = (dataItConjugate->direction.dot(dataItConjugate->residual)) / (dataItConjugate->direction.dot(y));
	dataItConjugate->prevSol = dataItConjugate->actualSol;
	dataItConjugate->actualSol = dataItConjugate->prevSol + alpha * dataItConjugate->direction;
	dataItConjugate->residual = b - A * dataItConjugate->actualSol;
	Eigen::VectorXd w = A * dataItConjugate->residual;
	double beta = (dataItConjugate->direction.dot(w)) / (dataItConjugate->direction.dot(y));
	dataItConjugate->direction = dataItConjugate->residual - beta * dataItConjugate->direction;
	(dataItConjugate->residualHistory).push(dataItConjugate->residual.norm() / dataItConjugate->getBNorm());
}

void ConjugateGradient::set(const Eigen::SparseMatrix<double>& A, const Eigen::VectorXd& b, StopCrit* stopCrit) {
	IterativeMethods::set(A, b, stopCrit);
}