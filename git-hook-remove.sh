#!/bin/bash

# "git-hook-remove.sh"        by Tristano Ajmone (CC0)       v1.0.0 | 2021/04/19
#===============================================================================
# Uninstalls the Git hook created by "git-hook-install.sh".
#-------------------------------------------------------------------------------
# Based on a script created by Alexander Bolli @SicroAtGit.
#===============================================================================

hookScript=pre-commit-validate.sh

cd .git/hooks/ || { echo 'Uninstallation failed!'; exit 1; }

# =====================
# 1. Delete Hook Script
# =====================
if [ -f $hookScript ] ; then
	rm $hookScript
fi

if ! [ -f pre-commit ] ; then
	exit
fi

# ===================================
# 2. Remove Hook Script from Git Hook
# ===================================
temp=$(mktemp)
grep -Fxv ".git/hooks/$hookScript" pre-commit > $temp
mv $temp pre-commit
