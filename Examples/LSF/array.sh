#!/bin/bash

#BSUB -J "array[1-10]"
#BSUB -W 3:00

sleep 20; echo "task ${LSB_JOBINDEX} $(date)" > TARRAY_${LSB_JOBINDEX}.out 
