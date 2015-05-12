fantasy:
	# Compiled twice in order to get the index correctly.
	cd latex && \
	pdflatex --output-directory ../build/ elementaris-fantasy.tex && \
	pdflatex --output-directory ../build/ elementaris-fantasy.tex && \
	evince ../build/elementaris-fantasy.pdf

modern:
	# Compiled twice in order to get the index correctly.
	cd latex && \
	pdflatex --output-directory ../build/ elementaris-modern.tex && \
	pdflatex --output-directory ../build/ elementaris-modern.tex && \
	evince ../build/elementaris-modern.pdf

sci-fi:
	# Compiled twice in order to get the index correctly.
	cd latex && \
	pdflatex --output-directory ../build/ elementaris-sci-fi.tex && \
	pdflatex --output-directory ../build/ elementaris-sci-fi.tex && \
	evince ../build/elementaris-sci-fi.pdf

all:
	@echo "NOT IMPLEMENTED YET"

help:
	echo "Possible targets: fantasy, modern, sci-fi, all, help, clean."

clean:
	@rm -f build/*
