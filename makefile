main.pdf: main.md refs.bib
	pandoc -o main.pdf main.md --metadata date="$$(date -u '+%Y-%m-%d')" --toc --citeproc --bibliography=refs.bib

viz: main.pdf
	evince main.pdf
