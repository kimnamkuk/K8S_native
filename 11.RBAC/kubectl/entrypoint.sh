#!/bin/bash

function init_value()
{
  #env_cluster=$CLUSTER
  #env_ca_data=$CA_DATA
  #env_token_data=$TOKEN_DATA
  env_token_data=$(cat /var/run/secrets/kubernetes.io/serviceaccount/token)
  env_ca_data=$(cat /var/run/secrets/kubernetes.io/serviceaccount/ca.crt | base64 -w 0)
  env_cluster=$(echo $KUBERNETES_SERVICE_HOST:$KUBERNETES_PORT_443_TCP_PORT)
  
  echo $env_token_data
  echo $env_ca_data
  echo $env_cluster

}



#main
init_value 

# today

if [ -z $env_cluster ]
then
	echo "Need to get Cluster host to create kubeconfig";
	exit 1;
fi

cat > ~/.kube/config <<EOF
apiVersion: v1
kind: Config
clusters:
- name: cjcluster
  cluster:
    certificate-authority-data: $env_ca_data
    server: https://$env_cluster
contexts:
- name: cjcontext
  context:
    cluster: cjcluster 
    namespace: default
    user: test
current-context: cjcontext
users:
- name: test
  user:
    token: $env_token_data
EOF

sleep 5

echo "it's done for kubeconfig"

sleep INF


