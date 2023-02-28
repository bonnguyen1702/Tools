#!/bin/bash
for i in /home/anhnguyen80/Desktop/source/*/.git; 
do ( echo $i; cd $i/..; git checkout master; git pull; ); done

#alias gpa="bash /home/anhnguyen80/Desktop/source/1-material-template/script/gitpull-all-v2.sh"
