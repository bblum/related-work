all: related

related: related.tex bib
	pdflatex related.tex
	pdflatex related.tex

bib: related.tex citations.bib
	[ -f related.aux ] || pdflatex related.tex
	bibtex related

clean:
	rm -f *.aux *.log *.bbl *.blg *.pdf
