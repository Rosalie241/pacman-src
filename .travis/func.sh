#!/usr/bin/env bash
function docker_exec () {
	if [ ! "$container" ]
	then
		container="archlinux/build"
	fi
	docker run $container /bin/sh -c "$*; exit $?"
	export exitcode="$?"
	docker commit $(docker ps -lq | head -1) archlinux/build > /dev/null
	[[ "$exitcode" != "0" ]] && echo -e "\n==> ERROR: '$*' failed!" && exit $exitcode
}