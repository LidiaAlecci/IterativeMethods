#ifndef RESULTDATA_H
#define RESULTDATA_H

#include <queue>
#include <iostream>

class ResultData {
private:
	int dimM;
public:
	std::queue<long int> elapsedTimes;
	std::queue<int> iterations;
	std::queue<double> residuals;
	std::queue<double> tolerances;
	std::queue<double> relativeErrors;

	ResultData(const int dimMatrix);
	void pushNewResult(const double tol, const int iter, const double residual, const double error, const long int time);
	int getDimM() const;
};

std::ostream& operator<<(std::ostream& os, ResultData& result); //overload << stream
#endif
