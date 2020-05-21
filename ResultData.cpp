#include "ResultData.h"

void ResultData::pushNewResult(const double tol, const int iter, const double residual, const double error, const long int time) {
	tolerances.push(tol);
	iterations.push(iter);
	residuals.push(residual);
	relativeErrors.push(error);
	elapsedTimes.push(time);

}

ResultData::ResultData(const int dimMatrix) :
	dimM(dimMatrix){
}

int ResultData::getDimM() const {
	return dimM;
}

std::ostream& operator<<(std::ostream& os, ResultData& result) {
	while (!result.tolerances.empty()) {
		os << "Tolleranza impostata = " << result.tolerances.front() << " " << std::endl;
		result.tolerances.pop();
		os << "Tempo impiegato: " << result.elapsedTimes.front() << " [µs]" << std::endl;
		result.elapsedTimes.pop();
		os << "Iterate: " << result.iterations.front() << std::endl;
		result.iterations.pop();
		os << "Errore relativo: " << result.relativeErrors.front() << std::endl;
		result.relativeErrors.pop();
	}
	
	return os;
}