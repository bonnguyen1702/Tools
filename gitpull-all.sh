#!/bin/bash
#Tool này chạy git pull ở local cho tất cả git repo trong /home/anhnguyen80/Desktop/source
for i in /home/anhnguyen80/Desktop/source/*/.git; do ( echo $i; cd $i/..; git pull; ); done
