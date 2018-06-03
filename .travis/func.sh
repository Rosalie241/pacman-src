#!/usr/bin/env bash
function docker_exec () {
	[ ! "$container" ] && container="archlinux/build"
	docker run $container /bin/sh -c "$*"
	docker commit $(docker ps -lq | head -1) archlinux/build > /dev/null
}