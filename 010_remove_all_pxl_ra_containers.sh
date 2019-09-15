docker stop `docker ps -a | grep pxl_ra | awk '{ print $1 }'`
docker rm `docker ps -a | grep pxl_ra | awk '{ print $1 }'`
