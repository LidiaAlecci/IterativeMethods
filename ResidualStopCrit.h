#ifndef RESIDUALSTOPCRIT_H
#define RESIDUALSTOPCRIT_H

#include "IterationData.h"
#include "StopCrit.h"

class ResidualStopCrit : public StopCrit {
public:
	virtual bool haveToStop(const IterationData* const dataIt) const;
	ResidualStopCrit(const double _tol, const int _maxIter);
	void setTolerance(const double tol) override;
	void setMaxIter(const int maxIter) override;
};
#endif