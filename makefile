all:
	# Builds all targets, but does not open a preview. Inteded to be run
	# when commiting code changes, so that binaries are kept up to date.
	cd latex && \
	pdflatex --output-directory ../build/ elementaris-fantasy.tex && \
	pdflatex --output-directory ../build/ elementaris-fantasy.tex && \
	pdflatex --output-directory ../build/ elementaris-modern.tex  && \
	pdflatex --output-directory ../build/ elementaris-modern.tex  && \
	pdflatex --output-directory ../build/ elementaris-sci-fi.tex  && \
	pdflatex --output-directory ../build/ elementaris-sci-fi.tex

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

help:
	echo "Possible targets: fantasy, modern, sci-fi, all, help, clean."

clean:
	@rm -f build/*
