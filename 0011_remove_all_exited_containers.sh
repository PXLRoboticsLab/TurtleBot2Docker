docker rm `docker ps -a | grep Exited | awk '{ print $1 }'`
