#!/usr/bin/env bash
source .travis/func.sh
echo -e "\\n==> Version information\\n"
docker_exec "pacman-src --version"
[ "$exitcode" != "0" ] && exit $exitcode
echo -e "\\n==> Shellcheck\\n"
docker_exec 'shellcheck -x /usr/bin/pacman-src'
[ "$exitcode" != "0" ] && exit $exitcode