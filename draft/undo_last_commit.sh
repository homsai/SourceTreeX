#!/bin/bash
##Load utils
script_name=$0
scriptFolder=$(dirname "$0")
source "$scriptFolder/utils/common_utils.sh"

git reset --soft HEAD~1
forceRefreshSourceTree
echo "✅ Finished."
