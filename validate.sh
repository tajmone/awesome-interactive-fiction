#!/bin/bash

# "validate.sh"                                              v1.0.2 | 2019/10/20
#-------------------------------------------------------------------------------
# Validate code style consistency in the repository via EditorConfig settings
# and the EClint validator tool:
# 	https://editorconfig.org
# 	https://www.npmjs.com/package/eclint
#-------------------------------------------------------------------------------
echo -e "\n\033[34;1m================================================"
echo -e "\033[33;1mValidating Code Styles via EditorConfig Settings"
echo -e "\033[34;1m================================================\033[0m"

# Check that EClint is installed on the user machine:
if eclint --version > /dev/null 2>&1 ; then
	echo -e "Using:"
	echo -e "\033[34;1m*\033[35m Node.js $(node -v)"
	echo -e "\033[34;1m*\033[35m EClint v$(eclint --version).\n\033[31;1m"

else
	echo -e "\033[31;1m~~~ ERROR! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
	echo -e "In order to run this script you need to install EClint (Node.js):\n"
	echo -e "\thttps://www.npmjs.com/package/eclint"
	echo -e "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\033[0m"
	echo -e "If you've already installed Node.js on your machine, type:\n"
	echo -e "\033[33;1m\tnpm install -g eclint"
	echo -e "\033[31;1m\n/// Aborting All Tests ///\033[0m"
	exit 1
fi

# Validate files:
eclint check || { echo -e "\033[31;1m/// Aborting All Tests ///\033[0m"; exit 1; }
echo -e "\033[32;1m/// Test Passed ///\033[0m"
exit
