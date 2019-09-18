#!/bin/bash

vendor=`glxinfo | grep vendor | grep OpenGL | awk '{ print $4 }'`

if [ $vendor == "NVIDIA" ]; then
    (cd ./01a_nvidia_opengl_cuda; ./01_build_image.sh)
else
    (cd ./01b_opengl_direct_rendering; ./01_build_image.sh)
fi

(cd ./02_ros_kinetic_base; ./01_build_image.sh)
(cd ./03_ros_kinetic_desktop; ./01_build_image.sh)
(cd ./04_ros_kinetic_desktop_full; ./01_build_image.sh)
(cd ./05_turtlebot2; ./01_build_image.sh)
(cd ./06_turtlebot2_with_extra_packages; ./01_build_image.sh)
(cd ./07_ar_drone; ./01_build_image.sh)
