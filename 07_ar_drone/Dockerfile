FROM pxl_ra_ros_kinetic_desktop_full:latest

USER root

RUN apt-get update

RUN apt-get install -y binutils cpp cpp-5 dkms fakeroot gcc gcc-5 kmod libasan2 \
        libatomic1 libc-dev-bin libc6-dev libcc1-0 libcilkrts5 libfakeroot \
        libgcc-5-dev libgmp10 libgomp1 libisl15 libitm1 liblsan0 libmpc3 libmpfr4 \
        libmpx0 libquadmath0 libssl-dev libssl-doc libtsan0 libubsan0 libusb-1.0-0 \
        libusb-1.0-0-dev libusb-1.0-doc linux-headers-4.4.0-159 linux-headers-4.4.0-159-generic \
        linux-headers-generic linux-libc-dev make manpages manpages-dev menu patch zlib1g-dev

RUN apt-get install -y ros-kinetic-hector-* \
        && apt-get install -y ros-kinetic-ardrone-autonomy \
        && apt-get install -y python-pyside \
        && rm /etc/ros/rosdep/sources.list.d/20-default.list \
        && rosdep init

RUN rm -rf /var/lib/apt/lists/* 

USER user 
WORKDIR /home/user
RUN rosdep update 

RUN mkdir -p /home/user/Projects/ar_drone_ws/src 
WORKDIR /home/user/Projects/ar_drone_ws/src
RUN git clone https://github.com/angelsantamaria/tum_simulator.git
WORKDIR /home/user/Projects/ar_drone_ws/
RUN /bin/bash -c '. /opt/ros/kinetic/setup.bash; cd /home/user/Projects/ar_drone_ws; catkin_make'
RUN /bin/bash -c '. /opt/ros/kinetic/setup.bash; cd /home/user/Projects/ar_drone_ws; catkin_make'
RUN echo "source /home/user/Projects/ar_drone_ws/devel/setup.bash --extend" >> /home/user/.bashrc

WORKDIR /home/user
