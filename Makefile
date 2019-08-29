MAKEFLAGS  := -j 1
PACKAGE_STY = $(wildcard sty/*.sty)
DEMO_SRC    = demo/demo.tex demo/demo.bib
DEMO_PDF    = demo/demo.pdf

CTAN_CONTENT = README.md $(INS) $(PACKAGE_SRC) $(DOC_SRC) $(DOC_PDF) $(DEMO_SRC) $(DEMO_PDF)

DESTDIR     ?= $(shell kpsewhich -var-value=TEXMFHOME)
INSTALL_DIR  = $(DESTDIR)/tex/latex/nordictown
DOC_DIR      = $(DESTDIR)/doc/latex/nordictown
CACHE_DIR   := $(shell pwd)/.latex-cache

COMPILE_TEX := latexmk -xelatex -output-directory=$(CACHE_DIR)
export TEXINPUTS:=$(shell pwd):$(shell pwd)/sty:${TEXINPUTS}

.PHONY: demo clean install uninstall clean-cache

demo: $(DEMO_PDF)

clean: clean-cache

install:
	@mkdir -p $(INSTALL_DIR)
	@cp $(PACKAGE_STY) $(INSTALL_DIR)

uninstall:
	@rm -f "$(addprefix $(INSTALL_DIR)/, $(notdir PACKAGE_STY))"
	@rmdir "$(INSTALL_DIR)"

clean-cache:
	@rm -rf "$(CACHE_DIR)"

$(CACHE_DIR):
	@mkdir -p $(CACHE_DIR)

$(DEMO_PDF): $(DEMO_SRC) | clean-cache $(CACHE_DIR)
	@cd $(dir $(DEMO_SRC)) && $(COMPILE_TEX) $(notdir $(DEMO_SRC))
	@cp $(CACHE_DIR)/$(notdir $(DEMO_PDF)) $(DEMO_PDF)
