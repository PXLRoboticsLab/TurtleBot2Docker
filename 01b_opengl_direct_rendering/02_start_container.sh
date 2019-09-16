#!/bin/bash

xhost +local:docker

# --device=/dev/video0:/dev/video0
# For non root usage:
# RUN sudo usermod -a -G video developer

docker run --privileged -it \
    --volume=/tmp/.X11-unix:/tmp/.X11-unix \
    --device=/dev/dri:/dev/dri \
    --env="DISPLAY=$DISPLAY" \
    -e "TERM=xterm-256color" \
    --cap-add SYS_ADMIN --device /dev/fuse \
    pxl_ra_base_ubuntu16.04:latest \
    bash
