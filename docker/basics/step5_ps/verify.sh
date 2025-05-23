#!/bin/bash

step -e 

docker inspect itsm_hello --format={{.Args}} > /dev/null 2>&1