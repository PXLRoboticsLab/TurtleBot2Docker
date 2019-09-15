#!/bin/bash

xhost +local:docker

# --device=/dev/video0:/dev/video0
# For non root usage:
# RUN sudo usermod -a -G video developer

docker run -it \
    --device /dev/snd \
    --rm \
    --env="DISPLAY" \
    --env="QT_X11_NO_MITSHM=1" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    -env="XAUTHORITY=$XAUTH" \
    --volume="$XAUTH:$XAUTH" \
    --runtime=nvidia \
    pxl_ra_ros_kinetic_desktop_full:latest \
    bash
