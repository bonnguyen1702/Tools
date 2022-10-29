#!/bin/bash
for i in /home/anhnguyen80/Desktop/source/*/.git; do ( echo $i; cd $i/..; git pull; ); done