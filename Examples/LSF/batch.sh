#!/bin/bash

#BSUB -J batch
#BSUB -q shared 
#BSUB -W 3:00
# no need to specify email, done automatically

module load Apps/R

Rscript myscript.R
