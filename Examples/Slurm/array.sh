#!/bin/bash

#SBATCH --array=1-10
#SBATCH --mail-type=ALL --mail-user=robert.bjornson@yale.edu

sleep 20; echo "task ${SLURM_ARRAY_TASK_ID} $(date)" > TARRAY_${SLURM_ARRAY_TASK_ID}.out

