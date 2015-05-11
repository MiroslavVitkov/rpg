.PHONY: fantasy

fantasy:
	WHAT=elementaris-fantasy
	make all

all:
    # Compiled twice in order to get the index correctly.
	cd latex && \
	pdflatex --output-directory ../build/ elementaris-fantasy.tex && \
	#pdflatex --output-directory ../build/ $(WHAT).tex && \
	evince ../build/elementaris.pdf

clean:
	@rm -f build/*
