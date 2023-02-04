DOCKER_IMAGE=ghcr.io/being24/latex-docker
UID=$(shell id -u)
GID=$(shell id -g)
UIDOPT=-u $(UID):$(GID)
LATEXMK_CMD=docker run $(UIDOPT) --rm -v $(CURDIR):/workdir $(DOCKER_IMAGE) latexmk

.PHONY: all
all: submodular max_plus

.PHONY: submodular
submodular: submodular.tex
	$(LATEXMK_CMD) submodular.tex

.PHONY: max_plus
max_plus: max_plus.tex
	$(LATEXMK_CMD) max_plus.tex

.PHONY: clean
clean:
	$(LATEXMK_CMD) -C submodular.tex
	$(LATEXMK_CMD) -C max_plus.tex
	rm -f submodular.run.xml
	rm -f max_plus.run.xml
	rm -f submodular.bbl
	rm -f max_plus.bbl
	rm -rf _minted-submodular
	rm -rf _minted-max_plus
