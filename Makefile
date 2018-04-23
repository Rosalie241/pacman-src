DESTDIR="/home/tim"
prefix="/usr/local"
install:
	install -D -m=755 src/pacman-src "${DESTDIR}${prefix}/bin/pacman-src"
	install -D src/conf/pacman-src.conf "${DESTDIR}/etc/pacman-src.conf"
check:
	shellcheck src/pacman-src -x
