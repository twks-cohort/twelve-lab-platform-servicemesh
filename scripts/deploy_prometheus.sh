#!/usr/bin/env bash
#
# parameters
# $1 = cluster config to use
export CLUSTER=${1}
export ISTIO_VERSION=$(cat $CLUSTER.json | jq -r .istio_version)

# quickstart versions - not tuned for production performance or security
kubectl apply -f https://raw.githubusercontent.com/istio/istio/release-${ISTIO_VERSION:0:4}/samples/addons/prometheus.yaml
