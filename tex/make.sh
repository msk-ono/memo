#!/bin/bash -eu

DOCKER_IMAGE=ghcr.io/being24/latex-docker
CUR_DIR=$(cd $(dirname $0);pwd)

docker run -u $(id -u):$(id -g) --rm -v $CUR_DIR:/workdir $DOCKER_IMAGE latexmk submodular.tex
