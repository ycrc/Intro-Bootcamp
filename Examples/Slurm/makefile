
dSQ: tasklist.txt
	dSQ --taskfile tasklist.txt > runsq.sh

ring: ring.c
	mpicc -o ring ring.c

clean:
	-rm -f *.out tasklist.txt.* SBATCH_SimpleQueue* *status.tsv
	-rm -rf SQ_Files*  runsq.sh ring
	-rm -rf Results/* *.out 
	-rm -rf dsq-*.sh 
