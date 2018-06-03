#!/usr/bin/env bash
source .travis/func.sh
echo -e "\\n==> Preparing build\\n"
docker_exec mkdir /root/build
docker_exec "cd /root/build && git clone https://github.com/tim241/pacman-src"
echo -e "\\n==> Build and install\\n"
docker_exec 'cd /root/build/pacman-src && make VERSION=$(git describe --always) && sudo make install prefix=/usr'
