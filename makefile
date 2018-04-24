all:
	# Builds all targets, but does not open a preview. Inteded to be run
	# when commiting code changes, so that binaries are kept up to date.
	make fantasy-bare  && \
	make modern-bare  && \
	make sci-fi-bare  && \
	make steampunk-bare  && \
	make charsheet-bare  && \
	make adventures-bare


fantasy-bare:
	# Compiled twice in order to get the index correctly.
	cd latex && \
	pdflatex --output-directory ../build/ fantasy/fantasy.tex && \
	pdflatex --output-directory ../build/ fantasy/fantasy.tex


fantasy:
	make fantasy-bare  && \
	evince build/fantasy.pdf


modern-bare:
	# Compiled twice in order to get the index correctly.
	cd latex && \
	pdflatex --output-directory ../build/ modern/modern.tex && \
	pdflatex --output-directory ../build/ modern/modern.tex


modern:
	make modern-bare  && \
	evince build/modern.pdf


sci-fi-bare:
	# Compiled twice in order to get the index correctly.
	cd latex && \
	pdflatex --output-directory ../build/ sci-fi/sci-fi.tex && \
	pdflatex --output-directory ../build/ sci-fi/sci-fi.tex


sci-fi:
	make sci-fi  && \
	evince build/sci-fi.pdf


steampunk-bare:
	# Compiled twice in order to get the index correctly.
	cd latex && \
	pdflatex --output-directory ../build/ steampunk/steampunk.tex && \
	pdflatex --output-directory ../build/ steampunk/steampunk.tex


steampunk:
	make steampunk  && \
	evince build/steampunk.pdf


charsheet-bare:
	cd latex && \
	pdflatex --output-directory ../build/ rules/charsheet.tex


charsheet:
	make charsheet-bare  && \
	evince build/charsheet.pdf


adventures-bare:
	cd latex && \
	pdflatex --output-directory ../build/ adventures/sliapa_vrana.tex


.PHONY: help
help:
	@$(MAKE) -pRrq -f $(lastword $(MAKEFILE_LIST)) : 2>/dev/null | awk -v RS= -F: '/^# File/,/^# Finished Make data base/ {if ($$1 !~ "^[#.]") {print $$1}}' | sort | egrep -v -e '^[^[:alnum:]]' -e '^$@$$' | xargs


clean:
	@rm -f build/*
