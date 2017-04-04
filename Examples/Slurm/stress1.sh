#!/bin/bash

#SBATCH --mail-type ALL --mail-user robert.bjornson@yale.edu

~/bin/stress -c 20 -t 30
