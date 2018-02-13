build_pkg() {
	build_dirs 
	BDIR="$(pwd)"
	if ! test -s "$PC_DIR"/build/"$PKGNAME"
	then
		cp -r "$REPO" "$PC_DIR"/build/"$PKGNAME"
		svn update "$PC_DIR/build/$PKGNAME" "$PKGNAME"
	fi
	cd "$PC_DIR/build/$PKGNAME"
	svn update . "$PKGNAME"
	cd "$PC_DIR/build/$PKGNAME/$PKGNAME/trunk"
	makepkg -csi $makepkg_args
	cd "$BDIR"
}
