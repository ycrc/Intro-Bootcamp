
dSQ:
	dSQ --taskfile tasklist.txt > runsq.sh

ring:
	mpicc -o ring ring.c

clean:
	-rm -f *.out tasklist.txt.* SBATCH_SimpleQueue* *status.tsv
	-rm -rf SQ_Files*  runsq.sh ring
