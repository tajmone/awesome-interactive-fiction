@ECHO OFF

REM ******************************************************************************
REM *                                                                            *
REM *                   README.md MARKDOWN CLEAN UP + AUTO-TOC                   *
REM *                                                                            *
REM ******************************************************************************
REM                               by Tristano Ajmone                              
REM ==============================================================================
REM | This batch file auto-cleans up the markdown source, and re-creates the TOC |
REM | of the README.md file residing in the same folder.                         |
REM | Either invoke it from CMD or double-click on its file icon.                |
REM | Requires Pandoc and gfmtoc to be installed on the host machine OS.         |
REM | -- Pandoc:                                                                 |
REM |    http://pandoc.org                                                       |
REM | -- gfmtoc (requires Node.js):                                              |
REM |    https://github.com/hail2u/node-gfmtoc                                   |
REM ==============================================================================
REM                             PUBLIC DOMAIN LICENSE                             
REM ==============================================================================
REM | This is free and unencumbered software released into the public domain.
REM | 
REM | Anyone is free to copy, modify, publish, use, compile, sell, or
REM | distribute this software, either in source code form or as a compiled
REM | binary, for any purpose, commercial or non-commercial, and by any
REM | means.
REM | 
REM | In jurisdictions that recognize copyright laws, the author or authors
REM | of this software dedicate any and all copyright interest in the
REM | software to the public domain. We make this dedication for the benefit
REM | of the public at large and to the detriment of our heirs and
REM | successors. We intend this dedication to be an overt act of
REM | relinquishment in perpetuity of all present and future rights to this
REM | software under copyright law.
REM | 
REM | THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
REM | EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
REM | MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
REM | IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
REM | OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
REM | ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
REM | OTHER DEALINGS IN THE SOFTWARE.
REM | 
REM | For more information, please refer to <http://unlicense.org/>
ECHO.
ECHO ==============================================================================
ECHO                     README.md MARKDOWN CLEAN UP + AUTO-TOC                    
ECHO.
ECHO ----------------------------{ v1.0 - 2016/11/07 }-----------------------------
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

REM ==============================================================================
REM                                Invoke "gfmtoc"                                
REM ==============================================================================
REM | Gfmtoc is a Node.js app that auto-generates a GitHub Flavour Markdown-Style |
REM | Table of Contents within the target markdown file.                          |
REM | Gfmtoc will look for the following HTML-comment tags for placing the TOC:   |
REM <!-- #toc -->
REM <!-- /toc -->

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
pandoc --smart --wrap=none --normalize -f markdown -t markdown -o "%TARGET%" "%TARGET%"
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
