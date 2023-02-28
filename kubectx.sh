#!/bin/bash
kubectx
echo
echo NAMESPACE: $(kubectl config view --minify -o jsonpath='{.contexts[*].context.namespace}')

#alias kx="bash /home/anhnguyen80/Desktop/source/1-material-template/script/kubectx.sh"
#this script will defaultly show what namespace you are in when using kubectx
