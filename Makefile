all: hpc.pdf

hpc.pdf: hpc.tex
	pdflatex hpc.tex
	pdflatex hpc.tex

clean:
	-@/bin/rm -f *.aux *.log *.out *.nav *.toc *.vrb *.snm

realclean: clean
	-@/bin/rm -f *.pdf
