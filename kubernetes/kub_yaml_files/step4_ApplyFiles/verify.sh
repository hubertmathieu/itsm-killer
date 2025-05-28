#!/bin/bash

set -e

kubectl get service demo-proxy
stat /tmp/demo-proxy.html