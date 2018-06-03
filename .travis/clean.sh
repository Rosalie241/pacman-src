#!/usr/bin/env bash
source .travis/func.sh
echo -e "\\n==> Cleaning\\n"
docker rm $(docker ps -lq) > /dev/null