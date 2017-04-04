#!/bin/bash

#PBS -q default 
#PBS -lwalltime=3:00
#PBS -m abe -M robert.bjornson@yale.edu

cd $PBS_O_WORKDIR

module load Langs/R

Rscript myscript.R 
