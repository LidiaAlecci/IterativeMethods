#include "GaussSeidel.h"
#include <iostream>

GaussSeidel::GaussSeidel(const Eigen::SparseMatrix<double>& _A, const Eigen::VectorXd& _b, StopCrit* _stopCrit)
	: IterativeMethods(_A, _b, _stopCrit) {
	setP();
}

void GaussSeidel::setP() {
	P = A.triangularView<Eigen::Lower>();
}

void GaussSeidel::next(IterationData* dataIt) const {
	dataIt->prevSol = dataIt->actualSol;
	Eigen::VectorXd residualVector = b - (A * dataIt->actualSol);
	Eigen::VectorXd y = solveP(residualVector);
	dataIt->actualSol = dataIt->prevSol + y;
	dataIt->residualHistory.push(residualVector.norm() / dataIt->getBNorm());
}

void GaussSeidel::set(const Eigen::SparseMatrix<double>& A, const Eigen::VectorXd& b, StopCrit* stopCrit) {
	IterativeMethods::set(A, b, stopCrit);
	setP();
}

Eigen::VectorXd GaussSeidel::solveP(const Eigen::VectorXd rhs) const {
	int n = P.rows();
	Eigen::VectorXd solve = Eigen::VectorXd::Zero(n);

	double pii = P.coeff(0, 0);
	if (pii == 0) {
		std::cout << "Errore nel risolvere P: P(0,0) == 0" << std::endl;
	}
	else {
		solve(0) = rhs(0) / pii;
	}
	for (int i = 1; i < n; ++i) {
		pii = P.coeff(i, i);
		if (pii == 0) {
			std::cout << "Errore nel risolvere P: P(" << i << "," << i << ") == 0" << std::endl;
		}
		else {
			solve(i) = (rhs(i) - (P.row(i) * solve)) / pii;
		}
	}
	return solve;
}