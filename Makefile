prefix=/usr/local
install:
	install -D -m=755 src/pacman-src "${prefix}/bin/pacman-src"
	install -D src/conf/pacman-src.conf "${prefix}/../etc/pacman-src.conf"
check:
	shellcheck src/pacman-src -x
