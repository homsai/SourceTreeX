#!/bin/bash 
##Parameters are not required
##Load utils
script_name=$0
scriptFolder=$(dirname "$0")
source "$scriptFolder/utils/common_utils.sh"

function createTempCommit() {
	git add -A && git commit -m "This is a tmp commit made by $(getCurrentUserName) [Must not in master]."
}

createTempCommit
forceRefreshSourceTree
echo "✅ Temp commit has been created."
