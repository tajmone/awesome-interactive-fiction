# Awesome Interactive Fiction

A curated list of interactive fiction frameworks, tools, and resources. Created by [Yakira Dixon] in 2014, currently maintained by [Tristano Ajmone].

[Yakira Dixon]: https://github.com/yakiradixon "View Yakira Dixon's GitHub profile"
[Tristano Ajmone]: https://github.com/tajmone "View Tristano Ajmone's GitHub profile"


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Introductory Material](#introductory-material)
- [Software](#software)
    - [IF Authoring Tools](#if-authoring-tools)
        - [ADRIFT](#adrift)
        - [Alan](#alan)
        - [Curveship](#curveship)
        - [Hugo](#hugo)
        - [Inform 6](#inform-6)
        - [Inform 7](#inform-7)
        - [Ink](#ink)
        - [T.A.B. \(ThinBASIC Adventure Builder\)](#tab-thinbasic-adventure-builder)
        - [TADS \(Text Adventure Development System\)](#tads-text-adventure-development-system)
        - [Tuvi](#tuvi)
        - [Twine](#twine)
        - [Undum](#undum)
        - [Varytale](#varytale)
        - [Versu](#versu)
        - [Yarn](#yarn)
        - [Yarn Spinner](#yarn-spinner)
    - [IF Authoring Tools in Spanish](#if-authoring-tools-in-spanish)
        - [Superglús](#supergl%C3%BAs)
    - [IF Authoring Tools in Italian](#if-authoring-tools-in-italian)
        - [Confabula](#confabula)
    - [Interpreters](#interpreters)
        - [Cross Platform](#cross-platform)
        - [macOS](#macos)
        - [MS Windows](#ms-windows)
        - [Mobile Devices](#mobile-devices)
        - [In-Browser Players](#in-browser-players)
    - [Mappping Tools](#mappping-tools)
        - [Cross Platform](#cross-platform-1)
        - [macOS](#macos-1)
        - [MS Windows](#ms-windows-1)
        - [Linux/\*nix](#linuxnix)
        - [Mobile Devices](#mobile-devices-1)
- [Standards and Specifications](#standards-and-specifications)
    - [Files Extensions and Formats](#files-extensions-and-formats)
    - [Story Files by Extensions](#story-files-by-extensions)
    - [Source Files by Extensions](#source-files-by-extensions)
    - [Other IF File Extensions](#other-if-file-extensions)
    - [Virtual Machines](#virtual-machines)
        - [Glulx](#glulx)
- [Collections](#collections)
- [Blogs](#blogs)
- [Competitions & Awards](#competitions--awards)
    - [Annual Competitions](#annual-competitions)
    - [Annual Awards](#annual-awards)
- [History](#history)
    - [Books](#books)
    - [Documentaries](#documentaries)
- [IF Learning Resources](#if-learning-resources)
    - [Free eBooks](#free-ebooks)
        - [IF History](#if-history)
        - [IF Theory](#if-theory)
        - [Inform 6](#inform-6-1)
        - [Inform 7](#inform-7-1)
        - [PAW](#paw)
    - [Commercial Books](#commercial-books)
        - [IF History](#if-history-1)
        - [Inform 7](#inform-7-2)
        - [Twine](#twine-1)
    - [Tutorials](#tutorials)
        - [IF Authoring Guides](#if-authoring-guides)
        - [Inform 7](#inform-7-3)
    - [Cheat Sheets and Reference Docs](#cheat-sheets-and-reference-docs)
        - [Inform 6](#inform-6-2)
        - [Inform 7](#inform-7-4)
- [IF for Teaching and Education](#if-for-teaching-and-education)
    - [Online Resources](#online-resources)
    - [Examples](#examples)
    - [Books](#books-1)
    - [Whitepapers and Guides](#whitepapers-and-guides)
    - [Articles and Academic Papers](#articles-and-academic-papers)
- [Social Events](#social-events)
    - [Conferences](#conferences)
    - [Meetups](#meetups)
- [Digital Communities](#digital-communities)
    - [Newsgroups and Mailing Lists](#newsgroups-and-mailing-lists)
        - [English](#english)
        - [Italian](#italian)
    - [MUDs](#muds)
        - [ifMUD](#ifmud)

<!-- /MarkdownTOC -->

-----





# Introductory Material

Newcomers to Interactive Fiction will find these links helpful:

- [Introduction to Interactive Fiction](http://inform7.com/learn/eg/dm/IntroductionToIF.pdf) — by Emily Short; 8pp (PDF). Also available in other languages:
    + Italian » [Introduzione alle Avventure Testuali](http://www.youdev.it/if/Titolo/Introduzione%20alle%20Avventure%20Testuali.pdf)
    + French » [Introduction à la fiction interactive](http://ifiction.free.fr/fichiers/Introduction-IF-fr.pdf)

- [Brass Lantern's Beginner's Guide to Interactive Fiction](http://www.brasslantern.org/beginners/beginnersguide.html) — by Stephen Granade and Emily Short.

- [Zarf’s Interactive Fiction](http://eblong.com/zarf/if.html) — an introductory website for IF newbies, by Andrew Plotkin (aka Zarf).

- [Player's Cheat Sheet](http://pr-if.org/doc/play-if-card/) — a card to help new IF players with game commands (available in various languages).

-----

# Software

## IF Authoring Tools

### ADRIFT

[ADRIFT]: #adrift

- [www.adrift.co]

ADRIFT (Adventure Development & Runner — Interactive Fiction Toolkit) is a GUI driven IF development system for Windows, allowing to create text adventures via dialog boxes and GUI controls instead of writing code. Supports graphics and sounds.

Developed by Campbell Wild since 1997, ADRIFT Developer (formerly called Adventure Generator) used to be a commercial product, but since 2011 has been released as freeware.

There are different versions of ADRIFT, and an adventure created with a specific version of ADRIFT Developer needs to be played with the same version of ADRIFT Runner:

- __ADRIFT 5.0__ (2011–)
- __ADRIFT 4.0__ (2002–2012)
- __ADRIFT 3.9__ (2001)
- __ADRIFT 2.0__ (aka Adventure Generator, 1997) — legacy 16-bit DOS app

For more information, see also:

- [IFWiki » ADRIFT]
- [Wikipedia » ADRIFT]


[www.adrift.co]: http://www.adrift.co/ "Visit ADRIFT official website"
[IFWiki » ADRIFT]: http://www.ifwiki.org/index.php/ADRIFT "Visit ADRIFT page at IFWiki"
[Wikipedia » ADRIFT]: https://en.wikipedia.org/wiki/ADRIFT

### Alan

[Alan]: #alan
[Alan 2]: #alan
[Alan 3]: #alan

- [www.alanif.se]

[www.alanif.se]: http://www.alanif.se/ "Visit Alan official website"

Alan (Adventure LANguage) is an a cross-platform open source authoring system based on a dedicated IF language with an English-like syntax, intended to simplify writing adventures for non-programmers. Its webiste also offers a dedicated IDE and other useful tools to aid IF authoring.

Alan was created in 1985 by Thomas Nilsson and Göran Forslund, and is actively maintained by Thomas Nilsson. The latest version is __Alan 3__.


For more information, see also:

- [IFWiki » Alan]

[IFWiki » Alan]: http://www.ifwiki.org/index.php/Alan "Visit Alan page at IFWiki"

### Curveship

[Curveship]: #curveship

- http://curveship.com/


### Hugo

[Hugo]: #hugo

- http://www.generalcoffee.com/


### Inform 6

[Inform 6]: #inform-6
[Inform]: #inform-6

- http://inform-fiction.org/

See also:

- [Inform 6 Free eBooks]
- [Inform 6 Cheat Sheets]


### Inform 7

[Inform 7]: #inform-7

- http://inform7.com/

Based on natural language.

See also:

- [Inform 7 Commercial Books]
- [Inform 7 Free eBooks]
- [Inform 7 Tutorials]
- [Inform 7 Cheat Sheets]

Online tools:

- [I7 Thing Creator (I7TC)](http://www.nitku.net/if/thingcreator/) — by Juhana Leinonen. A web form to quickly create i7 objects and reponses; the produced code can then be pasted into the project's source.

### Ink

[Ink]: #ink

- https://github.com/inkle/ink



### T.A.B. (ThinBASIC Adventure Builder)

[T.A.B.]: #tab-thinbasic-adventure-builder
[TAB]: #tab-thinbasic-adventure-builder
[ThinBASIC Adventure Builder]: #tab-thinbasic-adventure-builder

- http://tab.thinbasic.com/

For more information, see also:

[IFWiki » ThinBASIC Adventure Builder]: http://www.ifwiki.org/index.php/ThinBASIC_Adventure_Builder "Visit ThinBASIC Adventure Builder page at IFWiki"

### TADS (Text Adventure Development System)

[TADS]: #tads-text-adventure-development-system
[TADS 2]: #tads-text-adventure-development-system
[TADS 3]: #tads-text-adventure-development-system


- [www.tads.org]

[www.tads.org]: http://www.tads.org "Visit TADS official website"


### Tuvi

[Tuvi]: #tuvi

- https://github.com/jaywengrow/tuvi


### Twine

[Twine]: #twine

- http://twinery.org/

See also:

- [Twine commercial books]

### Undum

[Undum]: #undum

- http://undum.com/



### Varytale

[Varytale]: #varytale

- http://varytale.com/books/



### Versu

[Versu]: #versu

- http://versu.com/



### Yarn

[Yarn]: #yarn

- https://github.com/infiniteammoinc/Yarn


### Yarn Spinner

[Yarn Spinner]: #yarn-spinner

- https://github.com/thesecretlab/YarnSpinner

## IF Authoring Tools in Spanish

### Superglús

- http://www.caad.es/superglus/doku.php
- https://github.com/Utodev/Superglus

For more information, see also:

- [IFWiki » Superglús]
- [Wikipedia (ES) » Superglús]

[IFWiki » Superglús]: http://www.ifwiki.org/index.php/Supergl%C3%BAs "Visit Superglús page at IFWiki"
[Wikipedia (ES) » Superglús]: https://es.wikipedia.org/wiki/Supergl%C3%BAs


## IF Authoring Tools in Italian

### Confabula

- https://github.com/Silvan87/Confabula

## Interpreters

### Cross Platform

- [Fizmo](https://fizmo.spellbreaker.org/) — a generic Z-Machine interpreter-development library in plain C, used in various interpreters. Supports Z-code (1-5, 7 and 8).

- [Frotz](http://frotz.sourceforge.net/) — for Linux & Mac OS X, supports Z-Machine story files.

- [Gargoyle](http://ccxvii.net/gargoyle/) — for MS Windows, Linux & Mac OS X; supports most story file formats by including the following interpreters: Agility, Alan 2 and 3, Frotz (glk port), Glulxe, Hugo, Level 9, Magnetic, Scare, Tads 2/3.

### macOS

- [Spatterlight](http://ccxvii.net/spatterlight/) — story files supported: AGT, Adrift, AdvSys, Alan, Glulx, Hugo, Level 9, Magnetic Scrolls, TADS (text-only), Quill, and Z-code (except v6).

- [Zoom](http://www.logicalshift.co.uk/unix/zoom/) — supports Z-code, TADS 2/3 and HUGO story files.

### MS Windows

- [Windows Glulxe](http://www.davidkinder.co.uk/glulxe.html)

- [Windows Frotz](http://www.davidkinder.co.uk/frotz.html)

### Mobile Devices

#### Andorid

- [Twisty](https://bitbucket.org/sussman/twisty) — supports Z-code and Glulx story files.

- [Text Fiction](http://www.onyxbits.de/textfiction) — supports Z-code (3, 5 and 8) story files.

#### iPhone

- [iPhone Frotz](https://itunes.apple.com/us/app/frotz/id287653015)

#### PalmOS

- [CliFrotz](http://zodiacstuff.sourceforge.net/clifrotz.html)

### In-Browser Players

- [Parchment](https://github.com/curiousdannii/parchment) — written in JavaScript, supports Z-Machine story files.

## Mappping Tools

Traditionally, IF maps are represented by boxes connected by lines, representing the various rooms and their directions connections. They are intended to represent movements in the adventure world locations, not a physical representation of its geography — but sometimes «realistic» maps are provided with the game feelies, for aesthetic reasons.

Mapping tools can be used for either manually drawing maps from scratch, or to automatically build a map by analizying a game session transcript (live or saved). Some tools offer both functionality.

Many of the tools presented here are now hosted at the IF-Archive — they are old and don’t have any longer a website of their own. To avoid direct linking to their binary archives, a link to the “Mapping Tools” index page at IF-Archive will be provided instead:

- [The IF Archive » Mapping Tools](http://www.ifarchive.org/indexes/if-archiveXmapping-tools.html)

### Cross Platform

- [IFMapper](https://rubygems.org/gems/ifmapper/versions/1.3.1) — A map drawing tool, written in Ruby, with lots of features, including automapping. Can read and save IFM files and Inform/TADS3 source code files. Exports to PDF. ([Online Manual](http://ggarra13.github.io/ifmapper/en/start.html) | [GitHub](https://github.com/ggarra13/ifmapper))

- [`SVGmaps.zip`](http://www.ifarchive.org/if-archive/mapping-tools/SVGmaps.zip) (2008) — A JavaScript framework for producing IF maps using the standard Scalable Vector Graphics (SVG) language.

### macOS

- Cocoa Mapre (2004) — ([`cocoa_mapre0.6.7.dmg`](http://www.ifarchive.org/if-archive/mapping-tools/cocoa_mapre0.6.7.dmg)) A tool for generating maps of Multi-User Dungeons on Mac OS X.

### MS Windows

- [AutoREALM](http://autorealm.sourceforge.net/) (2006) — A vector-based map drawing software (FOSS) designed for RPGs. Allows the creation of detailed full-color maps; ideal for the creation of elegant game maps where «room boxes» are superimposed on a realistic up-to-scale representation of the game world.

- [Campaign Cartographer](https://secure.profantasy.com/products/cc3-plus.asp) — A commercial tool for drawing fantasy-style terrain maps — not the classic rooms/directions-based diagram IF maps, but ancient-looking «realistic» full-color maps, with villages, lakes, sea, forests. Execellent for creating feelies maps.

- [Frobot Magic Adventure Mapper](http://www.ifarchive.org/indexes/if-archiveXmapping-tools.html) (1998) — Automapping tool for Windows 95.

- GUEmap — Map drawing tool, can also generate directions for moving around the map. [GUEmap v1](https://www.cjmweb.net/GUEmap/download) (1998–1999) is Sharaware, [GUEmap v2](https://www.cjmweb.net/GUEmap/develop) (1998–2007) is now free and open source. Runs on Windows 95/98 or NT 4.0.

- [IFM](https://bitbucket.org/zondo/ifm) (Interactive Fiction Mapper) — (1998–2014) Console/CMD executables available at [IF Archive](http://www.ifarchive.org/indexes/if-archiveXmapping-tools.html). IFM is a language for keeping track of gameplay progress, and a program for producing various different sorts of output using it, including automapping. See [online documentation](http://ifm.readthedocs.io/en/latest/contents.html) and [IFWiki](http://www.ifwiki.org/index.php/IFM).

- [Informapper](http://www.ifarchive.org/indexes/if-archiveXmapping-tools.html) (1996) — A map drawing program for Windows, Spanish only user interface. Can export as a skeleton file for SINTAC. Can’t execute on modern versions of Windows.

- [Map Maker](http://www.ifarchive.org/indexes/if-archiveXmapping-tools.html) (1999) — A Windows 95/98/NT world-building tool for visually designing maps to be converted as AGT, AGX, Hugo and TADS source code. Can still be executed under Windows 10.

- [The Mapper](http://www.ifarchive.org/indexes/if-archiveXmapping-tools.html) (1994) — Automapping tool — comes as a `.COM` executable format. Can’t execute on modern versions of Windows.

- [Trizbort](http://trizbort.genstein.net/) — For drawing Infocom-style maps. Automapping feature. Saves in XML, exports to PDF or PNG. Requires .NET 2.0.

### Linux/\*nix

- [Adventure Map Utility](http://www.ifarchive.org/indexes/if-archiveXmapping-tools.html) (1994) — A shell script that implements a domain-specific language for creating printable PostScript maps from plaintext input files.

- [asciimapper](http://www.ifarchive.org/if-archive/mapping-tools/asciimapper) (2005) — A Perl script to create IFM maps from ASCII art maps. Intended as an easy way to draw a map and have it converted to IFM format.

- [ifm2i7](http://www.ifarchive.org/indexes/if-archiveXmapping-tools.html) (2008) — A Perl program to convert maps in IFM format to Inform 7 source code.

- [informap](http://www.ifarchive.org/if-archive/mapping-tools/informap.perl) (1999) — A perl script that draws maps out of Inform source code.

### Mobile Devices

#### PalmOS

- [IFmapper](http://www.ifarchive.org/indexes/if-archiveXmapping-tools.html) (2001)

-----

# Standards and Specifications

## Files Extensions and Formats

For a full list of IF story files extensions, see:

- [IFWiki » List of file extensions](http://www.ifwiki.org/index.php/List_of_file_extensions)
- [IFDB » File Formats](http://ifdb.tads.org/fileformat)

## Story Files by Extensions

IF story files are distributed with different file extensions, depending on the IF authoring system used to create them and/or the output format the story has been compiled/converted to (in case of authoring systems that support multiple output formats, like Inform7, or when story files are converted from an old format to a newer one).

The following table resumes the most common story file extensions.

| ext       | format                                          |
| :-------- | :---------------------------------------------- |
| `.a3c`    | [Alan 3] story file.                            |
| `.asl`    | Quest source code and story file.               |
| `.blb`    | Blorb wrapper, usually containing a story file. |
| `.cas`    | Compressed Quest story file.                    |
| `.floydc` | Floyd story file.                               |
| `.gam`    | [TADS 2] story file.                            |
| `.gblorb` | [Glulx] story file in a Blorb wrapper.          |
| `.glb`    | [Glulx] story file in a Blorb wrapper.          |
| `.hex`    | [Hugo] story file.                              |
| `.nx`     | Node-X story file.                              |
| `.t3`     | [TADS 3] story file.                            |
| `.t3x`    | [TADS 3] story file.                            |
| `.taf`    | [ADRIFT] story file.                            |
| `.tag`    | T.A.G. story file.                              |
| `.tws`    | [Twine] story file.                             |
| `.ulx`    | [Glulx] story file.                             |
| `.z1`     | Z-machine version 1 story file.                 |
| `.z2`     | Z-machine version 2 story file.                 |
| `.z3`     | Z-machine version 3 story file.                 |
| `.z4`     | Z-machine version 4 story file.                 |
| `.z5`     | Z-machine version 5 story file.                 |
| `.z6`     | Z-machine version 6 story file.                 |
| `.z7`     | Z-machine version 7 story file.                 |
| `.z8`     | Z-machine version 8 story file.                 |
| `.zblorb` | Z-machine story file in a Blorb wrapper.        |
| `.zlb`    | Z-machine story file in a Blorb wrapper.        |

## Source Files by Extensions

The following table resumes some common extensions used by IF authoring systems as source, headers or resource files. In some IF authoring systems, the source code file and the story file distributed for playing are one and the same.

| ext       | format                                           |
| :-------- | :-------------------------------------------     |
| `.a3r`    | [Alan 3] resource file.                          |
| `.acd`    | [Alan 2] source code file.                       |
| `.alr`    | [ADRIFT] Language Resource file.                 |
| `.asl`    | Quest source code and story file.                |
| `.i6t`    | [Inform 6] template used by [Inform 7] compiler. |
| `.i7x`    | [Inform 7] extension source code file.           |
| `.inf`    | [Inform 6] source code file.                     |
| `.inform` | [Inform 7] project folder.                       |
| `.jacl`   | JACL source code file.                           |
| `.ni`     | [Inform 7] source code.                          |
| `.t`      | [TADS] source code file.                         |
| `.tab`    | [T.A.B.] game datafile                           |
| `.zil`    | ZIL source code.                                 |

## Other IF File Extensions

The following table resumes some other common file extensions related to IF that don’t belong to any of the previous categories.

| ext    | format                           |
| :----- | :------------------------------- |
| `.sav` | Saved game file.                 |
| `.scr` | Transcript of a Z-Code gameplay. |
| `.t3v` | [TADS 3] saved game file.        |

## Virtual Machines

### Glulx

[Glulx]: #glulx

Glulx is A 32-Bit Virtual Machine for IF, created by Andrew Plotkin.

- [Glulx homepage](http://www.eblong.com/zarf/glulx/)
- [Glulx at IFWiki](http://www.ifwiki.org/index.php/Glulx)
- [Glulx at Wikipedia](https://en.wikipedia.org/wiki/Glulx)
- [IF Archive » Programming » Glulx](http://www.ifarchive.org/indexes/if-archiveXprogrammingXglulx.html)

#### Glulx VM interpreters

- [Glulxe](https://github.com/erkyrath/glulxe) — by Andrew Plotkin; written in C, hosted on GitHub.

More Glulx interpreters are listed at the IF Archive dedicated section:

- [IF Archive » Programming » Glulx » Interpreters](http://www.ifarchive.org/indexes/if-archiveXprogrammingXglulxXinterpretersXglulxe.html)

#### Glulx Manuals and References

- [The Game Author’s Guide to Glulx Inform](http://www.eblong.com/zarf/glulx/inform-guide.txt)
- [The Glulx Inform Technical Reference](http://www.eblong.com/zarf/glulx/technical.txt)

#### Glulx Tools

More Glulx tools are listed at the IF Archive dedicated section:

- [IF Archive » Programming » Programming » Glulx » Tools](http://www.ifarchive.org/indexes/if-archiveXprogrammingXglulxXtools.html)

# Collections

- [Interaction Fiction Database](http://www.ifdb.tads.org)

- [The Interaction Fiction Archive](http://www.ifarchive.org)

# Blogs

- [Planet IF](http://planet-if.com) — Aggregation of posts from 60+ IF blogs

- [Storycade](http://storycade.com)

- [Emily Short’s Interactive Storytelling](http://emshort.wordpress.com)

- [Inky Path](https://inkypath.wordpress.com/) — Discussion of IF from a literary perspective. Discontinued but the archive is still accessible.

- [Brass Lantern](http://brasslantern.org/)

-----

# Competitions & Awards

For more info, see:

- [IFWiki » Competitions]
- [WikiCAAD (ES) » Competiciones]

[IFWiki » Competitions]: http://www.ifwiki.org/index.php/Category:Competitions
[WikiCAAD (ES) » Competiciones]: http://wiki.caad.es/Categor%C3%ADa:Competiciones "Enciclopedia de la aventura conversacional hispana"

## Annual Competitions

- [The Interactive Fiction Competition (IFComp)](http://www.ifcomp.org) — since 1995.

- [Spring Thing Festival of Interactive Fiction](http://springthing.net) — since 2002.

## Annual Awards

- [The XYZZY Awards](http://xyzzyawards.org/) — since 1996.


-----

# History

## Books

- [Twisty Little Passages](http://nickm.com/twisty/)

## Documentaries

- [Get Lamp](http://www.getlamp.com)

-----

# IF Learning Resources

For more learning resources, see also:

- [Emily Short's Blog » Books and Other Resources](https://emshort.blog/how-to-play/writing-if/books-and-other-resources/ "Visit Emily Short's list of books and articles on her blog")

## Free eBooks

### IF History

- [Let's Tell a Story Together](http://maher.filfre.net/if-book/) — by Jimmy Maher, 2006. Readable online or downloadable in ePub or Mobipocket.
- [The Digital Antiquarian](https://www.filfre.net/the-digital-antiquarian-e-book-library/) — Jimmy Maher's blog articles downloadble as yearly volumes, in ePub or Mobipocket.

### IF Theory

- [IF Gems](http://davidfisher.info/if/gems/) — A selection of quotes from reviews of the [annual Interactive Fiction competition] (1995–2005), compiled by David Fisher; 183pp (PDF).

- [IF Theory Reader] — by Kevin Jackson-Mead & J. Robinson Wheeler, 2011; 438pp (PDF). Also available for purchase as paperback and [Kindle edition][IF Theory Reader Kindle].

[annual Interactive Fiction competition]: http://www.ifcomp.org/ "Visit the IFComp website"

[IF Theory Reader]: http://www.lulu.com/shop/kevin-jackson-mead-and-j-robinson-wheeler/if-theory-reader/ebook/product-17551190.html "Donwload 'IF Theory Reader' free PDF from Lulu.com"
[IF Theory Reader Kindle]: https://www.amazon.com/IF-Theory-Reader-Adventure-beyond-ebook/dp/B00JHCSU0Y/ref=sr_1_1?s=digital-text&ie=UTF8&qid=1522580829&sr=1-1 "Kindle edition of 'IF Theory Reader' on Amazon.com"

### Inform 6

[Inform 6 free eBooks]: #inform-6-1

- [The Inform Beginner’s Guide](http://inform-fiction.org/manual/about_ibg.html) — by Roger Firth and Sonja Kesserich, 2004; 284pp (PDF). Also available as paperback. Translations in other languages:
    + Italian » [Guida a Inform per Principianti](http://www.lulu.com/shop/autori-vari/guida-a-inform-per-principianti/ebook/product-17551755.html)

- [The Inform Designer’s Manual](http://inform-fiction.org/manual/about_dm4.html) (DM4) — by Graham Nelson, 2001; 572pp. Also available as paperback and [Microsoft CHM eBook](http://ifarchive.org/if-archive/infocom/compilers/inform6/manuals/designers_manual_4.chm).

### Inform 7

[Inform 7 free eBooks]: #inform-7-1

- [The Inform 7 Handbook](http://www.musicwords.net/if/i7hb.htm) — by Jim Aikin, 2015; 518pp.

### PAW

- [The PAW Programming Bible](https://gilsoftpawreservoir.wordpress.com/2013/07/29/feature-the-paw-programming-bible/) — by AAVV, 2014; 333pp.

## Commercial Books

### IF History

- [Twisty Little Passages](http://nickm.com/twisty/) — by Nick Montfort, 2005; 328pp, paperback or hardback.

### Inform 7

[Inform 7 commercial books]: #inform-7-2

- [Creating Interactive Fiction with Inform 7](http://inform7.textories.com/) — by Aaron A. Reed, 2010; 448 pp, paperback + eBook.

### Twine

[Twine commercial books]: #twine-1

- [Writing Interactive Fiction with Twine](http://www.melissafordauthor.com/writing-interactive-fiction-with-twine/) — by Melissa Ford, 2016; 432pp. Available in eBook or paperback.


## Tutorials

### IF Authoring Guides

- [The Craft of the Adventure](http://ifarchive.org/if-archive/info/Craft.Of.Adventure.pdf) (2nd Ed) — by Graham Nelson, 1997; 37pp, PDF. Five Articles on the Design of Adventure Games.
- [_The Craft of the Adventure_](http://inform-fiction.org/manual/html/ch8.html) (Ch.VIII of DM4) — by Graham Nelson, 2001. A chapter of _The Inform Designer's Manual_ dedicated to IF authoring guidelines.

- [Crimes Against Mimesis](https://web.archive.org/web/20091027084109/http://geocities.com/aetus_kane/writing/cam.html "Read 'Crimes Against Mimesis' on Wayback Machine") — by Roger Giner-Sorolla, 1996. ([ReoCities link](http://www.reocities.com/aetus_kane/writing/cam.html "Read 'Crimes Against Mimesis' on ReoCities"))

Tutorials by inki (Dan Shiovitz):

- [General Game-Design/Authoring Notes](http://inky.org/if/notes.html)
- [How to Program IF](http://inky.org/if/program-if.html)
- [How to Write a Great Game](http://inky.org/if/great-games.html)
- [Think Like a Player!](http://inky.org/if/think-player.html)

Tutorials by Emily Short:

- [Writing IF](https://emshort.blog/how-to-play/writing-if/)
- [Challenges of a Broad Geography](http://emshort.home.mindspring.com/Geography.html) (2001)
- [Writing in Collaboration with the System](https://emshort.blog/2014/10/29/writing-in-collaboration-with-the-system/) (2014)
- [Beyond Branching: Quality-Based, Salience-Based, and Waypoint Narrative Structures](https://emshort.blog/2016/04/12/beyond-branching-quality-based-and-salience-based-narrative-structures/) (2016)
- [Tightening the World-Plot Interface: or, Why I Am Obsessed With Conversation Models](https://emshort.blog/2015/05/24/framed-invisible-parties-and-the-world-plot-interface/) (2015)
- [Idea to Implementation](https://emshort.blog/2009/08/23/idea-to-implementation/) (2009)
- [Developing a Setting for Fantastical IF](http://www.brasslantern.org/writers/iftheory/setting.html) (2001)
- [Plot, scene by scene](https://emshort.blog/2008/05/04/plot-scene-by-scene/) (2008)
- [Scaffolding and Scene-based Design](https://emshort.blog/2008/08/28/scaffolding-and-scene-based-design/) (2008)
- [Preparing a game for testing](https://emshort.blog/2008/11/08/preparing-a-game-for-testing/) (2008)

Tutorials on Description:

- [Mapping the Tale: Scene Description in IF](http://raddial.com/if/theory/territory.html) — by J. Robinson Wheeler

Scott Kim "Puzzle Master" articles and resources on puzzles and puzzles-creation:

- [Scott Kim website homepage](http://www.scottkim.com/)
- [articles on game-design](http://www.scottkim.com.previewc40.carrierzone.com/thinkinggames/)

### Inform 7

[Inform 7 tutorials]: #inform-7-3

- [Inform 7 for Programmers](http://www.ifwiki.org/index.php/Inform_7_for_Programmers) — by Ron Newcomb, 2009 (`i7_5U92`); multipart tutorial at IFWiki (HTML).

- [Inform 7 Programmer's Manual](http://www.plover.net/~pscion/Inform%207%20for%20Programmers.pdf) — by Ron Newcomb, 2011 (`i7_6G60`); 81pp, PDF.

- [Welcome To Adventure: A Quick-Start Guide to Inform 7](http://www.sibylmoon.com/welcome-to-adventure/) — by Carolyn Vaneseltine, 2014; multipart tutorial (HTML).

- [Exercises in Generated Prose](https://emshort.blog/2009/06/24/exercises-in-generated-prose/) — by Emily Short, 2009; blog entry.


## Cheat Sheets and Reference Docs

### Inform 6

[Inform 6 Cheat Sheets]: #inform-6-2

- [Inform in four minutes](http://www.firthworks.com/roger/downloads/informqr.zip) — by Roger Firth, 2002; 4pp, PDF. A quick reference to the Inform language.
- [InfoLib at your fingertips](http://www.firthworks.com/roger/downloads/inflibqr.zip) — by Roger Firth, 2002; 6pp, PDF. A quick reference to the Inform Library.

### Inform 7

[Inform 7 Cheat Sheets]: #inform-7-4

- [The Chart of Rules](http://inform7.com/learn/documents/Rules%20Chart.pdf) —   Visual guide to Inform's rules and rulebooks (PDF).

-----

# IF for Teaching and Education

Interactive Fiction has been employed in the classroom as a teaching aid in various fields: reading, foreign languages, litterature, history, computer programming, game design, and new media theory.

## Online Resources

- [Teach with Inform](http://inform7.com/teach/) — Inform7’s website educational resources page.

- <http://inform7.com/news/category/education/> — Inform7 News Section, «Education» category. RSS Feed subscription available.

- [Gaming The Past](https://gamingthepast.net/) — A repository for theory, research , and implementations of simulation games for history education. Created and maintained by Jeremiah McCall

## Examples

- [Viking Studies Course Materials](http://public.gettysburg.edu/~cfee/courses/English4012001/topic3.htm) — Includes various IF story files (30+). [Gettysburg College](http://www.gettysburg.edu/) (Gettysburg, PA).

## Books

- [Gaming the Past: Using Video Games to Teach Secondary History](https://www.routledge.com/Gaming-the-Past-Using-Video-Games-to-Teach-Secondary-History/McCall/p/book/9780415887601) — by [Jeremiah McCall](https://en.wikipedia.org/wiki/Jeremiah_McCall). New York: Routledge, 2011. Available in paperback, hardback and digital editions ([Kindle](https://www.amazon.com/Gaming-Past-Using-Secondary-History-ebook/dp/B007NYFQUA/ref=mt_kindle?_encoding=UTF8&me=)).

## Whitepapers and Guides

- [Student-designed text-based simulation games for learning history: A practical approach to using Inform 7 in the history classroom](https://gamingthepast.net/theory-practice/my-work/mccall-informpaper/) — by Jeremiah McCall (CC BY-NC-SA 3.0 US).

## Articles and Academic Papers

- [Interactive Fiction: ‘New Literacy’ Learning Opportunities for Children](http://ldm.sagepub.com/content/3/4/519) — by Deborah Kozdras, Denise Marie Haunstetter, and James R. King (2006), E-Learning, 3(4), pp. 519-533.

- [Goethe’s “Elective Affinities” as E-Learning: Developing Exercises for German Classes in the Secondary School Level 2](http://inform7.com/teach/downloads/Goethe.pdf) — by Wiebke Schwelgengraber, Mario Donick, and Franziska Schonfeld, presented at the E-Learning Baltics 2009 Conference.

- [Mixing Story and Simulation in Interactive Narrative](http://www.aaai.org/Papers/AIIDE/2006/AIIDE06-037.pdf) — Mark O. Riedl, Andrew Stern, Don Dini.

-----

# Social Events

## Conferences

## Meetups

- [Museum of Art and Digital Entertainment’s Monthly Interactive Fiction Meetup](http://themade.org/events)

-----

# Digital Communities

## Newsgroups and Mailing Lists

### English

- [rec.arts.int-fiction](https://groups.google.com/forum/#!forum/rec.arts.int-fiction) (Google Groups) — Discussions about interactive fiction.
- [rec.games.int-fiction](https://groups.google.com/forum/#!forum/rec.games.int-fiction) (Google Groups) — All aspects of interactive fiction games.

### Italian

- [it.comp.giochi.avventure.testuali](https://groups.google.com/forum/#!forum/it.comp.giochi.avventure.testuali) (Google Groups)

## MUDs

### ifMUD

- http://ifmud.port4000.com/
- http://ifmud.port4000.com:4002/bui (web client)

Since 1997 the __ifMUD__ (_a MUD forever voyaging_) has been a gathering point for the IF community.


For more information, see also:

- [IFWiki » ifMUD]
- [Wikipedia » ifMUD]


[IFWiki » ifMUD]: http://www.ifwiki.org/index.php/IfMUD "Visit ifMUD page at IFWiki"
[Wikipedia » ifMUD]: https://en.wikipedia.org/wiki/IfMUD

