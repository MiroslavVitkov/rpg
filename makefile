all:
	cd build && \
	pdflatex ../latex/elementaris.tex && \
	evince elementaris.pdf

clean:
	@rm -f build/*
