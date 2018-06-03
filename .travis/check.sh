#!/usr/bin/env bash
source .travis/func.sh
echo -e "\\n==> Version information\\n"
docker_exec "pacman-src --version"
echo -e "\\n==> Shellcheck\\n"
docker_exec "shellcheck -x /usr/bin/pacman-src"