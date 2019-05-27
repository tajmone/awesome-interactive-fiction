#!/bin/bash
source=awesome-if.asciidoc

# Build the HTML doc served on the WWW via GitHub Pages:
asciidoctor \
  -a IsHTML \
  -a imagesdir \
  $source -o ../docs/index.html

# Build the preprocessed AsciiDoc version in the repo root:
ruby asciidoc-coalescer.rb \
  -a IsADoc \
  -a env-github \
  $source > ../README.adoc
