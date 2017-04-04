#!/bin/bash
#PBS -lnodes=1:ppn=20
#PBS -m abe -M robert.bjornson@yale.edu

cd $PBS_O_WORKDIR
~/bin/stress -c 20 -t 30
