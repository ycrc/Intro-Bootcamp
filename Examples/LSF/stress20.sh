#!/bin/bash

#BSUB -R "span[hosts=1]"
#BSUB -n 20
#BSUB -W 3:00
#BSUB -J stress20

~/bin/stress -c 20 -t 30
