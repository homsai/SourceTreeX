#!/bin/bash 
##Load utils
script_name=$0
scriptFolder=$(dirname "$0")
source "$scriptFolder/utils/common_utils.sh"

##Parameters are not required

##Start
## it can be done by rebasing on remote master directly, but it'd good to update local master too -swang
updateBranch master
git rebase master
echo "✅ The branch has been rebased onto master"
