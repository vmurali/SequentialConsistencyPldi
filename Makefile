.PHONY: all clean

all:
	mkdir -p build
	pdflatex -output-directory build Main.tex
	bibtex build/Main
	pdflatex -output-directory build Main.tex
	pdflatex -output-directory build Main.tex
	cp build/Main.pdf build/pldi_2015_seqconsistency.pdf
clean:
	rm -rf build
