DOCUMENT=report.pdf
DEPS=$(DOCUMENT:.pdf=.deps)

all: $(DOCUMENT)

%.pdf: %.tex
	tectonic --makefile-rules $(DEPS) $<

.PHONY: open
open: $(DOCUMENT)
	open $(DOCUMENT)

.PHONY: clean
clean:
	rm -f *.aux $(DOCUMENT) $(DEPS)

-include $(DEPS)
