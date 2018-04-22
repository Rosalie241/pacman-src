prefix=/usr/local
install:
	install -D -m=755 src/pacman-src "${prefix}/bin/pacman-src"

