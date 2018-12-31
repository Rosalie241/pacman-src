DESTDIR=
prefix="/usr/local"
VERSION="$(shell cat ./version)"
build: clean configure gen-man
configure:
	@mkdir -p bin bin/man bin/etc
	install -D -m=775 "src/pacman-src"	"bin/pacman-src"
	install -D "src/conf/pacman-src.conf"	"bin/etc/pacman-src.conf"
	sed -i "s/@VERSION@/$(VERSION)/g"		"bin/pacman-src"
gen-man:
	help2man --no-info ./bin/pacman-src >	"bin/man/pacman-src.1"
	gzip bin/man/pacman-src.1
install:
	install -D -m=755 bin/pacman-src	"${DESTDIR}${prefix}/bin/pacman-src"
	install -D bin/etc/pacman-src.conf 	"${DESTDIR}/etc/pacman-src.conf"
	install -D bin/man/pacman-src.1.gz 	"${DESTDIR}/usr/share/man/man1/pacman-src.1.gz"
check:
	shellcheck bin/pacman-src -x
test:
	bin/pacman-src -uq --reset
	bin/pacman-src -Qq base
	bin/pacman-src -Qq base base-devel
	bin/pacman-src -Qq bash base
clean:
	@rm -rf bin
