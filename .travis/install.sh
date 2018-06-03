#!/usr/bin/env bash
source .travis/func.sh
echo -e "\\n==> Pulling docker image\\n"
docker pull archlinux/base
echo -e "\\n==> Updating packages in docker image\\n"
container=archlinux/base docker_exec "pacman -Syu --noconfirm"
echo -e "\\n==> Installing dependencies in docker image\\n"
docker_exec pacman -Sy base-devel git shellcheck help2man --noconfirm