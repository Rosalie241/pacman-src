prefix=/usr/local

script:
	echo "#!/usr/bin/env sh" > pacman-src
	cat src/functions/*/* >> pacman-src
	cat src/main >> pacman-src
	chmod +x pacman-src
clean:
	rm pacman-src
install:
	cp pacman-src "$prefix"/bin/pacman-src

