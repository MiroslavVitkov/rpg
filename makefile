.PHONY: fantasy

fantasy:
	# Compiled twice in order to get the index correctly.
	cd latex && \
	pdflatex --output-directory ../build/ elementaris-fantasy.tex && \
	pdflatex --output-directory ../build/ elementaris-fantasy.tex && \
	evince ../build/elementaris.pdf

all:
	@echo "NOT IMPLEMENTED YET"

help:
	echo "Possible targets: fantasy, all, help, clean."

clean:
	@rm -f build/*
