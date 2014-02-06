all:
    # Compiled twice in order to get the index correctly.
	cd latex && \
	pdflatex --output-directory ../build/ elementaris.tex && \
	pdflatex --output-directory ../build/ elementaris.tex && \
	evince ../build/elementaris.pdf

clean:
	@rm -f build/*
