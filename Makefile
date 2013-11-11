all:
	pdflatex paper.tex
	bibtex paper
	pdflatex paper.tex
	pdflatex paper.tex
	cp paper.pdf ~/Dropbox/ctraps.pdf

clean:
	-rm paper.log paper.bbl paper.aux paper.blg paper.pdf
