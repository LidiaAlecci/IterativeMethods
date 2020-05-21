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
	for (int i = 0; i < P.outerSize(); ++i) {
		for (Eigen::SparseMatrix<double>::InnerIterator it(P, i); it; ++it) { //to iterate over the non-zeros elements
			int col = it.col();
			int row = it.row();
			if (col == row) {
				if(it.value()==0){
				std::cout << "Error in solveP: P(" << col << "," << col << ") == 0" << std::endl;
				}else{
					if(col==0){
						solve(0) = rhs(0) / it.value();
					}else{
						solve(i) = (rhs(i) - (P.row(col) * solve)) / it.value();
					}
				}
			}
		}
	}
	return solve;
}