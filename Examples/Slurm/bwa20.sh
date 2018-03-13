#!/bin/bash

#SBATCH -c 20
#SBATCH --mem=120g
#SBATCH -t 10:00
#SBATCH --mail-type ALL --mail-user robert.bjornson@yale.edu

cat Data/reads*.fa > Data/allreads.fa
module load SAMtools BWA; bwa mem -t 20 BWAIndex/genome.fa Data/allreads.fa | samtools sort -O bam -o Results/allreads.bam -
