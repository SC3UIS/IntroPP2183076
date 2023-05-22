#!/bin/bash
#SBATCH --job-name=trapezAreaSimple
#SBATCH --ntasks=1
#SBATCH --nodes=1
#SBATCH --cpus-per-task=4

## Cargar módulo
module load devtools/mpi/mpich/3.3.1

## Compilación del código
mpicc mpi_trapezAreaSimple.c -o mpi_trapezAreaSimple

## Ejecución con MPI
mpirun -np 12 ./mpi_trapezAreaSimple
