#include "ResidualStopCrit.h"
#include<iostream>

ResidualStopCrit::ResidualStopCrit(const double _tol, const int _maxIter) 
	: StopCrit(_tol,_maxIter){
}

bool ResidualStopCrit::haveToStop(const IterationData* dataIt) const {
	if (dataIt->getIter() > getMaxIter() || (dataIt->residualHistory.back()) < getTolerance()) {
		if (dataIt->getIter() > getMaxIter()) {
			std::cout << "ERRORE: Il metodo non converge" << std::endl;
		}
		return true;
	}
	
	return false;
}

void ResidualStopCrit::setTolerance(const double tol){
	StopCrit::setTolerance(tol);
}
void ResidualStopCrit::setMaxIter(const int maxIter){
	StopCrit::setMaxIter(maxIter);
}