svn_list() {
	local SFILE="$1/svn.list"
	BDIR=$(pwd)
	if test -s "$SFILE"
	then
		rm "$SFILE"	
	fi
	for repo in "$1"/repo/*
	do
		cd $repo
		svn list >> "$SFILE"
	done
	cd "$BDIR"
}
