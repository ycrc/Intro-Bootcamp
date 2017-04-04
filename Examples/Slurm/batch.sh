#!/bin/bash
#SBATCH --mail-type=ALL
#SBATCH --mail-user=robert.bjornson@yale.edu
#SBATCH -t 3:00 # 3 minutes
#SBATCH --mem=10g

module load R

Rscript myscript.R
