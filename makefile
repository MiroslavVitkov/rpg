all:
	# Builds all targets, but does not open a preview. Inteded to be run
	# when commiting code changes, so that binaries are kept up to date.
	cd latex && \
	pdflatex --output-directory ../build/ fantasy/fantasy.tex && \
	pdflatex --output-directory ../build/ fantasy/fantasy.tex && \
	pdflatex --output-directory ../build/ modern/modern.tex  && \
	pdflatex --output-directory ../build/ modern/modern.tex  && \
	pdflatex --output-directory ../build/ sci-fi/sci-fi.tex  && \
	pdflatex --output-directory ../build/ sci-fi/sci-fi.tex  && \
	pdflatex --output-directory ../build/ steampunk/steampunk.tex  && \
	pdflatex --output-directory ../build/ steampunk/steampunk.tex

fantasy:
	# Compiled twice in order to get the index correctly.
	cd latex && \
	pdflatex --output-directory ../build/ fantasy/fantasy.tex && \
	pdflatex --output-directory ../build/ fantasy/fantasy.tex && \
	evince ../build/fantasy.pdf

modern:
	# Compiled twice in order to get the index correctly.
	cd latex && \
	pdflatex --output-directory ../build/ modern/modern.tex && \
	pdflatex --output-directory ../build/ modern/modern.tex && \
	evince ../build/modern.pdf

sci-fi:
	# Compiled twice in order to get the index correctly.
	cd latex && \
	pdflatex --output-directory ../build/ sci-fi/sci-fi.tex && \
	pdflatex --output-directory ../build/ sci-fi/sci-fi.tex && \
	evince ../build/sci-fi.pdf

steampunk:
	# Compiled twice in order to get the index correctly.
	cd latex && \
	pdflatex --output-directory ../build/ steampunk/steampunk.tex && \
	pdflatex --output-directory ../build/ steampunk/steampunk.tex && \
	evince ../build/steampunk.pdf

charsheet:
	cd latex && \
	pdflatex --output-directory ../build/ rules/character_sheet.tex  && \
	evince ../build/character_sheet.pdf

adventures:
	cd latex && \
	pdflatex --output-directory ../build/ adventures/sliapa_vrana.tex  && \
	evince ../build/sliapa_vrana.pdf

help:
	@echo "Possible targets: fantasy, modern, sci-fi, steampunk, charsheet, adventures, all, help, clean."

clean:
	@rm -f build/*
