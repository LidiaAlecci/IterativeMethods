#include "Jacobi.h"

Jacobi::Jacobi(const Eigen::SparseMatrix<double>& _A, const Eigen::VectorXd& _b, StopCrit* _stopCrit)
	: IterativeMethods(_A, _b, _stopCrit) {
	setPInverse();
}

void Jacobi::setPInverse() {
	PInverse = Eigen::VectorXd::Zero(dimA);
	for (int i = 0; i < A.outerSize(); ++i) {
		for (Eigen::SparseMatrix<double>::InnerIterator it(A, i); it; ++it) { //to iterate over the non-zeros elements
			int col = it.col();
			int row = it.row();
			if (col == row) {
				PInverse(col) = 1 / it.value();
			}
		}
	}
}

void Jacobi::set(const Eigen::SparseMatrix<double>& A, const Eigen::VectorXd& b, StopCrit* stopCrit) {
	IterativeMethods::set(A, b, stopCrit);
	setPInverse();
}
void Jacobi::next(IterationData* dataIt) const {
	dataIt->prevSol = dataIt->actualSol;
	Eigen::VectorXd residualVector = b - (A * dataIt->actualSol);
	dataIt->actualSol = dataIt->prevSol + Eigen::VectorXd(residualVector.array() * PInverse.array());// coefficient-wise operations
	dataIt->residualHistory.push(residualVector.norm()/dataIt->getBNorm());
}