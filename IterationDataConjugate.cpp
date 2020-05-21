#include "IterationDataConjugate.h"

IterationDataConjugate::IterationDataConjugate(const Eigen::VectorXd& b) 
	: IterationData(b), direction(Eigen::VectorXd::Zero(b.size())), residual(Eigen::VectorXd::Zero(b.size())) {
}

void IterationDataConjugate::restart() {
	IterationData::restart();
	direction = Eigen::VectorXd::Zero(prevSol.size());
	residual = Eigen::VectorXd::Zero(prevSol.size());
}