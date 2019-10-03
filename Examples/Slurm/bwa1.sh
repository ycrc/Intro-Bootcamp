#!/bin/bash

# This is the WRONG way to submit a 20 thread bwa run.  All 20 threads will be confined to 1 cpu.

#SBATCH --mem=16g
#SBATCH -t 10:00
#SBATCH --mail-type ALL

cat Data/reads*.fa > Data/allreads.fa
module load SAMtools BWA; bwa mem -t 20 Data/BWAIndex/genome.fa Data/allreads.fa | samtools sort -O bam -o Results/allreads.bam -
