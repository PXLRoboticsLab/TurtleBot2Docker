#!/bin/bash

xhost +local:docker

# --device=/dev/video0:/dev/video0
# For non root usage:
# RUN sudo usermod -a -G video developer

docker run --privileged -it \
    -v `pwd`/src:/home/user/Projects/catkin_ws/src \
    --volume=/tmp/.X11-unix:/tmp/.X11-unix \
    --device=/dev/dri:/dev/dri \
    --env="DISPLAY=$DISPLAY" \
    -e "TERM=xterm-256color" \
    --cap-add SYS_ADMIN --device /dev/fuse \
    --name pxl_ra_base_ubuntu16 \
    pxl_ra_base_ubuntu16.04:latest
    px4_sitl_docker_opengl:latest \
    bash
