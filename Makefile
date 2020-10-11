.PHONY = all

all: FactorioAstronomy-1.png

FactorioAstronomy-1.png : FactorioAstronomy.pdf
	convert -density 300 -background white -alpha remove -alpha off $< FactorioAstronomy.png

%.pdf : %.tex
	pdflatex --file-line-error -interaction=nonstopmode $<
