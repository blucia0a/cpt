all:
	pdflatex paper.tex
	bibtex paper
	pdflatex paper.tex
	pdflatex paper.tex

clean:
	-rm paper.log paper.bbl paper.aux paper.blg paper.pdf
