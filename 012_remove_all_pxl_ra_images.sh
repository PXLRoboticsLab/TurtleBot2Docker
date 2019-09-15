 docker image rm `docker image ls | grep pxl_ra | awk '{ print $1 }'`
