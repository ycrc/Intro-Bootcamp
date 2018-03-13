
with open('bwajobs.txt', 'w') as fp:
    for i in range(20):
        fp.write("module load SAMtools BWA; bwa mem BWAIndex/genome.fa Data/reads%(i)02d.fa > Results/out%(i)02d.sam && samtools sort -O bam -o Results/out%(i)02d.bam Results/out%(i)02d.sam\n" % locals())

with open('bwajobsbetter.txt', 'w') as fp:
    for i in range(20):
        fp.write("module load SAMtools BWA; bwa mem BWAIndex/genome.fa Data/reads%(i)02d.fa | samtools sort -O bam -o Results/out%(i)02d.bam -\n" % locals())

