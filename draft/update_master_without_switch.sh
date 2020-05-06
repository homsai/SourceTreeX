#!/bin/bash 
##Load utils
script_name=$0
scriptFolder=$(dirname "$0")
source "$scriptFolder/utils/common_utils.sh"

##Parameters are not required

##Start
updateBranch master
echo "✅ Finished."