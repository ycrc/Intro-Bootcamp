#!/bin/bash

#PBS -t 1-10
#PBS -m abe -M robert.bjornson@yale.edu

cd $PBS_O_WORKDIR

sleep 20; echo "task ${PBS_ARRAYID} $(date)" > TARRAY_${PBS_ARRAYID}.out

