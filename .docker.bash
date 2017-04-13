#alias dock-clean="docker ps -a | awk '{print $1}' | tail -n +2 | xargs docker rm -f"
#alias dock-clean="docker rm -f `docker ps -a | awk '{print $1}' | tail -n +2`"
#alias dock-clean="docker ps -a | awk '{print $1}' | tail -n +2 | xargs docker rm -f"
function dock-clean(){
	echo 'Removing all containers'
	docker rm -f `docker ps -a | awk '{print $1}' | tail -n +2`
	
	echo 'Removing untagged images'
	docker rmi `docker images | grep "<none>" | awk '{print $3}'`

	echo 'Removing volumes'
	docker volume rm $(docker volume ls -qf dangling=true)
}
