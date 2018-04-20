prefix=/usr/local
install:
	mkdir -p "${prefix}/bin"
	cp pacman-src "${prefix}"/bin/pacman-src

