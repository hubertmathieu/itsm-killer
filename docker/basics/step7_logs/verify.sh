#!/bin/bash

set -e 

grep "nginx" /tmp/nginx_logs.txt  > /dev/null 2>&1
docker inspect nginx_test --format={{.State.Status}} | grep running > /dev/null 2>&1