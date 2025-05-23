#!/bin/bash

set -e

docker image inspect alpine:latest --format='{{.RepoTags}}' > /dev/null 2>&1

docker image inspect python:3-alpine --format='{{.RepoTags}}' > /dev/null 2>&1

