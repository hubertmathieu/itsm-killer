#!/bin/bash

set -e

IP_COUNT=$(cat /tmp/ip-add.txt | wc -w)

if [ $IP_COUNT -eq 3 ]; then
  exit 0
else
  exit 1
fi

