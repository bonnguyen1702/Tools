#!/bin/bash
#this script will automatically trigger git pull only for git repo
findgit=$(ls -a | grep -w .git)

if [[ $findgit == .git ]];    
    then git checkout master 
    git pull
    echo ">>>>>>>> SUCCESS PULLING NEW CODE <<<<<<<<"
fi

