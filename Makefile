.PHONY: clean

FILES = $(wildcard *.txt)

to_html: $(subst txt,html,$(FILES))

%.html: %.txt pandoc.css
	pandoc --from markdown --to html -s -c pandoc.css $< > $@

clean:
	rm *.html
