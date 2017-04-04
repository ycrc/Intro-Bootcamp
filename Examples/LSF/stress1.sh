#!/bin/bash

#BSUB -J stress1
#BSUB -W 3:00

~/bin/stress -c 20 -t 30
