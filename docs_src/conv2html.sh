#!/bin/bash
# asciidoctor README.adoc -o index.html
ruby asciidoc-coalescer.rb -a env-github README.adoc > ../README.adoc
