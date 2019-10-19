#!/bin/bash
source=awesome-if.asciidoc

# Build a local HTML preview (ignored by Git):
asciidoctor \
	-a IsHTML \
	-a imagesdir=../docs/ \
	$source
