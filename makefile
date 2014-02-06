all:
	cd latex && \
	pdflatex --output-directory ../build/ elementaris.tex && \
	evince ../build/elementaris.pdf

clean:
	@rm -f build/*
