.PHONY: all clean

files = amia-2022-notes.pdf amia-2022-notes.docx

all: $(files)

amia-2022-notes.pdf: README.md
	pandoc -o $@ $<

amia-2022-notes.docx: README.md
	pandoc -o $@ $<

clean:
	rm -f $(files)
