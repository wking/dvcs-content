all: scb.css version-control.html

scb.css:
	git show "$(BRANCH):wking/$@" > "$@"

version-control.html:
	git clone -b "$(BRANCH)" "$(REPO)" _build
	(cd _build/wking; make)
	cp _build/wking/"$@" .
	rm -rf _build

.PHONY: scb.css version-control.html
