check_pkg() {
	for pkg in $@
	do
		if ! command -v $pkg > /dev/null 2>&1
		then
			echo "Error: $pkg not installed"
		fi
	done
}
