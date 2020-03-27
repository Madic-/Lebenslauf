.POSIX:

CSS ?= style.css
PDFLAGS = --section-divs --css $(CSS) --standalone --from markdown+yaml_metadata_block+link_attributes+definition_lists --to html5
WKFLAGS = -B 4mm -T 10mm -L 0mm -R 4mm -q -s Letter --footer-right "[page]/[toPage]" --footer-font-size 6

.PHONY: all
all: Lebenslauf.html Lebenslauf.pdf Lebenslauf.txt

Lebenslauf.html: Lebenslauf.md Lebenslauf.md style.css
	pandoc $(PDFLAGS) -o Lebenslauf.html -s Lebenslauf.md

Lebenslauf.pdf: Lebenslauf.html Lebenslauf.md style.css
	wkhtmltopdf $(WKFLAGS) Lebenslauf.html Lebenslauf.pdf

Lebenslauf.txt: Lebenslauf.md
	pandoc --standalone --from markdown+yaml_metadata_block+smart+link_attributes --to plain -o Lebenslauf.txt -s Lebenslauf.md

.PHONY: clean
clean:
	rm -f *.html *.pdf *.docx *.txt
