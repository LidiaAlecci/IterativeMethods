#include "StopCrit.h"

StopCrit::StopCrit(const double _tol, const int _maxIter)
	: tol(_tol), maxIter(_maxIter){
}
void StopCrit::setTolerance(const double tol) {
	this->tol = tol;
}
void StopCrit::setMaxIter(const int maxIter) {
	this->maxIter = maxIter;
}
double StopCrit::getTolerance() const {
	return tol;
}
int StopCrit::getMaxIter() const {
	return maxIter;
}