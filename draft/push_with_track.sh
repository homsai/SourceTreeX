#!/bin/bash 
##Load utils
script_name=$0
scriptFolder=$(dirname "$0")
source "$scriptFolder/utils/common_utils.sh"

##Parameters are not required

##Start
currentBranch=$(getCurrentBranch)
echo "git push -u origin $currentBranch"
git push -u origin $currentBranch
echo "✅ Finished."
