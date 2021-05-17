#!/bin/bash

# "validate.sh"    by Tristano Ajmone (public domain/CC0)    v2.0.0 | 2021-05-17
#-------------------------------------------------------------------------------
# Validate code style consistency of files tracked by the current repository via
# EditorConfig settings and the EClint validator tool:
#   https://editorconfig.org
#   https://www.npmjs.com/package/eclint
# Files which are not part of the repository are not validated -- e.g. files
# ignored by Git, inside Submodules, etc.
#-------------------------------------------------------------------------------
echo -e "\n\033[34;1m================================================"
echo -e "\033[33;1mValidating Code Styles via EditorConfig Settings"
echo -e "\033[34;1m================================================\033[0m"

function BadFileWarn() {
	if ! [ "$Failed" = true ] ; then
		echo -e "\033[31;1m~~~ ERROR! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~";
		echo -e "\033[31;1mThe following files didn't pass the validation test:\n\033[33;1m";
		Failed=true
	fi
	echo ${1}
}

# ==================
# Check Dependencies
# ==================
# Since the script might also be run locally by end users, check that EClint is
# installed on the user machine:

if eclint --version > /dev/null 2>&1 ; then
	echo -e "Using:"
	echo -e "\033[34;1m*\033[35m Node.js $(node -v)"
	echo -e "\033[34;1m*\033[35m EClint v$(eclint --version).\n\033[31;1m"
else
	echo -e "\033[31;1m\n~~~ ERROR! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
	echo -e "\033[31;1mIn order to run this script you need to install EClint (Node.js):\n"
	echo -e "\033[31;1m\thttps://www.npmjs.com/package/eclint"
	echo -e "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\033[0m"
	echo -e "If you've already installed Node.js on your machine, type:\n"
	echo -e "\033[33;1m\tnpm install -g eclint"
	echo -e "\033[31;1m\n/// Aborting All Tests ///\033[0m"
	exit 1
fi

# ==============
# Validate Files
# ==============

# Change Internal Field Separator ($IFS) to handle filenames with spaces:
IFS_COPY=$IFS
IFS=$(echo -en "\n\b")

RepoFiles=$( git ls-files --exclude-standard -co)
for f in $RepoFiles; do
	if [ -f "$f" ] ; then
		# echo "++ $f"
		eclint check "$f" > /dev/null 2>&1 || BadFileWarn "$f"
	# else
	# 	echo "[skip] $f"
	fi
done

IFS=$IFS_COPY # Restore original IFS!

if [ "$Failed" = true ] ; then
	echo -e "\n\033[31;1mRun ECLint locally for detailed information about the problems."
	echo -e "\033[31;1m~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
	echo -e "\033[31;1m/// Aborting All Tests ///\033[0m"
	exit 1
fi

echo -e "\033[32;1m/// Test Passed ///\033[0m"
exit

# EOF #
