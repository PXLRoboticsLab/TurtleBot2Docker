#!/bin/bash

xhost +local:docker

# --device=/dev/video0:/dev/video0
# For non root usage:
# RUN sudo usermod -a -G video developer

vendor=`glxinfo | grep vendor | grep OpenGL | awk '{ print $4 }'`

if [ $vendor == "NVIDIA" ]; then
    docker run -it \
        -v `pwd`/../turtlebot2_src:/home/user/Projects/catkin_ws/src \
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
else
    docker run --privileged -it \
        -v `pwd`/../turtlebot2_src:/home/user/Projects/catkin_ws/src \
        --volume=/tmp/.X11-unix:/tmp/.X11-unix \
        --device=/dev/dri:/dev/dri \
        --env="DISPLAY=$DISPLAY" \
        -e "TERM=xterm-256color" \
        --cap-add SYS_ADMIN --device /dev/fuse \
        pxl_ra_ros_kinetic_desktop_full:latest \
        bash
fi
