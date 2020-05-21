#ifndef STOPCRIT_H
#define STOPCRIT_H

#include "IterationData.h"

class StopCrit {
private:
	double tol;
	int maxIter;
public:
	StopCrit(const double _tol, const int _maxIter);
	virtual bool haveToStop(const IterationData* dataIt) const = 0; // pure virtual function
	virtual void setTolerance(const double tol);
	virtual void setMaxIter(const int maxIter);
	double getTolerance() const;
	int getMaxIter() const;
};
#endif