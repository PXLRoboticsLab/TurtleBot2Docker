FROM pxl_ra_base_ubuntu16.04:latest

USER root

RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
RUN apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654 

# Add updated Gazebo ppa
RUN echo "deb http://packages.osrfoundation.org/gazebo/ubuntu-stable xenial main" > /etc/apt/sources.list.d/gazebo-stable.list
RUN wget http://packages.osrfoundation.org/gazebo.key -O - |  apt-key add -

RUN apt-get update \
        && apt-get upgrade -y \ 
        && apt-get install -y ros-kinetic-ros-base \
        && apt-get install -y python-rosinstall python-rosinstall-generator python-wstool build-essential \
        && rosdep init


RUN rm -rf /var/lib/apt/lists/* 

USER user
WORKDIR /home/user
RUN rosdep update \
        && echo "source /opt/ros/kinetic/setup.bash" >> /home/user/.bashrc

RUN mkdir -p Projects/catkin_ws/src 
RUN /bin/bash -c '. /opt/ros/kinetic/setup.bash; cd /home/user/Projects/catkin_ws; catkin_make'
RUN /bin/bash -c '. /opt/ros/kinetic/setup.bash; cd /home/user/Projects/catkin_ws; catkin_make'

RUN echo "source /home/user/Projects/catkin_ws/devel/setup.bash --extend" >> /home/user/.bashrc
