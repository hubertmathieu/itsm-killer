#!/bin/bash

set -e

[ "$(docker ps -q | wc -l)" -ge 1 ]