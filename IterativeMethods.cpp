#include "IterativeMethods.h"

// Create a new istance of this class
IterativeMethods::IterativeMethods(const Eigen::SparseMatrix<double>& _A, const Eigen::VectorXd& _b, StopCrit* _stopCrit)
: dimA(_A.rows()), A(_A), b(_b), stopCrit(_stopCrit){
}

// Compute the iterative method until stopCrit 
void IterativeMethods::iterativeSolver(IterationData* dataIt) const {
	while (stopCrit->haveToStop(dataIt) == false) {
		dataIt->incrementIter();
		next(dataIt);
	}
}

void IterativeMethods::set(const Eigen::SparseMatrix<double>& A, const Eigen::VectorXd& b, StopCrit* stopCrit) {
	dimA = A.rows();
	this->A = A;
	this->b = b;
	this->stopCrit = stopCrit;
}

StopCrit* IterativeMethods::getStopCritPointer() const {
        return(stopCrit);
    }