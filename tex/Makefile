DOCKER_IMAGE=ghcr.io/being24/latex-docker
UID=$(shell id -u)
GID=$(shell id -g)
UIDOPT=-u $(UID):$(GID)
LATEXMK_CMD=docker run $(UIDOPT) --rm -v $(CURDIR):/workdir $(DOCKER_IMAGE) latexmk

.PHONY: all
all: submodular maxplus

.PHONY: submodular
submodular: submodular.tex
	$(LATEXMK_CMD) submodular.tex

.PHONY: maxplus
maxplus: maxplus.tex
	$(LATEXMK_CMD) maxplus.tex

.PHONY: clean
clean:
	$(LATEXMK_CMD) -C submodular.tex
	$(LATEXMK_CMD) -C maxplus.tex
	rm -f submodular.run.xml
	rm -f maxplus.run.xml
	rm -f submodular.bbl
	rm -f maxplus.bbl
	rm -rf _minted-submodular
	rm -rf _minted-maxplus
