MAIN := test
STYLE := UNCCHDissertation.sty

all:	$(MAIN).pdf

$(MAIN).pdf:	$(MAIN).tex $(STYLE)
	latexmk -pdf $<

run:	$(MAIN).pdf
	evince $<

preview:	$(MAIN).tex
	latexmk -pdf -pvc $< > /dev/null 2>&1 &

stop:
	pkill -f latexmk

clean:
	rm -f *.aux *.bbl *.blg *.fdb_latexmk *.fls *.lof *.log *.lot *.pdf *.toc
