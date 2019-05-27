#!/bin/bash
source=awesome-if.asciidoc

asciidoctor \
  -a IsHTML \
  $source -o ../docs/index.html

ruby asciidoc-coalescer.rb \
  -a IsADoc \
  -a env-github \
  $source > ../README.adoc
