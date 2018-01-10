import random

genome='/ysm-gpfs/datasets/genomes/Mus_musculus/UCSC/mm10/Sequence/WholeGenomeFasta/genome.fa'

files=20
seqsPerFile=100000

ll=open(genome).readlines()
n=len(ll)

for f in range(files):
  fp=open("reads%02d.fa" % (f), 'w')
  for i in range(seqsPerFile):
    fp.write(">seq%d\n%s" % (i, ll[random.randint(0, n)]))
  fp.close()  
