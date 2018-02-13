handle_args() {
	for arg in $@
	do
		case "$arg" in 
			-u|--update) svn_list "$PC_DIR"; svn_update "$PC_DIR"; exit;;
			-h|--help) print_help; exit;;
			-s|--skippgpcheck) makepkg_args+="--skippgpcheck";;
			*) packages+=" $arg ";;
		esac
	done
}
