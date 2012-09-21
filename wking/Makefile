TEXT = $(wildcard *.txt)

all: version-control.html

clean:
	rm -f version-control.html

%.html: %.html.template parse-template.py $(TEXT)
	./parse-template.py "$<" > "$@"
