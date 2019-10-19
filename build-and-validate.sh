#!/bin/bash

# "build-and-validate.sh"                                    v1.0.1 | 2019/10/20
#-------------------------------------------------------------------------------
# Runs all required tests and builds the project,
#-------------------------------------------------------------------------------
echo -e "\nFirst, let's validate all files in the commit or PR, as they are."
./validate.sh || exit 1
#-------------------------------------------------------------------------------
pushd docs_src > /dev/null 2>&1
./build.sh || exit 1
popd > /dev/null 2>&1
#-------------------------------------------------------------------------------
echo -e "\n\033[34;1m================================================"
echo -e "\033[33;1mValidating Again Code Styles of README.adoc"
echo -e "\033[34;1m================================================\033[0m"
echo "We need to validate again README.adoc via EClint, in case the commit or"
echo "PR didn't include its updated version after running the build script."
echo -e "This will prevent dragging unforseen errors in the repository.\n\033[31;1m"

# Validate README.adoc:
eclint check README.adoc || { echo -e "\033[31;1m/// Aborting All Tests ///\033[0m"; exit 1; }
echo -e "\033[32;1m/// Test Passed ///\033[0m"
exit
