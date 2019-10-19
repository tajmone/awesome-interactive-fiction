#!/bin/bash
source=awesome-if.asciidoc

# "docs_src/build.sh"                                        v1.0.1 | 2019/10/20
#-------------------------------------------------------------------------------
# Build:
# 1. The pre-processed single-file AsciiDoc README.adoc in the repository
#    root for previewing on GitHub.
# 2. The HTML file "docs/index.html", served on the WWW via GitHub Pages.
#-------------------------------------------------------------------------------
echo -e "\n\033[34;1m================================================"
echo -e "\033[33;1mBuilding the Awesome Interactive Fiction Project"
echo -e "\033[34;1m================================================\033[0m"

# Check that Asciidoctor is installed on the user machine:
if gem list '^asciidoctor$' -i > /dev/null 2>&1 ; then
	echo -e "Using:"
	echo -e "\033[34;1m*\033[35m $(ruby -v)"
	echo -e "\033[34;1m*\033[35m $(gem list '^asciidoctor$').\n"
else
	echo -e "\033[31;1m~~~ ERROR! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
	echo -e "In order to run this script you need to install Asciidoctor (Ruby):\n"
	echo -e "\thttps://asciidoctor.org"
	echo -e "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\033[0m"
	echo -e "If you've already installed Ruby on your machine, type:\n"
	echo -e "\033[33;1m\tgem install asciidoctor"
	echo -e "\033[31;1m\n/// Aborting All Tests ///\033[0m"
	exit 1
fi
#-------------------------------------------------------------------------------
echo -e "\033[36m================================================"
echo -e "\033[0m1/2 \033[36m|| \033[33mBuilding the HTML doc for GitHub Pages"
echo -e "\033[36m================================================\033[31;1m"

# Build the HTML doc served on the WWW via GitHub Pages:
if asciidoctor \
	--verbose \
	--warnings \
	--failure-level WARN \
	-a IsHTML \
	-a imagesdir \
	$source -o ../docs/index.html
	then
		echo -e "\033[32;1m(successful)\n"
	else
		echo -e "\033[31;1m\n/// Aborting All Tests ///\033[0m"
		exit 1
fi
#-------------------------------------------------------------------------------
echo -e "\033[36m================================================"
echo -e "\033[0m2/2 \033[36m|| \033[33mBuilding the Pre-Processed README.adoc"
echo -e "\033[36m================================================\033[31;1m"

# Build the preprocessed AsciiDoc version in the repo root:
ruby asciidoc-coalescer.rb \
	-a IsADoc \
	-a env-github \
	$source -o ../README.adoc 2> /tmp/Error
result=$(</tmp/Error)
if [ -z "$result" ]
	then # if $result is an empty string:
		echo -e "\033[32;1m(successful)\n"
	else # if $result contains any text:
		echo -e "\033[31;1m$result\n\n"
		echo -e "\033[31;1m/// Aborting All Tests ///\033[0m"
		exit 1
fi

echo -e "\033[32;1m/// Test Passed ///\033[0m"
exit
