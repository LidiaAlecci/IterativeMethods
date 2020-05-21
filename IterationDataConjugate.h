#ifndef ITERATIONDATACONJUGATE_H
#define ITERATIONDATACONJUGATE_H

#include<eigen3/Eigen/Sparse>
#include "IterationData.h"

// IterationDataConjugate inherits from IterationData with public inheritance
class IterationDataConjugate : public IterationData {
public:
	Eigen::VectorXd direction;
	Eigen::VectorXd residual;
	IterationDataConjugate(const Eigen::VectorXd& b);
	void restart() override;
};

#endif
