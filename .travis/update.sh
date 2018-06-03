#!/usr/bin/env bash
source .travis/func.sh
echo -e "\\n==> Updating packages\\n"
docker_exec "pacman -Syu --noconfirm"