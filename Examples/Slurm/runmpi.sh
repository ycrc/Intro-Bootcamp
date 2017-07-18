#!/bin/bash
#SBATCH -N 4 -n 4
#SBATCH --mem=8g

module load OpenMPI

mpirun ./ring

