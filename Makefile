all: index.html

force:
	bikeshed -f spec ./index.src.html

index.html: index.src.html biblio.json
	bikeshed spec ./index.src.html

publish:
	git push origin master master:gh-pages
