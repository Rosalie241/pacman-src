check_pkg svn makepkg pacman
if [ ! -z "XDG_CACHE_HOME" ]
then
	XDG_CACHE_HOME="$HOME"/.cache/
fi
PC_DIR="$XDG_CACHE_HOME/pacman-src"
if [ ! -d "$PC_DIR" ] || [ ! -d "$PC_DIR/repo/packages" ] || \
	[ ! -d "$PC_DIR/repo/community" ]
then	
	mkdir -p "$PC_DIR"/repo/
	svn_init "$PC_DIR"/repo/
	svn_list "$PC_DIR"
fi
handle_args "$@"
for package in $packages
do
	check_forpkg "$package"
	build_pkg "$package"
done
