#!/bin/bash 
function updateBranch() {
    if git show-branch remotes/origin/$1 &> /dev/null; then
		currentBranch=$(getCurrentBranch)
        echo "Update branch $1.[You are at branch $currentBranch]"
		if [ $1 == $currentBranch ]; then
			echo 'Update using [git pull --rebase]'
			git pull --rebase
		else
			echo 'Update using [git fetch origin $1:$1]'
			git fetch origin $1:$1
		fi
		echo "✅ The branch $1 has been updated"
    else
        echo "❌ Skip branch $1 since it doesn't exist."
    fi
}

function getCurrentBranchName(){
	echo $(git symbolic-ref HEAD | sed -e 's,.*/\(.*\),\1,')
}

function getCurrentBranch(){
	echo $(git symbolic-ref --short HEAD)
}

function forceRefreshSourceTree(){
	##may be there is a better one, but this is a good one - bit slow tho
	git fetch
}

function getCurrentUserName(){
	echo $(git config user.name)
}