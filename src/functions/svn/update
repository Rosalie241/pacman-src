svn_update() {
	BDIR="$(pwd)"
	for repo in "$1"/repo/*
	do
		cd "$repo"
		svn update
	done
	cd "$BDIR"
}
