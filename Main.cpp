#include "Resultdata.h"
#include "ResidualStopCrit.h"
#include "Jacobi.h"
#include "GaussSeidel.h"
#include "Gradient.h"
#include "IterationDataConjugate.h"
#include "ConjugateGradient.h"
#include <iostream>
#include <eigen3/unsupported/Eigen/SparseExtra>
#include <chrono>

int main() {
	std::cout << "Start main" << std::endl << std::endl;
	/////////////////// Inizializzazioni /////////////////////////
	double tol[4] = { 1e-4, 1e-6, 1e-8, 1e-10 };
	double error;
	StopCrit* stopPointer = 0;
	int maxIter = 50000;
	ResidualStopCrit residualStopCrit = ResidualStopCrit(0, maxIter);
	stopPointer = &residualStopCrit;
	Eigen::VectorXd xEs;
	Eigen::VectorXd rhs;
	Eigen::SparseMatrix<double> M1, M2, M3, M4;
	std::chrono::steady_clock::time_point begin, end;
	/////////////////// Matrici /////////////////////////
	//// Matrice M1 ////
	Eigen::loadMarket(M1, "Matrici_Progetto3/spa1.mtx");
	//// Matrice M2 ////
	Eigen::loadMarket(M2, "Matrici_Progetto3/spa2.mtx");
	//// Matrice M3 ////
	Eigen::loadMarket(M3, "Matrici_Progetto3/vem1.mtx");
	//// Matrice M4 ////
	Eigen::loadMarket(M4, "Matrici_Progetto3/vem2.mtx");
	int dim1 = M1.rows(), dim2 = M2.rows(), dim3 = M3.rows(), dim4 = M4.rows();
	ResultData resultJacobiM1(dim1), resultJacobiM2(dim2), resultJacobiM3(dim3), resultJacobiM4(dim4);
	ResultData resultGaussM1(dim1), resultGaussM2(dim2), resultGaussM3(dim3), resultGaussM4(dim4);
	ResultData resultGradientM1(dim1), resultGradientM2(dim2), resultGradientM3(dim3), resultGradientM4(dim4);
	ResultData resultGradientConjM1(dim1), resultGradientConjM2(dim2), resultGradientConjM3(dim3), resultGradientConjM4(dim4);

	xEs = Eigen::VectorXd::Ones(dim1);
	rhs = M1 * xEs;

	Jacobi jacobi = Jacobi(M1, rhs, stopPointer);
	GaussSeidel gauss = GaussSeidel(M1, rhs, stopPointer);
	Gradient gradient = Gradient(M1, rhs, stopPointer);
	ConjugateGradient conjugate = ConjugateGradient(M1, rhs, stopPointer);
	IterationData* data = new IterationData(rhs);
	IterationDataConjugate* dataConjugate = new IterationDataConjugate(rhs);

	/*
	/////////////////////////TRY
	residualStopCrit.setTolerance(tol[0]);
	residualStopCrit.setMaxIter(500);
	dataConjugate->restart();
	conjugate = ConjugateGradient(M1, rhs, stopPointer);
	begin = std::chrono::steady_clock::now();
	conjugate.iterativeSolver(dataConjugate);
	end = std::chrono::steady_clock::now();
	error = (dataConjugate->actualSol - xEs).norm() / xEs.norm();
	resultGradientConjM1.pushNewResult(tol[0], dataConjugate->getIter(), dataConjugate->residualHistory.back(), error, std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count());
	*/

	// Matrx 1
	std::cout << "Esecuzione Matrice 1" << std::endl;
	for (int i = 0; i < 4; ++i) {
		residualStopCrit.setTolerance(tol[i]);
		
		// Jacobi
		
		data->restart();
		jacobi = Jacobi(M1, rhs, stopPointer);
		begin = std::chrono::steady_clock::now();
		jacobi.iterativeSolver(data);
		end = std::chrono::steady_clock::now();
		error = (data->actualSol - xEs).norm() / xEs.norm();
		resultJacobiM1.pushNewResult(tol[i], data->getIter(), data->residualHistory.back(), error, std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count());
		
		// Gauss-Seidel 
		
		data->restart();
		gauss = GaussSeidel(M1, rhs, stopPointer);
		begin = std::chrono::steady_clock::now();
		gauss.iterativeSolver(data);
		end = std::chrono::steady_clock::now();
		error = (data->actualSol - xEs).norm() / xEs.norm();
		resultGaussM1.pushNewResult(tol[i], data->getIter(), data->residualHistory.back(), error, std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count());
		
		// Gradiante 

		data->restart();
		gradient = Gradient(M1, rhs, stopPointer);
		begin = std::chrono::steady_clock::now();
		gradient.iterativeSolver(data);
		end = std::chrono::steady_clock::now();
		error = (data->actualSol - xEs).norm() / xEs.norm();
		resultGradientM1.pushNewResult(tol[i], data->getIter(), data->residualHistory.back(), error, std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count());
		
		// Gradiante Coniugato
		
		dataConjugate->restart();
		conjugate = ConjugateGradient(M1, rhs, stopPointer);
		begin = std::chrono::steady_clock::now();
		conjugate.iterativeSolver(dataConjugate);
		end = std::chrono::steady_clock::now();
		error = (dataConjugate->actualSol - xEs).norm() / xEs.norm();
		resultGradientConjM1.pushNewResult(tol[i], dataConjugate->getIter(), dataConjugate->residualHistory.back(), error, std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count());
	}
	std::cout << "Esecuzione Matrice 2" << std::endl;
	// Matrix 2
	xEs = Eigen::VectorXd::Ones(dim2);
	rhs = M2 * xEs;
	delete data;
	delete dataConjugate;
	data = new IterationData(rhs);
	dataConjugate = new IterationDataConjugate(rhs);

	for (int i = 0; i < 4; ++i) {
		residualStopCrit.setTolerance(tol[i]);

		// Jacobi

		data->restart();
		jacobi = Jacobi(M2, rhs, stopPointer);
		begin = std::chrono::steady_clock::now();
		jacobi.iterativeSolver(data);
		end = std::chrono::steady_clock::now();
		error = (data->actualSol - xEs).norm() / xEs.norm();
		resultJacobiM2.pushNewResult(tol[i], data->getIter(), data->residualHistory.back(), error, std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count());

		// Gauss-Seidel 

		data->restart();
		gauss = GaussSeidel(M2, rhs, stopPointer);
		begin = std::chrono::steady_clock::now();
		gauss.iterativeSolver(data);
		end = std::chrono::steady_clock::now();
		error = (data->actualSol - xEs).norm() / xEs.norm();
		resultGaussM2.pushNewResult(tol[i], data->getIter(), data->residualHistory.back(), error, std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count());

		// Gradiante 

		data->restart();
		gradient = Gradient(M2, rhs, stopPointer);
		begin = std::chrono::steady_clock::now();
		gradient.iterativeSolver(data);
		end = std::chrono::steady_clock::now();
		error = (data->actualSol - xEs).norm() / xEs.norm();
		resultGradientM2.pushNewResult(tol[i], data->getIter(), data->residualHistory.back(), error, std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count());

		// Gradiante Coniugato

		dataConjugate->restart();
		conjugate = ConjugateGradient(M2, rhs, stopPointer);
		begin = std::chrono::steady_clock::now();
		conjugate.iterativeSolver(dataConjugate);
		end = std::chrono::steady_clock::now();
		error = (dataConjugate->actualSol - xEs).norm() / xEs.norm();
		resultGradientConjM2.pushNewResult(tol[i], dataConjugate->getIter(), dataConjugate->residualHistory.back(), error, std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count());
	}
	//Matrix 3
	std::cout << "Esecuzione Matrice 3" << std::endl;
	xEs = Eigen::VectorXd::Ones(dim3);
	rhs = M3 * xEs;
	delete data;
	delete dataConjugate;
	data = new IterationData(rhs);
	dataConjugate = new IterationDataConjugate(rhs);

	for (int i = 0; i < 4; ++i) {
		residualStopCrit.setTolerance(tol[i]);

		// Jacobi

		data->restart();
		jacobi = Jacobi(M3, rhs, stopPointer);
		begin = std::chrono::steady_clock::now();
		jacobi.iterativeSolver(data);
		end = std::chrono::steady_clock::now();
		error = (data->actualSol - xEs).norm() / xEs.norm();
		resultJacobiM3.pushNewResult(tol[i], data->getIter(), data->residualHistory.back(), error, std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count());

		// Gauss-Seidel 

		data->restart();
		gauss = GaussSeidel(M3, rhs, stopPointer);
		begin = std::chrono::steady_clock::now();
		gauss.iterativeSolver(data);
		end = std::chrono::steady_clock::now();
		error = (data->actualSol - xEs).norm() / xEs.norm();
		resultGaussM3.pushNewResult(tol[i], data->getIter(), data->residualHistory.back(), error, std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count());

		// Gradiante 

		data->restart();
		gradient = Gradient(M3, rhs, stopPointer);
		begin = std::chrono::steady_clock::now();
		gradient.iterativeSolver(data);
		end = std::chrono::steady_clock::now();
		error = (data->actualSol - xEs).norm() / xEs.norm();
		resultGradientM3.pushNewResult(tol[i], data->getIter(), data->residualHistory.back(), error, std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count());

		// Gradiante Coniugato

		dataConjugate->restart();
		conjugate = ConjugateGradient(M3, rhs, stopPointer);
		begin = std::chrono::steady_clock::now();
		conjugate.iterativeSolver(dataConjugate);
		end = std::chrono::steady_clock::now();
		error = (dataConjugate->actualSol - xEs).norm() / xEs.norm();
		resultGradientConjM3.pushNewResult(tol[i], dataConjugate->getIter(), dataConjugate->residualHistory.back(), error, std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count());
	}
	//Matrix 4
	std::cout << "Esecuzione Matrice 4" << std::endl;
	xEs = Eigen::VectorXd::Ones(dim4);
	rhs = M4 * xEs;
	delete data;
	delete dataConjugate;
	data = new IterationData(rhs);
	dataConjugate = new IterationDataConjugate(rhs);

	for (int i = 0; i < 4; ++i) {
		residualStopCrit.setTolerance(tol[i]);

		// Jacobi

		data->restart();
		jacobi = Jacobi(M4, rhs, stopPointer);
		begin = std::chrono::steady_clock::now();
		jacobi.iterativeSolver(data);
		end = std::chrono::steady_clock::now();
		error = (data->actualSol - xEs).norm() / xEs.norm();
		resultJacobiM4.pushNewResult(tol[i], data->getIter(), data->residualHistory.back(), error, std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count());

		// Gauss-Seidel 

		data->restart();
		gauss = GaussSeidel(M4, rhs, stopPointer);
		begin = std::chrono::steady_clock::now();
		gauss.iterativeSolver(data);
		end = std::chrono::steady_clock::now();
		error = (data->actualSol - xEs).norm() / xEs.norm();
		resultGaussM4.pushNewResult(tol[i], data->getIter(), data->residualHistory.back(), error, std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count());

		// Gradiante 

		data->restart();
		gradient = Gradient(M4, rhs, stopPointer);
		begin = std::chrono::steady_clock::now();
		gradient.iterativeSolver(data);
		end = std::chrono::steady_clock::now();
		error = (data->actualSol - xEs).norm() / xEs.norm();
		resultGradientM4.pushNewResult(tol[i], data->getIter(), data->residualHistory.back(), error, std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count());

		// Gradiante Coniugato

		dataConjugate->restart();
		conjugate = ConjugateGradient(M4, rhs, stopPointer);
		begin = std::chrono::steady_clock::now();
		conjugate.iterativeSolver(dataConjugate);
		end = std::chrono::steady_clock::now();
		error = (dataConjugate->actualSol - xEs).norm() / xEs.norm();
		resultGradientConjM4.pushNewResult(tol[i], dataConjugate->getIter(), dataConjugate->residualHistory.back(), error, std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count());
	}
	std::cout << "Risultati" << std::endl;
	std::cout << "########## Matrice 1 di dimensioni = " << resultJacobiM1.getDimM() << " ##########" << std::endl;
	std::cout << "Soluzione Jacobi:" << std::endl;
	std::cout << resultJacobiM1 << std::endl << std::endl;
	std::cout << "Soluzione Gauss-Seidel:" << std::endl;
	std::cout << resultGaussM1 << std::endl << std::endl;
	std::cout << "Soluzione Gradiente:" << std::endl;
	std::cout << resultGradientM1 << std::endl << std::endl;
	std::cout << "Soluzione Gradiente Conjugato:" << std::endl;
	std::cout << resultGradientConjM1 << std::endl << std::endl;
	
	std::cout << "########## Matrice 2 di dimensioni = " << resultJacobiM2.getDimM() << " ##########" << std::endl;
	std::cout << "Soluzione Jacobi:" << std::endl;
	std::cout << resultJacobiM2 << std::endl << std::endl;
	std::cout << "Soluzione Gauss-Seidel:" << std::endl;
	std::cout << resultGaussM2 << std::endl << std::endl;
	std::cout << "Soluzione Gradiente:" << std::endl;
	std::cout << resultGradientM2 << std::endl << std::endl;
	std::cout << "Soluzione Gradiente Conjugato:" << std::endl;
	std::cout << resultGradientConjM2 << std::endl << std::endl;

	std::cout << "########## Matrice 3 di dimensioni = " << resultJacobiM3.getDimM() << " ##########" << std::endl;
	std::cout << "Soluzione Jacobi:" << std::endl;
	std::cout << resultJacobiM3 << std::endl << std::endl;
	std::cout << "Soluzione Gauss-Seidel:" << std::endl;
	std::cout << resultGaussM3 << std::endl << std::endl;
	std::cout << "Soluzione Gradiente:" << std::endl;
	std::cout << resultGradientM3 << std::endl << std::endl;
	std::cout << "Soluzione Gradiente Conjugato:" << std::endl;
	std::cout << resultGradientConjM3 << std::endl << std::endl;

	std::cout << "########## Matrice 4 di dimensioni = " << resultJacobiM4.getDimM() << " ##########" << std::endl;
	std::cout << "Soluzione Jacobi:" << std::endl;
	std::cout << resultJacobiM4 << std::endl << std::endl;
	std::cout << "Soluzione Gauss-Seidel:" << std::endl;
	std::cout << resultGaussM4 << std::endl << std::endl;
	std::cout << "Soluzione Gradiente:" << std::endl;
	std::cout << resultGradientM4 << std::endl << std::endl;
	std::cout << "Soluzione Gradiente Conjugato:" << std::endl;
	std::cout << resultGradientConjM4 << std::endl << std::endl;
}