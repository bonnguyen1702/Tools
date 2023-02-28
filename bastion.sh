#!/bin/bash
#This script logins to bastion and allows to interact with GKE cluster
#Add this bash script to alias in .bashrc
#alias bastion="bash /home/anhnguyen80/Desktop/source/1-material-template/script/bastion.sh"

gnome-terminal --tab --maximize -e "bash -c 'export HTTPS_PROXY=http://localhost:8888;\
echo CLUSTER: $(kubectl config current-context);\
echo NAMESPACE: $(kubectl config view --minify -o jsonpath='{.contexts[*].context.namespace}');\
echo; bash'"

if [[ $1 == "prod" ]]; then
    gcloud compute --project "vinid-app-common-prod" ssh --zone "asia-east1-c" "bastion" --ssh-flag="-L 8888:127.0.0.1:8888"
else
    gcloud compute --project "vinid-app-common-dev" ssh --zone "asia-east1-c" "bastion" --ssh-flag="-L 8888:127.0.0.1:8888"
fi
