#!/bin/bash

# script will exit as soon as a command fails
set -e 

# > /dev/null 2>&1: Hide both the output and any errors (doesn’t show anything to the user)
docker image inspect nginx:latest --format='{{.RepoTags}}' > /dev/null 2>&1