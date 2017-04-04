#!/bin/bash

#SBATCH --mail-type ALL --mail-user robert.bjornson@yale.edu
#SBATCH -c 20

~/bin/stress -c 20 -t 30
