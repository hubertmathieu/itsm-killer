#!/bin/bash

if docker image inspect nginx:latest --format='{{.RepoTags}}' > /dev/null 2>&1; then
  echo "✅ nginx image found. You have successfully pulled it."
  exit 0
else
  echo "❌ nginx image not found. Please run: docker pull docker.io/library/nginx"
  exit 1
fi