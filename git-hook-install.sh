#!/bin/bash

# "git-hook-install.sh       by Tristano Ajmone (CC0)        v2.0.0 | 2021-05-17
#===============================================================================
# Install a client-side pre-commit Git hook and "pre-commit-validate.sh" script
# which are executed before each commit to ensure that all staged changes meet
# the EditorConfig code styles consistency conventions of the project.
#   https://editorconfig.org
# To run "validate.sh" you'll need to install the EClint validator tool:
#   https://www.npmjs.com/package/eclint
#-------------------------------------------------------------------------------
# Based on a script created by Alexander Bolli @SicroAtGit.
#===============================================================================

hookScript=pre-commit-validate.sh

# ================
# Custom Functions
# ================

function errorMsg() {
	echo -e "\033[31;1m\n~~~ ERROR! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
	echo -e "\033[31;1m$1"
	echo -e "\033[31;1m~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\033[0m"
}

function abortMsg() {
	echo -e "\033[31;1m\n/// Aborting Hook Installation ///\033[0m";
}

function donetMsg() {
	echo -e "\033[32;1m\n/// Git Hook Successfully Installed ///\033[0m"
}

# =================================
# 1. Check that EClint is installed
# =================================
if ! eclint --version > /dev/null 2>&1 ; then
	errorMsg "$(echo "In order to use this hook you need to install EClint (Node.js):\n" \
					"  https://www.npmjs.com/package/eclint")"
	abortMsg
	exit 1
fi

# ======================
# 2. Install Hook Script
# ======================

cd .git/hooks/ || {
	errorMsg "Command \"\033[33;1mcd .git/hooks/\033[31;1m\" failed!";
	abortMsg;
	exit 1;
}

# Delete previous hook versions:
# ------------------------------
if [ -f $hookScript ] ; then
	rm $hookScript
fi

# Create hook script:
# -------------------
cat >> $hookScript << EOF
#!/bin/bash

# "pre-commit-validate.sh      by Tristano Ajmone (CC0)      v2.0.0 | 2021/05/17
#===============================================================================
# This pre-commit Git hook will validate all staged files for EditorConfig code
# styles consistency using ECLint (Node.js):
#   https://www.npmjs.com/package/eclint
#===============================================================================

function BadFileWarn() {
	if ! [ "\$Failed" = true ] ; then
		echo -e "\nSome files failed EditorConfig validation:"
		echo "=========================================="
		Failed=true
	fi
	echo \${1}
}

# Check that EClint is installed:
# -------------------------------
if ! eclint --version > /dev/null 2>&1 ; then
	echo "In order to run this hook you need to install EClint (Node.js):"
	echo "   https://www.npmjs.com/package/eclint"
	exit 1
fi

# Change Internal Field Separator (\$IFS) to handle filenames with spaces:
IFS_COPY=\$IFS
IFS=\$(echo -en "\n\b")

stagedFiles=\$(git diff --name-only --cached --diff-filter=d)
for f in \$stagedFiles; do
	eclint check "\$f" > /dev/null 2>&1 || BadFileWarn "\$f"
done

IFS=\$IFS_COPY # Restore original IFS!

if [ "\$Failed" = true ] ; then
	exit 1
fi
EOF
chmod +x $hookScript

# =================
# 3. Setup Git Hook
# =================

if [ -f pre-commit ] && grep -Fxq ".git/hooks/$hookScript" pre-commit ; then
	donetMsg
	exit
fi

if ! [ -f pre-commit ] ; then
cat >> pre-commit << EOF
#!/bin/bash

EOF
fi

cat >> pre-commit << EOF
.git/hooks/$hookScript
EOF
chmod +x pre-commit

donetMsg
