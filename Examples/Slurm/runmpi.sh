#!/bin/bash
#SBATCH -n 4 
#SBATCH --mem=8g
#SBATCH -p scavenge 

module purge
module load OpenMPI

mpirun ./ring

