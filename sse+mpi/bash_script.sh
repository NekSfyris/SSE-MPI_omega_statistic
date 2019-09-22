#!/bin/bash

mpicc mpi.c -o mpi_ex
gcc -msse4.2 -o sse sse.c
echo "-----------------------------------------------------------"
echo "-----------------------------------------------------------"
echo "-----------------------------------------------------------"
echo "******************** SIMPLE (N=100) *********************"
./simple 100
echo "******************** SSE (N=100) *********************"
./sse 100
echo "******************** SSE+MPI (N=100)(P=2) *********************"
mpiexec -n 2  ./mpi_ex 100 
echo "-----------------------------------------------------------"
echo "******************** SIMPLE (N=1000) *********************"
./simple 1000
echo "******************** SSE (N=1000) *********************"
./sse 1000
echo "******************** SSE+MPI (N=1000)(P=2) *********************"
mpiexec -n 2  ./mpi_ex 1000 
echo "-----------------------------------------------------------"
echo "******************** SIMPLE (N=10000) *********************"
./simple 10000
echo "******************** SSE (N=10000) *********************"
./sse 10000
echo "******************** SSE+MPI (N=10000)(P=2) *********************"
mpiexec -n 2  ./mpi_ex 10000
echo "-----------------------------------------------------------"
echo "******************** SIMPLE (N=100000) *********************"
./simple 100000
echo "******************** SSE (N=100000) *********************"
./sse 100000
echo "******************** SSE+MPI (N=100000)(P=2) *********************"
mpiexec -n 2  ./mpi_ex 100000  
echo "-----------------------------------------------------------"
echo "-----------------------------------------------------------"
echo "-----------------------------------------------------------"


echo "******************** SIMPLE (N=100) *********************"
./simple 100
echo "******************** SSE (N=100) *********************"
./sse 100
echo "******************** SSE+MPI (N=100)(P=4) *********************"
mpiexec -n 4  ./mpi_ex 100 
echo "-----------------------------------------------------------"
echo "******************** SIMPLE (N=1000) *********************"
./simple 1000
echo "******************** SSE (N=1000) *********************"
./sse 1000
echo "******************** SSE+MPI (N=1000)(P=4) *********************"
mpiexec -n 4  ./mpi_ex 1000 
echo "-----------------------------------------------------------"
echo "******************** SIMPLE (N=10000) *********************"
./simple 10000
echo "******************** SSE (N=10000) *********************"
./sse 10000
echo "******************** SSE+MPI (N=10000)(P=4) *********************"
mpiexec -n 4  ./mpi_ex 10000
echo "-----------------------------------------------------------"
echo "******************** SIMPLE (N=100000) *********************"
./simple 100000
echo "******************** SSE (N=100000) *********************"
./sse 100000
echo "-----------------------------------------------------------"
echo "******************** SSE+MPI (N=100000)(P=4) *********************"
mpiexec -n 4  ./mpi_ex 100000  
echo "-----------------------------------------------------------"
echo "-----------------------------------------------------------"
echo "-----------------------------------------------------------"


echo "******************** SIMPLE (N=100) *********************"
./simple 100
echo "******************** SSE (N=100) *********************"
./sse 100
echo "******************** SSE+MPI (N=100)(P=8) *********************"
mpiexec -n 8  ./mpi_ex 100 
echo "-----------------------------------------------------------"
echo "******************** SIMPLE (N=1000) *********************"
./simple 1000
echo "******************** SSE (N=1000) *********************"
./sse 1000
echo "******************** SSE+MPI (N=1000)(P=8) *********************"
mpiexec -n 8  ./mpi_ex 1000 
echo "-----------------------------------------------------------"
echo "******************** SIMPLE (N=10000) *********************"
./simple 10000
echo "******************** SSE (N=10000) *********************"
./sse 10000
echo "******************** SSE+MPI (N=10000)(P=8) *********************"
mpiexec -n 8  ./mpi_ex 10000
echo "-----------------------------------------------------------"
echo "******************** SIMPLE (N=100000) *********************"
./simple 100000
echo "******************** SSE (N=100000) *********************"
./sse 100000
echo "******************** SSE+MPI (N=100000)(P=8) *********************"
mpiexec -n 8  ./mpi_ex 100000  

