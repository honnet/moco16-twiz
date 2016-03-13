# Kept It Super Simple

TARGET=moco16-twiz

all: $(TARGET).pdf
	@evince $< &

$(TARGET).pdf: $(TARGET).tex
	@texi2pdf $<

clean:
	@rm *.aux *.bbl *.blg *.log *.out *.pdf 2> /dev/null | true

.PHONY: view clean

