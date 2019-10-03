#!/bin/bash

# This is the RIGHT way to submit a 20 thread bwa run.  We allocate one task with 20 cpus, and tell bwa to start 20 threads.

#SBATCH -c 20
#SBATCH --mem=16g
#SBATCH -t 10:00
#SBATCH --mail-type ALL

cat Data/reads*.fa > Data/allreads.fa
module load SAMtools BWA; bwa mem -t $SLURM_CPUS_PER_TASK Data/BWAIndex/genome.fa Data/allreads.fa | samtools sort -O bam -o Results/allreads.bam -
