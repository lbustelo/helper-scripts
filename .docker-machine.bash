function dm(){
	case "$1" in
		"env")
			eval "$(docker-machine env $2)"
			echo "Currenty active `docker-machine active`"
		;;
		"unset")
			unset ${!DOCKER_*}
		;;
		*)
			docker-machine $@
		;;
	esac
}
