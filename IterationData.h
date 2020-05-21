#ifndef ITERATIONDATA_H
#define ITERATIONDATA_H

#include<eigen3/Eigen/Sparse>
#include <queue>

class IterationData {
private:
	int iter;
	double bNorm;
public:
	Eigen::VectorXd actualSol;
	Eigen::VectorXd prevSol;
	std::queue<double> residualHistory;

	virtual ~IterationData() = default;

	void incrementIter();
	IterationData(const Eigen::VectorXd& b);
	int getIter() const;
	double getBNorm() const;
	virtual void restart();
};

#endif