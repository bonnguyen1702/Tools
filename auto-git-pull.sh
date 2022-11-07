#!/bin/bash
#this script will automatically trigger git pull only for git repo
#B1: Cài đặt shorcut <Ctrl+T> cho VS Code thực hiện mở terminal cho folder hiện tại
#B2: Thêm script này vào file .bashrc: "bash ~/Desktop/BashScriptTools/auto-git-pull.sh"

findgit=$(ls -a | grep -w .git)

if [[ $findgit == .git ]];    
    then git checkout master 
    git pull
    echo ">>>>>>>> SUCCESS PULLING NEW CODE <<<<<<<<"
fi

