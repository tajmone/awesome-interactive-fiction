# Awesome IF, Source Files

The AsciiDoc sources and assets to build the main README and its HTML version:

- [`../README.adoc`][README] — single-file "coalesced" AsciiDoc version, for GitHub previewing.
- [`../docs/index.html`][index] — HTML version, served on [GHPages website].


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Introduction](#introduction)
- [Folder Contents](#folder-contents)
- [Editing Guidelines](#editing-guidelines)
    - [Local Previews](#local-previews)
- [System Requirements](#system-requirements)
- [Credits](#credits)
    - [Asciidoctor Extensions Lab](#asciidoctor-extensions-lab)
- [Reference Links](#reference-links)

<!-- /MarkdownTOC -->

-----

# Introduction

For maintainability, the `README.adoc` document in the root is built from multiple AsciiDoc source files, by preprocessing them via the `asciidoc-coalescer.rb` script. Working on one-file-per-section is easier than editing a single long document.

The AsciiDoc source file:

- [`awesome-if.asciidoc`][awesome-if]

will be converted (via [`build.sh`][build]) to:

- [`../README.adoc`][README] — single-file preprocessed ADoc, for preview on [repository landing page].
- [`../docs/index.html`][index] — [WWW version], served via GitHub pages.


# Folder Contents

- [`build.sh`][build] — conversion script.
- [`preview.sh`](./preview.sh) — create local HTML preview (ignored by Git).
- [`asciidoc-coalescer.rb`][coalescer.rb] — script to create a preprocessed AsciiDoc file.
- [`awesome-if.asciidoc`][awesome-if] — main AsciiDoc file of the awesome list, will [`include::`][§28] other files at build time:
    + `*.adoc` — each file a section of the awesome list.

# Editing Guidelines

The __Awesome IF__ document is split in multiple `*.adoc` files, each file representing a single section (Level 1, or 2) in the final document — some large sections (e.g. _Software_) are split into multiple Level 2 sections, for practical reasons.

The individual `*.adoc` files are treated as standalone documents, complete with a document title (Level 0). Their heading levels are then adjusted at inclusion time via [the `leveloffset` attribute in the include directive][§28.4]. This allows to edit them without having to worry about their effective Level in the final document(s). Also, in the future the website version of __Awesome IF__ might be split into multiple HTML pages, if the document becomes too long.

> __NOTE__ — Currently, trying to convert the single sections ad standalone documents is likely to fail, due to missing cross references or custom attributes definitions. In the future this might be fixed by tweaking their contents so that they might be reused in a fully standalone manner, for it might be useful to allow other projects to reuse single sections of this project in other contexts too.

## Local Previews

While editing locally, you might want to check the results via the following script:

- [`preview.sh`](./preview.sh)

The script will create a local HTML preview file named `awesome-if.html` (ignored by Git) by invoking Asciidoctor with all the required settings.


# System Requirements

You'll need [Asciidoctor]  (Ruby) to build the documents.

# Credits

## Asciidoctor Extensions Lab

- [`asciidoc-coalescer.rb`][coalescer.rb]

The AsciiDoc coalescer script was downloaded from the __Asciidoctor Extensions Lab__ project (commit [b617f44], 2019/08/31):

https://github.com/asciidoctor/asciidoctor-extensions-lab/blob/master/scripts/asciidoc-coalescer.rb

Released under MIT License:

```
The MIT License

Copyright (C) 2014-2016 The Asciidoctor Project

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
```


# Reference Links

A selection of direct links to Asciidoctor topics relevant to working with the __Awesome IF__ project:

- [Asciidoctor User Manual]:
    + [§28. Include Directive][§28]
        * [§28.4. Partitioning large documents and using leveloffset][§28.4]

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[GHPages website]: https://github.com/tajmone/awesome-interactive-fiction/ "Visit the Awesome IF website"
[WWW version]: https://github.com/tajmone/awesome-interactive-fiction/ "Visit the Awesome IF website"
[repository landing page]: https://github.com/tajmone/awesome-interactive-fiction/ "Go to Awesome IF main repository page"

<!-- 3rd party -->

[Asciidoctor]: https://asciidoctor.org/

[b617f44]: https://github.com/asciidoctor/asciidoctor-extensions-lab/commit/b617f4422ad7ccfa5716ba1301fb2f4773f4e0d3

<!-- Asciidoctor documentation -->

[Asciidoctor User Manual]: https://asciidoctor.org/docs/user-manual/ "Go to the Asciidoctor Manual"
[§28]: https://asciidoctor.org/docs/user-manual/#include-directive "Read Asciidoctor Manual » §28. Include Directive"
[§28.4]: https://asciidoctor.org/docs/user-manual/#include-partitioning "Read Asciidoctor Manual » §28.4. Partitioning large documents and using leveloffset"

<!-- project files -->

[awesome-if]: ./awesome-if.asciidoc
[build]: ./build.sh
[coalescer.rb]: ./asciidoc-coalescer.rb
[README]: ../README.adoc "View the output AsciiDoc file"
[index]: ../docs/index.html "View the output HTML file"

<!-- EOF -->
