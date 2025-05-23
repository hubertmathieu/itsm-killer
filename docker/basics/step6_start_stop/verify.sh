#!/bin/bash

set -e

docker inspect nginx_test --format={{.State.Status}} | grep running > /dev/null 2>&1