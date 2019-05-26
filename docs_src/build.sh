#!/bin/bash
# asciidoctor README.adoc -o index.html
ruby asciidoc-coalescer.rb -a env-github awesome-if.asciidoc > ../README.adoc
