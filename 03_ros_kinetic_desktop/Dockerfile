FROM pxl_ra_ros_kinetic_base:latest

USER root

RUN apt-get update \
        && apt-get upgrade -y \ 
        && apt-get install -y ros-kinetic-desktop \
        && rm /etc/ros/rosdep/sources.list.d/20-default.list \
        && rosdep init


RUN rm -rf /var/lib/apt/lists/* 

USER user
WORKDIR /home/user
RUN rosdep update
