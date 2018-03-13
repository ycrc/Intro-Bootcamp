#!/bin/bash
#SBATCH -n 32
#SBATCH --mem=8g

module load OpenMPI

mpirun ./ring

