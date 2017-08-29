#!/bin/bash

#SBATCH --array=1-10 
#SBATCH -t 3:00
#SBATCH --mail-type=ALL --mail-user=robert.bjornson@yale.edu

module load R
Rscript arrscript.R ${SLURM_ARRAY_TASK_ID} > results_${SLURM_ARRAY_TASK_ID}.out
