#!/usr/bin/env bash

set -o errexit
# set -o nounset

#Check Env Vars are set
if [ -z "${KUBE_SERVER}" ]; then
  echo "environment variable KUBE_SERVER should be defined"
  exit 1
fi
if [ -z "${KUBE_TOKEN}" ]; then
  echo 'environment variable KUBE_TOKEN should be defined'
  exit 1
fi
if [ -z "${KUBE_CLUSTER_NAME}" ]; then
  echo 'environment variable KUBE_CLUSTER_NAME should be defined'
  exit 1
fi
if [ -z "${KUBE_CERTIFICATE_AUTHORITY_DATA}" ]; then
  
  echo 'environment variable KUBE_CERTIFICATE_AUTHORITY_DATA should be defined'
  exit 1
fi

kubectl config set-cluster ${KUBE_CLUSTER_NAME} --server=${KUBE_SERVER}
kubectl config set clusters.${KUBE_CLUSTER_NAME}.certificate-authority-data ${KUBE_CERTIFICATE_AUTHORITY_DATA}
kubectl config set-credentials helm --token=${KUBE_TOKEN}
kubectl config set-context ${KUBE_CONTEXT} --cluster=${KUBE_CLUSTER_NAME} --user=helm
kubectl config use-context ${KUBE_CONTEXT}