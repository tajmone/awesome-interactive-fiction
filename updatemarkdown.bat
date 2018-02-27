@ECHO OFF

::   ******************************************************************************
::   *                                                                            *
::   *                   README.md MARKDOWN CLEAN UP + AUTO-TOC                   *
::   *                                                                            *
::   ******************************************************************************
::                                 by Tristano Ajmone                              
::   ==============================================================================
::   | This batch file auto-cleans up the markdown source, and re-creates the TOC |
::   | of the README.md file residing in the same folder.                         |
::   | Either invoke it from CMD or double-click on its file icon.                |
::   | Requires Pandoc (>=2.0) and gfmtoc to be installed on the host machine OS. |
::   | -- Pandoc:                                                                 |
::   |    http://pandoc.org                                                       |
::   | -- gfmtoc (requires Node.js):                                              |
::   |    https://github.com/hail2u/node-gfmtoc                                   |
::   ==============================================================================
::                               PUBLIC DOMAIN LICENSE                             
::   ==============================================================================
::   | This is free and unencumbered software released into the public domain.
::   | 
::   | Anyone is free to copy, modify, publish, use, compile, sell, or
::   | distribute this software, either in source code form or as a compiled
::   | binary, for any purpose, commercial or non-commercial, and by any
::   | means.
::   | 
::   | In jurisdictions that recognize copyright laws, the author or authors
::   | of this software dedicate any and all copyright interest in the
::   | software to the public domain. We make this dedication for the benefit
::   | of the public at large and to the detriment of our heirs and
::   | successors. We intend this dedication to be an overt act of
::   | relinquishment in perpetuity of all present and future rights to this
::   | software under copyright law.
::   | 
::   | THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
::   | EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
::   | MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
::   | IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
::   | OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
::   | ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
::   | OTHER DEALINGS IN THE SOFTWARE.
::   | 
::   | For more information, please refer to <http://unlicense.org/>
ECHO.
ECHO ==============================================================================
ECHO                     README.md MARKDOWN CLEAN UP + AUTO-TOC                    
ECHO.
ECHO ----------------------------{ v2.0 - 2018/02/27 }-----------------------------
ECHO.
ECHO                               by Tristano Ajmone                              
ECHO ==============================================================================
SET TARGET=README.md
IF NOT EXIST "%TARGET%" (
    ECHO.
	ECHO ERROR -- File not found: "%TARGET%"
    ECHO.
	GOTO:PRINT_HELP
    )

::   ==============================================================================
::                                  Invoke "gfmtoc"                                
::   ==============================================================================
::   | Gfmtoc is a Node.js app that auto-generates a GitHub Flavour Markdown-Style |
::   | Table of Contents within the target markdown file.                          |
::   | Gfmtoc will look for the following HTML-comment tags for placing the TOC:   |
::   <!-- #toc -->
::   <!-- /toc -->

ECHO 1) Invoking gfmtoc on "%TARGET%" for TOC creation/update
CALL gfmtoc "%TARGET%"
IF ERRORLEVEL 1 (
    ECHO.
    ECHO    ERROR -- Something went wrong during gfmtoc invocation! 1>&2
    GOTO:PRINT_HELP
    )
ECHO    DONE!

ECHO.
ECHO 2) Invoking Pandoc on "%TARGET%" for markdown source cleanup
pandoc --wrap=none -f gfm+smart -t gfm -o "%TARGET%" "%TARGET%"
IF ERRORLEVEL 1 (
    ECHO.
    ECHO    ERROR -- Something went wrong during Pandoc invocation! 1>&2
    GOTO:PRINT_HELP
    )
ECHO    DONE!

EXIT /B 0

:PRINT_HELP
ECHO ==============================================================================
ECHO                          USAGE AND SETUP INSTRUCTIONS                         
ECHO ==============================================================================
ECHO This batch file auto-cleans up the markdown source and re-generates the TOC of
ECHO the "%TARGET%" file in this folder.
ECHO.
ECHO In order to work, this script requires Pandoc, Node.js and gfmtoc to be the OS:
ECHO -- Pandoc:  http://pandoc.org
ECHO -- gfmtoc:  https://github.com/hail2u/node-gfmtoc
ECHO -- Node.js: https://nodejs.org
EXIT /B 1

:: ==============================================================================
::                                Revision History                               
:: ==============================================================================
:: v2.0 - 2018/02/27 | pandoc v2.1.1 | gfmtoc v0.2.1 
::      - Changed to work with Pandoc v2:
::        - Use new GFM format and smart extension: "-f gfm+smart -t gfm"
::      - This is a backward compatibility-breaking change -- the old script will
::        not work with pandoc v2.x, the new script won't work with pandoc v1.x.
:: v1.0 - 2016/11/07 | pandoc v1.9.x | gfmtoc v0.2.1 
::      - First release.

