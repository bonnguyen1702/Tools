#!/bin/bash
#this tool will remove secret named docker-image-pull-secret in each every namespace, with the condition that the secret contains .dockerconfigjson (value ended with fX19)

secret_name="docker-image-pull-secret"

# Find namespaces with image pull secret
ns_list=($(kubectl get secret  -A -o=jsonpath='{.items[*].metadata.namespace}' --field-selector metadata.name==$secret_name))

# Verify secret with predefined condition - ending with fX19
for ns in ${ns_list[@]}; do
    if [[ $(kubectl get secret $secret_name -n $ns -o=jsonpath={.data.'\.dockerconfigjson'}) =~ .*fX19$ ]]; then
        kubectl delete secret $secret_name -n $ns;
    else
        echo "Secret "$secret_name" in \"$ns\" namespace has wrong data format. Decode secret to get the corresponding Service Account!"
    fi
done
