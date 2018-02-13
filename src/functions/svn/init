svn_init() {
	BDIR="$(pwd)"
	cd "$1"
	svn checkout --depth=empty svn://svn.archlinux.org/packages
	svn checkout --depth=empty svn://svn.archlinux.org/community
	cd "$BDIR"
}
