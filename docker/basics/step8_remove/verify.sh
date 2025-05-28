#!/bin/bash

set -e

CONTAINER_COUNT=$(docker ps -a | wc -l)

if [ $CONTAINER_COUNT -eq 1 ]; then
  exit 0
else
  exit 1
fi