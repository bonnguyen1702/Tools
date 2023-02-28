#!/bin/bash
#### chưa hoàn thiện, ko dùng script này

secret_name="docker-image-pull-secret"

# Find namespaces with image pull secret
# ns_list=($(kubectl get secret  -A -o=jsonpath='{.items[*].metadata.namespace}' --field-selector metadata.name==$secret_name))
ns_list=($(kubectl get namespace))
cluster_name=($(kubectl config current-context))
secret_list=($(kubectl get secret  -A -o=jsonpath='{.items[*].metadata.name}'))
rm -rf $HOME/Desktop/$cluster_name
mkdir $HOME/Desktop/$cluster_name
# kubectl get deployments -A > $HOME/Desktop/$cluster_name/deployments.txt
# kubectl get pods -A > $HOME/Desktop/$cluster_name/pods.txt
# kubectl get service -A -o wide > $HOME/Desktop/$cluster_name/service.txt
# kubectl get ingress -A -o wide > $HOME/Desktop/$cluster_name/ingress.txt
# kubectl get nodes -A -o wide > $HOME/Desktop/$cluster_name/nodes.txt
# kubectl get secret -A > $HOME/Desktop/$cluster_name/secret_list.txt
# kubectl get configmap -A > $HOME/Desktop/$cluster_name/configmap_list.txt

# Verify secret with predefined condition - ending with fX19
for secret in ${secret_list[@]}; do
    # for secret in ${ns[@]}; do
    # # if [[ $(kubectl get secret $secret_name -n $ns -o=jsonpath={.data.'\.dockerconfigjson'}) =~ .*fX19$ ]]; then
    kubectl get secret -o yaml > $HOME/Desktop/$cluster_name/$secret-$ns.yaml
    #         done
done
