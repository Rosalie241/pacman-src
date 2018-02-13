check_forpkg() {
	PKGNAME="$1"
	BDIR="$(pwd)"
	local PKG=false
	cd "$PC_DIR"/repo
	for repo in *
	do
		cd "$PC_DIR/repo/$repo"
		for package in $(cat $PC_DIR/svn.list)
		do
			if [ "$PKGNAME/" = "$package" ]
			then
				REPO="$PC_DIR/repo/$repo"
				PKG=true
			fi
		done
		cd "$PC_DIR"
	done
	if [ "$PKG" = "false" ]
	then
		echo "error: target not found: $PKGNAME"
		exit 1
	fi
	cd "$BDIR"
}
