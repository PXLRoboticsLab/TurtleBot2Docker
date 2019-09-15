FROM pxl_ra_ros_kinetic_desktop_full:latest

USER root

# Realsense fix for 4.16+ kernels
# Sources:
#  https://github.com/IntelRealSense/librealsense/issues/4781
#  https://github.com/icclab/rosdocked-irlab/commit/2eb4ce653a89bb2393b26f71bd654e9ad715600d

RUN apt-get update
# dependencies needed by librealsense. `deb -i` will not resolve these
RUN apt-get install -y binutils cpp cpp-5 dkms fakeroot gcc gcc-5 kmod libasan2 \
        libatomic1 libc-dev-bin libc6-dev libcc1-0 libcilkrts5 libfakeroot \
        libgcc-5-dev libgmp10 libgomp1 libisl15 libitm1 liblsan0 libmpc3 libmpfr4 \
        libmpx0 libquadmath0 libssl-dev libssl-doc libtsan0 libubsan0 libusb-1.0-0 \
        libusb-1.0-0-dev libusb-1.0-doc linux-headers-4.4.0-159 linux-headers-4.4.0-159-generic \
        linux-headers-generic linux-libc-dev make manpages manpages-dev menu patch zlib1g-dev

RUN apt-get install -y libssl-dev libssl-doc libusb-1.0-0 libusb-1.0-0-dev libusb-1.0-doc \
        linux-headers-4.4.0-159 linux-headers-4.4.0-159-generic linux-headers-generic zlib1g-dev

# modify librealsense deb (unpack, replace script, repack)
RUN apt-get download ros-kinetic-librealsense
RUN dpkg-deb -R ros-kinetic-librealsense*.deb ros-rslib/
#RUN wget https://gist.githubusercontent.com/dizz/404ef259a15e1410d692792da0c27a47/raw/3769e80a051b5f2ce2a08d4ee6f79c766724f495/postinst
COPY postinst postinst
RUN chmod +x postinst
RUN cp postinst ros-rslib/DEBIAN
RUN dpkg-deb -b ./ros-rslib/ ros-kinetic-librealsense_1.12.1-0xenial-20190830_icrlab_amd64.deb
# install container friendly libsense
RUN dpkg -i ros-kinetic-librealsense_1.12.1-0xenial-20190830_icrlab_amd64.deb
# lock from updates
RUN apt-mark hold ros-kinetic-librealsense

# Install turtlebot packages...
RUN set -x \
        && apt-get install -y ros-kinetic-turtlebot \                     
        # The turtlebot meta package provides all the basic drivers for running and using a TurtleBot.
        && apt-get install -y ros-kinetic-turtlebot-actions \             
        # turtlebot_actions provides several basic actionlib actions for the TurtleBot.
        && apt-get install -y ros-kinetic-turtlebot-apps \                
        # turtlebot_apps is a group of simple demos and exmaples to run on your TurtleBot to help you get started with ROS and TurtleBot.
	    && apt-get install -y ros-kinetic-turtlebot-bringup \             
        # turtlebot_bringup provides roslaunch scripts for starting the TurtleBot base functionality.
        && apt-get install -y ros-kinetic-turtlebot-calibration \         
        # turtlebot_calibration
        && apt-get install -y ros-kinetic-turtlebot-capabilities \        
        # Capabilities for the TurtleBot
        && apt-get install -y ros-kinetic-turtlebot-create \              
        # Catkin metapackage for the turtlebot_create stack
        && apt-get install -y ros-kinetic-turtlebot-dashboard \           
        # Launchers for the base-specific dashboards
        && apt-get install -y ros-kinetic-turtlebot-description \         
        # turtlebot_description provides a complete 3D model of the TurtleBot for simulation and visualization.
        && apt-get install -y ros-kinetic-turtlebot-follower \            
        # Follower for the turtlebot.
        && apt-get install -y ros-kinetic-turtlebot-gazebo \              
        # Gazebo launchers and worlds for TurtleBot simulation
        && apt-get install -y ros-kinetic-turtlebot-interactions \        
        # Catkin meta-package for turtlebot_interactions
        && apt-get install -y ros-kinetic-turtlebot-interactive-markers \ 
        # Interactive control for the TurtleBot using RViz and interactive markers
        && apt-get install -y ros-kinetic-turtlebot-msgs \                
        # Turtlebot messages, services and actions
        && apt-get install -y ros-kinetic-turtlebot-navigation \          
        # turtlebot_navigation
        && apt-get install -y ros-kinetic-turtlebot-rapps \               
        # The core set of turtlebot 'app manager' apps are defined in this package.
        && apt-get install -y ros-kinetic-turtlebot-rviz-launchers \      
        # Launchers for visualizing TurtleBot
        && apt-get install -y ros-kinetic-turtlebot-simulator \           
        # Catkin metapackage for the turtlebot_simulator stack
        && apt-get install -y ros-kinetic-turtlebot-stage \               
        # Stage version of turtlebot simulation.
        && apt-get install -y ros-kinetic-turtlebot-stdr \                
        # Stdr version of turtlebot simulation.
        && apt-get install -y ros-kinetic-turtlebot-teleop \              
        # Provides teleoperation using joysticks or keyboard.
        && rm /etc/ros/rosdep/sources.list.d/20-default.list \
        && rosdep init

RUN rm -rf /var/lib/apt/lists/* 

USER user
WORKDIR /home/user
RUN rosdep update 
