```
pacman-src compiles Arch GNU/Linux packages from source using the ABS
```
Usage
-----

```
pacman-src [OPTION] [PACKAGE]
```

### Options

Name | Description
---- | -----------
`-u, --update` | updates the cache
`-b. --build` | build-only, no installing
`-m, --cache` | use the cache to store the built packages
`-f, --force` | passes --force to pacman and makepkg
`-s, --skipchecks` | skips any integrity check(s)
`-n, --noconfirm` | passes --noconfirm to pacman and makepkg
`-t, --testing` | builds the latest version of the given package(s)
`-q, --quiet` | silent mode
`-Q, --search` | searches the given package(s), returns 0 when found
`--reset` | resets git repos from the cache
`--config=[FILE]` | uses configuration options from given config file
`--ignore-installed` | installs built packages, even if it's already installed
`--trunk` | uses trunk, does not use repos
`-l, --nocheck` | skips do_check function for given package(s)
`-c, --cleanbuild` | cleans build before building package
`-d, --dirty` | does not clean, even when build was successful
`-g, --ignore` | does not exit after error
`-x, --nowarn` | disables warning(s)
`--verbose` | shows debug data
`-h, --help` | displays this help and exit
`-v, --version` | displays version and exit

### Examples

Name | Description
---- | -----------
`pacman-src base` | (re)compiles all packages from base group
`pacman-src bash -n` | compiles and installs bash package without confirmation
