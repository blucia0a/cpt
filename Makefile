all:
	xelatex paper.tex
	bibtex paper
	xelatex paper.tex
	xelatex paper.tex

clean:
	-rm paper.log paper.bbl paper.aux paper.blg paper.pdf
