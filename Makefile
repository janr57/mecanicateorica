# Makefile for mecanicateorica.tex
#

FILES =	mecanicateorica.pkg.sty\
	mecanicateorica.defs.sty\
	portada/portada.tex\
	tablacontenidos/tablacontenidos.tex\
	apendices/momento-fuerza.tex\
	texto/eulerlagrange.tex

mecanicateorica.pdf: mecanicateorica.tex $(FILES)

%.pdf:	%.tex
	lualatex --enable-write18 $<
	lualatex --enable-write18 $<

all: mecanicateorica.pdf

.PHONY: clean

clean:
	rm -rf *.pdf *.ps *.dvi *.aux *.log *.toc *~ *.dat *.script
	rm -rf texto/*.aux texto/*~ texto/auto
	rm -rf portada/*.aux portada/*~ portada/auto
	rm -rf tablacontenidos/*.aux tablacontenidos/*~ tablacontenidos/auto
	rm -rf prologo/*.aux prologo/*~ prolog/auto


