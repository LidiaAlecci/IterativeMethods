#include "IterationData.h"

void IterationData::incrementIter() {
	++iter;
}

int IterationData::getIter() const {
	return iter;
}

IterationData::IterationData(const Eigen::VectorXd& b)
	: iter(0), bNorm(b.norm()){
	int size = b.size();
	prevSol = Eigen::VectorXd::Zero(size);
	actualSol = Eigen::VectorXd::Zero(size);
	residualHistory.push(100); //Inizialize residual to a big value like 100
}

double IterationData::getBNorm() const {
	return bNorm;
}

void IterationData::restart() {
	iter = 0;
	int size = prevSol.size();
	prevSol = Eigen::VectorXd::Zero(size);
	actualSol = Eigen::VectorXd::Zero(size);
	// clear the queue
	std::queue<double> empty;
	std::swap(residualHistory, empty);
	residualHistory.push(100); //Inizialize residual to a big value like 100
}