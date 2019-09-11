FROM pxl_ra_opengl_cuda

USER root

RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
RUN apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654 

# Add updated Gazebo ppa
RUN echo "deb http://packages.osrfoundation.org/gazebo/ubuntu-stable xenial main" > /etc/apt/sources.list.d/gazebo-stable.list
RUN wget http://packages.osrfoundation.org/gazebo.key -O - |  apt-key add -

RUN apt-get update \
        && apt-get upgrade -y \ 
        && apt-get install -y ros-kinetic-desktop-full \
        && apt-get install -y python-rosinstall python-rosinstall-generator python-wstool build-essential \
        && rosdep init

RUN set -x \
        && apt-get install -y ros-kinetic-turtlebot \ 
        # The turtlebot meta package provides all the basic drivers for running and using a TurtleBot.
        && apt-get install -y ros-kinetic-turtlebot-actions \ 
 	 	 # turtlebot_actions provides several basic actionlib actions for the TurtleBot.
        && apt-get install -y ros-kinetic-turtlebot-apps \ 
 	 	 # turtlebot_apps is a group of simple demos and exmaples to run on your TurtleBot to help you get started with ROS and TurtleBot.
        && apt-get install -y ros-kinetic-turtlebot-bringup \
 	 	 # turtlebot_bringup provides roslaunch scripts for starting the TurtleBot base functionality.
        && apt-get install -y ros-kinetic-turtlebot-calibration  \
 	 	 # turtlebot_calibration
        && apt-get install -y ros-kinetic-turtlebot-capabilities  \
 	 	 # Capabilities for the TurtleBot
        && apt-get install -y ros-kinetic-turtlebot-create  \
 	 	 # Catkin metapackage for the turtlebot_create stack
        && apt-get install -y ros-kinetic-turtlebot-dashboard  \
 	 	 # Launchers for the base-specific dashboards
        && apt-get install -y ros-kinetic-turtlebot-description  \
 	 	 # turtlebot_description provides a complete 3D model of the TurtleBot for simulation and visualization.
        && apt-get install -y ros-kinetic-turtlebot-follower  \
 	 	 # Follower for the turtlebot.
        && apt-get install -y ros-kinetic-turtlebot-gazebo  \
 	 	 # Gazebo launchers and worlds for TurtleBot simulation
        && apt-get install -y ros-kinetic-turtlebot-interactions  \
 	 	 # Catkin meta-package for turtlebot_interactions
        && apt-get install -y ros-kinetic-turtlebot-interactive-markers  \
 	 	 # Interactive control for the TurtleBot using RViz and interactive markers
        && apt-get install -y ros-kinetic-turtlebot-msgs  \
 	 	 # Turtlebot messages, services and actions
        && apt-get install -y ros-kinetic-turtlebot-navigation  \
 	 	 # turtlebot_navigation
        && apt-get install -y ros-kinetic-turtlebot-rapps  \
 	 	 # The core set of turtlebot 'app manager' apps are defined in this package.
        && apt-get install -y ros-kinetic-turtlebot-rviz-launchers  \
 	 	 # Launchers for visualizing TurtleBot
        && apt-get install -y ros-kinetic-turtlebot-simulator  \
 	 	 # Catkin metapackage for the turtlebot_simulator stack
        && apt-get install -y ros-kinetic-turtlebot-stage  \
 	 	 # Stage version of turtlebot simulation.
        && apt-get install -y ros-kinetic-turtlebot-stdr  \
 	 	 # Stdr version of turtlebot simulation.
        && apt-get install -y ros-kinetic-turtlebot-teleop  \
 	 	 # Provides teleoperation using joysticks or keyboard.
        && apt-get install -y ros-viz  \
 	 	 # Python Robot OS viz metapackage	\
        && apt-get install -y ros-kinetic-amcl				\
        && apt-get install -y ros-kinetic-angles				\
        && apt-get install -y ros-kinetic-ar-track-alvar			\
        && apt-get install -y ros-kinetic-ar-track-alvar-msgs		\
        && apt-get install -y ros-kinetic-asmach				\
        && apt-get install -y ros-kinetic-asmach-tutorials			\
        && apt-get install -y ros-kinetic-astra-camera			\
        && apt-get install -y ros-kinetic-astra-launch			\
        && apt-get install -y ros-kinetic-assisted-teleop			\
        && apt-get install -y ros-kinetic-axcli				\
        && apt-get install -y ros-kinetic-axis-camera			\
        && apt-get install -y ros-kinetic-bagger				\
        && apt-get install -y ros-kinetic-bond				\
        && apt-get install -y ros-kinetic-bondcpp				\
        && apt-get install -y ros-kinetic-bondpy				\
        && apt-get install -y ros-kinetic-calibration  \
 	 	 # Provides a toolchain running through the robot calibration process.
        && apt-get install -y ros-kinetic-calibration-estimation  \
 	 	 # Runs an optimization to estimate the a robot's kinematic parameters.
        && apt-get install -y ros-kinetic-calibration-launch  \
 	 	 # This package contains a collection of launch files that can be helpful in configuring the calibration stack to run on your robot.
        && apt-get install -y ros-kinetic-calibration-msgs  \
 	 	 # This package defines messages for storing calibration samples to be used in full robot calibration procedures.
        && apt-get install -y ros-kinetic-calibration-setup-helper  \
 	 	 # This package contains a script to generate calibration launch and configurationfiles for your robot.
        && apt-get install -y ros-kinetic-camera-calibration  \
 	 	 # camera_calibration allows easy calibration of monocular or stereo cameras using a checkerboard calibration target.
        && apt-get install -y ros-kinetic-camera-calibration-parsers  \
 	 	 # camera_calibration_parsers contains routines for reading and writing camera calibration parameters.
        && apt-get install -y ros-kinetic-capabilities  \
 	 	 # Package which implements capabilities, including code to parse capability interface specs, to parse capability provider specs, and implement the capability server.
        && apt-get install -y ros-kinetic-cartesian-msgs \ 
 	 	 # Stream cartesian commands
        && apt-get install -y ros-kinetic-cartographer  \
 	 	 # Cartographer is a system that provides real-time simultaneous localization and mapping (SLAM) in 2D and 3D across multiple platforms and sensor configurations.
        && apt-get install -y ros-kinetic-cartographer-ros  \
 	 	 # Cartographer is a system that provides real-time simultaneous localization and mapping (SLAM) in 2D and 3D across multiple platforms and sensor configurations.
        && apt-get install -y ros-kinetic-cartographer-ros-msgs  \
 	 	 # ROS messages for the cartographer_ros package.
        && apt-get install -y ros-kinetic-cartographer-rviz  \
 	 	 # Cartographer is a system that provides real-time simultaneous localization and mapping (SLAM) in 2D and 3D across multiple platforms and sensor configurations.
        && apt-get install -y ros-kinetic-catch-ros  \
 	 	 # ROS integration for the Catch unit test framework
        && apt-get install -y ros-kinetic-checkerboard-detector  \
 	 	 # Uses opencv to find checkboards and compute their 6D poses with respect to the image.
        && apt-get install -y ros-kinetic-cl-transforms-stamped  \
 	 	 # Implementation of TF datatypes
        && apt-get install -y ros-kinetic-cl-urdf  \
 	 	 # cl_urdf
        && apt-get install -y ros-kinetic-class-loader  \
 	 	 # The class_loader package is a ROS-independent package for loading plugins during runtime and the foundation of the higher level ROS &quot;pluginlib&quot; library.
        && apt-get install -y ros-kinetic-clear-costmap-recovery  \
 	 	 # This package provides a recovery behavior for the navigation stack that attempts to clear space by reverting the costmaps used by the navigation stack to the static map outside of a given area.
        && apt-get install -y ros-kinetic-click  \
 	 	 # Python composable command line utility http://click.pocoo.org/
        && apt-get install -y ros-kinetic-clock-relay  \
 	 	 # Specialization of message_relay for clock
        && apt-get install -y ros-kinetic-cmd-vel-smoother  \
 	 	 # The cmd_vel_smoother package
        && apt-get install -y ros-kinetic-common-msgs  \
 	 	 # common_msgs contains messages that are widely used by other ROS packages.
        && apt-get install -y ros-kinetic-common-tutorials  \
 	 	 # Metapackage that contains common tutorials
        && apt-get install -y ros-kinetic-compressed-depth-image-transport  \
 	 	 # Compressed_depth_image_transport provides a plugin to image_transport for transparently sending depth images (raw, floating-point) using PNG compression.
        && apt-get install -y ros-kinetic-compressed-image-transport  \
 	 	 # Compressed_image_transport provides a plugin to image_transport for transparently sending images encoded as JPEG or PNG.
        && apt-get install -y ros-kinetic-concert-msgs  \
 	 	 # Shared communication types for the concert framework.
        && apt-get install -y ros-kinetic-concert-service-msgs  \
 	 	 # Messages used by official rocon services.
        && apt-get install -y ros-kinetic-concert-workflow-engine-msgs  \
 	 	 # Messages used by workflow engine
        && apt-get install -y ros-kinetic-contact-states-observer  \
 	 	 # The contact_states_observer package
        && apt-get install -y ros-kinetic-control-msgs  \
 	 	 # control_msgs contains base messages and actions useful for controlling robots.
        && apt-get install -y ros-kinetic-control-toolbox  \
 	 	 # The control toolbox contains modules that are useful across all controllers.
        && apt-get install -y ros-kinetic-controller-interface  \
 	 	 # Interface base class for controllers
        && apt-get install -y ros-kinetic-controller-manager  \
 	 	 # The controller manager.
        && apt-get install -y ros-kinetic-controller-manager-msgs  \
 	 	 # Messages and services for the controller manager.
        && apt-get install -y ros-kinetic-controller-manager-tests  \
 	 	 # controller_manager_tests
        && apt-get install -y ros-kinetic-convex-decomposition  \
 	 	 # Convex Decomposition Tool for Robot Model
        && apt-get install -y ros-kinetic-cost-map  \
 	 	 # Meta-package for the universal cost map library.
        && apt-get install -y ros-kinetic-cost-map-core  \
 	 	 # Cost maps, following the style of ethz-asl's grid_map library.
        && apt-get install -y ros-kinetic-cost-map-cv  \
 	 	 # Conversions between cost_maps and opencv images.
        && apt-get install -y ros-kinetic-cost-map-demos \  
 	 	 # Demonstrations for cost maps.
        && apt-get install -y ros-kinetic-cost-map-msgs  \
 	 	 # Definition of cost map messages (related to the grid map message type).
        && apt-get install -y ros-kinetic-cost-map-ros  \
 	 	 # Cost maps, following the style of ethz-asl's grid_map library.
        && apt-get install -y ros-kinetic-cost-map-visualisations  \
 	 	 # Visualisation tools for cost maps.
        && apt-get install -y ros-kinetic-costmap-2d  \
 	 	 # This package provides an implementation of a 2D costmap that takes in sensor data from the world, builds a 2D or 3D occupancy grid of the data (depending on whether a voxel based implementation is used), and inflates costs in a 2D costmap based on the occupancy grid and a user specified inflation radius.
        && apt-get install -y ros-kinetic-costmap-converter  \
 	 	 # A ros package that includes plugins and nodes to convert occupied costmap2d cells to primitive types.
        && apt-get install -y ros-kinetic-costmap-cspace  \
 	 	 # 3-dof configuration space costmap package
        && apt-get install -y ros-kinetic-costmap-cspace-msgs  \
 	 	 # Message definitions for costmap_cspace package
        && apt-get install -y ros-kinetic-costmap-prohibition-layer  \
 	 	 # ROS-Package that implements a costmap layer to add prohibited areas to the costmap-2D by a user configuration.
        && apt-get install -y ros-kinetic-costmap-queue  \
 	 	 # Tool for iterating through the cells of a costmap to find the closest distance to a subset of cells.
        && apt-get install -y ros-kinetic-cpp-common  \
 	 	 # cpp_common contains C++ code for doing things that are not necessarily ROS related, but are useful for multiple packages.
        && apt-get install -y ros-kinetic-cpr-multimaster-tools  \
 	 	 # Multi-master tools for configuration and message relaying
        && apt-get install -y ros-kinetic-create-dashboard  \
 	 	 # The Create dashboard is a RQT-based plug-in for visualising data from the Create and giving easy access to basic functionalities.
        && apt-get install -y ros-kinetic-create-description \ 
 	 	 # Model description for the iRobot Create
        && apt-get install -y ros-kinetic-create-driver  \
 	 	 # Driver for iRobot Create and Roomba This is a generic driver for iRobot Create that currently holds implementations for Turtlebot and Roomba.
        && apt-get install -y ros-kinetic-create-node  \
 	 	 # iRobot Create ROS driver node ROS bindings for the Create/Roomba driver.
        && apt-get install -y ros-kinetic-criutils  \
 	 	 # The criutils package
        && apt-get install -y ros-kinetic-cv-bridge  \
 	 	 # This contains CvBridge, which converts between ROS Image messages and OpenCV images.
        && apt-get install -y ros-kinetic-cv-camera  \
 	 	 # cv_camera uses OpenCV capture object to capture camera image.
        && apt-get install -y ros-kinetic-darknet-ros-msgs  \
 	 	 # Darknet is an open source neural network framework that runs on CPU and GPU.
        && apt-get install -y ros-kinetic-dataflow-lite  \
 	 	 # Light version of dataflow libraries
        && apt-get install -y ros-kinetic-dbw-mkz-joystick-demo  \
 	 	 # Demonstration of drive-by-wire with joystick
        && apt-get install -y ros-kinetic-dbw-mkz-msgs  \
 	 	 # Drive-by-wire messages for the Lincoln MKZ
        && apt-get install -y ros-kinetic-dbw-mkz-twist-controller  \
 	 	 # Twist (speed and angular rate) controller for brake/throttle/steering
        && apt-get install -y ros-kinetic-ddynamic-reconfigure  \
 	 	 # The ddynamic_reconfigure package
        && apt-get install -y ros-kinetic-ddynamic-reconfigure-python  \
 	 	 # The ddynamic_reconfigure_python package contains a class to instantiate dynamic reconfigure servers on the fly registering variables
        && apt-get install -y ros-kinetic-declination  \
 	 	 # Computes magnetic compass offset from NavSatFix, and provides nodes to apply this offset to various standard messages.
        && apt-get install -y ros-kinetic-default-cfg-fkie  \
 	 	 # The configuration node loads a given launch configuration and offers services to list or start the contained nodes.
        && apt-get install -y ros-kinetic-dense-laser-assembler  \
 	 	 # Stores streaming data from a laser sensor in a dense representation.
        && apt-get install -y ros-kinetic-depth-image-proc  \
 	 	 # Contains nodelets for processing depth images such as those produced by OpenNI camera.
        && apt-get install -y ros-kinetic-depthcloud-encoder  \
 	 	 # Point Cloud Encoder for Web-Based Streaming
        && apt-get install -y ros-kinetic-depthimage-to-laserscan  \
 	 	 # depthimage_to_laserscan
        && apt-get install -y ros-kinetic-derived-object-msgs  \
 	 	 # Abstracted Messages from Perception Modalities
        && apt-get install -y ros-kinetic-diagnostic-aggregator \ 
 	 	 # diagnostic_aggregator
        && apt-get install -y ros-kinetic-diagnostic-analysis  \
 	 	 # The diagnostic_analysis package can convert a log of diagnostics data into a series of CSV files.
        && apt-get install -y ros-kinetic-diagnostic-common-diagnostics  \
 	 	 # diagnostic_common_diagnostics
        && apt-get install -y ros-kinetic-diagnostic-msgs  \
 	 	 # This package holds the diagnostic messages which provide the standardized interface for the diagnostic and runtime monitoring systems in ROS.
        && apt-get install -y ros-kinetic-diagnostic-updater  \
 	 	 # diagnostic_updater contains tools for easily updating diagnostics.
        && apt-get install -y ros-kinetic-diagnostics  \
 	 	 # diagnostics
        && apt-get install -y ros-kinetic-diff-drive-controller  \
 	 	 # Controller for a differential drive mobile base.
        && apt-get install -y ros-kinetic-distance-map  \
 	 	 # The distance_map metapackage
        && apt-get install -y ros-kinetic-distance-map-core  \
 	 	 # The distance_map_core package.
        && apt-get install -y ros-kinetic-distance-map-deadreck  \
 	 	 # Node package of the map_distance project.
        && apt-get install -y ros-kinetic-distance-map-msgs  \
 	 	 # Definition of the distance map message type.
        && apt-get install -y ros-kinetic-distance-map-node  \
 	 	 # Node package of the map_distance project.
        && apt-get install -y ros-kinetic-distance-map-opencv  \
 	 	 # Node package of the map_distance project.
        && apt-get install -y ros-kinetic-distance-map-rviz  \
 	 	 # Rviz plugin for the visualization of ditance maps.
        && apt-get install -y ros-kinetic-distance-map-tools  \
 	 	 # Node package of the map_distance project.
        && apt-get install -y ros-kinetic-dlux-global-planner  \
 	 	 # Plugin based global planner implementing the nav_core2::GlobalPlanner interface.
        && apt-get install -y ros-kinetic-dlux-plugins  \
 	 	 # Implementation of dlux_global_planner plugin interfaces.
        && apt-get install -y ros-kinetic-dnn-detect  \
 	 	 # DNN based detection
        && apt-get install -y ros-kinetic-dockeros  \
 	 	 # Simply running ros nodes in docker containers on remote robots.
        && apt-get install -y ros-kinetic-downward  \
 	 	 # fast downward: PDDL Planner (http://www.fast-downward.org)
        && apt-get install -y ros-kinetic-easy-markers  \
 	 	 # Python library to assist in publishing markers easily
        && apt-get install -y ros-kinetic-eigen-conversions  \
 	 	 # Conversion functions between:  
 	 	 # Eigen and KDL  
 	 	 # Eigen and geometry_msgs.
        && apt-get install -y ros-kinetic-eigen-stl-containers  \
 	 	 # This package provides a set of typedef's that allow using Eigen datatypes in STL containers
        && apt-get install -y ros-kinetic-eigen-typekit  \
 	 	 # An Orocos typekit for Eigen types.
        && apt-get install -y ros-kinetic-eigenpy  \
 	 	 # Bindings between Numpy and Eigen using Boost.Python  
 	 	 # wrapped for catkin.
        && apt-get install -y ros-kinetic-face-detector  \
 	 	 # Face detection in images.
        && apt-get install -y ros-kinetic-ff  \
 	 	 # ff: pddl planner.
        && apt-get install -y ros-kinetic-ffha  \
 	 	 # ffha: PDDL Planner (http://ipc.informatik.uni-freiburg.de)
        && apt-get install -y ros-kinetic-fiducial-msgs  \
 	 	 # Package containing message definitions for fiducials
        && apt-get install -y ros-kinetic-fiducial-slam  \
 	 	 # ROS node to build a 3D map of fiducials and estimate robot pose from fiducial transforms
        && apt-get install -y ros-kinetic-fiducials  \
 	 	 # Localization using fiducial markers
        && apt-get install -y ros-kinetic-file-management  \
 	 	 # AWS CloudWatch management library used to manage offline files.
        && apt-get install -y ros-kinetic-filters  \
 	 	 # This library provides a standardized interface for processing data as a sequence of filters.
        && apt-get install -y ros-kinetic-find-object-2d  \
 	 	 # The find_object_2d package
        && apt-get install -y ros-kinetic-flask-cors  \
 	 	 # Cross Origin Resource Sharing ( CORS ) support for Flask
        && apt-get install -y ros-kinetic-flask-reverse-proxy  \
 	 	 # A Flask &quot;extension&quot; for applications in a reverse proxy not at the root.
        && apt-get install -y ros-kinetic-flatbuffers  \
 	 	 # Google flatbuffers.
        && apt-get install -y ros-kinetic-forward-command-controller  \
 	 	 # forward_command_controller
        && apt-get install -y ros-kinetic-generic-throttle  \
 	 	 # This package provides a throttle for ROS topics
        && apt-get install -y ros-kinetic-geographic-info  \
 	 	 # Geographic information metapackage.
        && apt-get install -y ros-kinetic-geographic-msgs  \
 	 	 # ROS messages for Geographic Information Systems.
        && apt-get install -y ros-kinetic-geometric-shapes  \
 	 	 # This package contains generic definitions of geometric shapes and bodies.
        && apt-get install -y ros-kinetic-geometry  \
 	 	 # A metapackage for geometry library suite.
        && apt-get install -y ros-kinetic-geometry-msgs  \
 	 	 # geometry_msgs provides messages for common geometric primitives such as points, vectors, and poses.
        && apt-get install -y ros-kinetic-geometry-tutorials  \
 	 	 # Metapackage of geometry tutorials ROS.
        && apt-get install -y ros-kinetic-geometry2  \
 	 	 # A metapackage to bring in the default packages second generation Transform Library in ros, tf2.
        && apt-get install -y ros-kinetic-gl-dependency  \
 	 	 # This encapsulates the GL dependency for a specific ROS distribution and its Qt version
        && apt-get install -y ros-kinetic-glkh-solver  \
 	 	 # ROS package for solving the Generalized Traveling Salesman Problem using the Lin–Kernighan heuristic.
        && apt-get install -y ros-kinetic-global-planner  \
 	 	 # A path planner library and node.
        && apt-get install -y ros-kinetic-global-planner-tests  \
 	 	 # A collection of tests for checking the validity and completeness of global planners.
        && apt-get install -y ros-kinetic-gmapping  \
 	 	 # This package contains a ROS wrapper for OpenSlam's Gmapping.
        && apt-get install -y ros-kinetic-gmplot  \
 	 	 # ROS wrapping of gmplot library
        && apt-get install -y ros-kinetic-gmplot-msgs  \
 	 	 # Message definitions for gmplot ROS wrapper
        && apt-get install -y ros-kinetic-gmplot-ros  \
 	 	 # Metapackage for gmplot_ros
        && apt-get install -y ros-kinetic-goal-passer  \
 	 	 # A global planner plugin for move_base that simply passes the target pose on as a global plan.
        && apt-get install -y ros-kinetic-gps-common  \
 	 	 # GPS messages and common routines for use in GPS drivers
        && apt-get install -y ros-kinetic-gps-goal  \
 	 	 # Set a ROS navigation goal using latitude and longitude.
        && apt-get install -y ros-kinetic-gps-umd  \
 	 	 # gps_umd metapackage
        && apt-get install -y ros-kinetic-gpsd-client  \
 	 	 # connects to a GPSd server and broadcasts GPS fixes using the NavSatFix message
        && apt-get install -y ros-kinetic-graph-msgs  \
 	 	 # ROS messages for publishing graphs of different data types
        && apt-get install -y ros-kinetic-grasping-msgs  \
 	 	 # Messages for describing objects and how to grasp them.
        && apt-get install -y ros-kinetic-grid-map  \
 	 	 # Meta-package for the universal grid map library.
        && apt-get install -y ros-kinetic-grid-map-core  \
 	 	 # Universal grid map library to manage two-dimensional grid maps with multiple data layers.
        && apt-get install -y ros-kinetic-grid-map-costmap-2d  \
 	 	 # Interface for grid maps to the costmap_2d format.
        && apt-get install -y ros-kinetic-grid-map-cv  \
 	 	 # Conversions between grid maps and OpenCV images.
        && apt-get install -y ros-kinetic-grid-map-demos  \
 	 	 # Demo nodes to demonstrate the usage of the grid map library.
        && apt-get install -y ros-kinetic-grid-map-filters  \
 	 	 # Processing grid maps as a sequence of ROS filters.
        && apt-get install -y ros-kinetic-grid-map-loader  \
 	 	 # Loading and publishing grid maps from bag files.
        && apt-get install -y ros-kinetic-grid-map-msgs  \
 	 	 # Definition of the multi-layered grid map message type.
        && apt-get install -y ros-kinetic-grid-map-octomap  \
 	 	 # Conversions between grid maps and OctoMap types.
        && apt-get install -y ros-kinetic-grid-map-pcl  \
 	 	 # Conversions between grid maps and Point Cloud Library (PCL) types.
        && apt-get install -y ros-kinetic-grid-map-ros  \
 	 	 # ROS interface for the grid map library to manage two-dimensional grid maps with multiple data layers.
        && apt-get install -y ros-kinetic-grid-map-rviz-plugin  \
 	 	 # RViz plugin for displaying grid map messages.
        && apt-get install -y ros-kinetic-grid-map-sdf  \
 	 	 # Generates signed distance fields from grid maps.
        && apt-get install -y ros-kinetic-grid-map-visualization  \
 	 	 # Configurable tool to visualize grid maps in RViz.
        && apt-get install -y ros-kinetic-gridmap-2d  \
 	 	 # gridmap_2d  
 	 	 # a simple 2D gridmap structure, based on OpenCV's cv::Mat
        && apt-get install -y ros-kinetic-h264-encoder-core  \
 	 	 # Common base code for ROS1/ROS2 H264 encoder node
        && apt-get install -y ros-kinetic-h264-video-encoder  \
 	 	 # ROS1 H264 encoder node
        && apt-get install -y ros-kinetic-health-metric-collector  \
 	 	 # The health_metric_collector package
        && apt-get install -y ros-kinetic-image-cb-detector  \
 	 	 # Provide a node that extracts checkerboard corners from ROS images.
        && apt-get install -y ros-kinetic-image-common  \
 	 	 # Common code for working with images in ROS.
        && apt-get install -y ros-kinetic-image-exposure-msgs  \
 	 	 # Messages related to the Point Grey camera driver.
        && apt-get install -y ros-kinetic-image-geometry  \
 	 	 # `image_geometry` contains C++ and Python libraries for interpreting images geometrically.
        && apt-get install -y ros-kinetic-image-overlay-scale-and-compass  \
 	 	 # Add an indication of scale and compass to images.
        && apt-get install -y ros-kinetic-image-pipeline  \
 	 	 # image_pipeline fills the gap between getting raw images from a camera driver and higher-level vision processing.
        && apt-get install -y ros-kinetic-image-proc  \
 	 	 # Single image rectification and color processing.
        && apt-get install -y ros-kinetic-image-publisher  \
 	 	 # Contains a node publish an image stream from single image file or avi motion file.
        && apt-get install -y ros-kinetic-image-recognition  \
 	 	 # The image_recognition package
        && apt-get install -y ros-kinetic-image-recognition-msgs  \
 	 	 # The image_recognition_msgs package
        && apt-get install -y ros-kinetic-image-recognition-rqt  \
 	 	 # The image_recognition_rqt package
        && apt-get install -y ros-kinetic-image-recognition-util  \
 	 	 # The image_recognition_util package
        && apt-get install -y ros-kinetic-image-rotate  \
 	 	 # Contains a node that rotates an image stream in a way that minimizes the angle between a vector in some arbitrary frame and a vector in the camera frame.
        && apt-get install -y ros-kinetic-image-stream  \
 	 	 # rosweb plugin to serve images as streams (MJPEG, Theora, FLV, etc)
        && apt-get install -y ros-kinetic-image-transport  \
 	 	 # image_transport should always be used to subscribe to and publish images.
        && apt-get install -y ros-kinetic-image-transport-plugins  \
 	 	 # A set of plugins for publishing and subscribing to sensor_msgs/Image topics in representations other than raw pixel data.
        && apt-get install -y ros-kinetic-image-view  \
 	 	 # A simple viewer for ROS image topics.
        && apt-get install -y ros-kinetic-image-view2  \
 	 	 # A simple viewer for ROS image topics with draw-on features
        && apt-get install -y ros-kinetic-imagesift  \
 	 	 # For every image, computes its sift features and send a new message with the image, its intrinsic parameters, and the features.
        && apt-get install -y ros-kinetic-imu-compass  \
 	 	 # Node to combine IMU data (accelerometers and gyroscopes) with Compass data (magnetometers) for a cleaner reading of a Vehicles Heading
        && apt-get install -y ros-kinetic-imu-complementary-filter  \
 	 	 # Filter which fuses angular velocities, accelerations, and (optionally) magnetic readings from a generic IMU device into a quaternion to represent the orientation of the device wrt the global frame.
        && apt-get install -y ros-kinetic-imu-filter-madgwick  \
 	 	 # Filter which fuses angular velocities, accelerations, and (optionally) magnetic readings from a generic IMU device into an orientation.
        && apt-get install -y ros-kinetic-imu-monitor  \
 	 	 # This package contains a single node that monitors the drift of the IMU gyroscopes.
        && apt-get install -y ros-kinetic-imu-pipeline  \
 	 	 # imu_pipeline
        && apt-get install -y ros-kinetic-imu-processors  \
 	 	 # Processors for sensor_msgs::Imu data
        && apt-get install -y ros-kinetic-imu-sensor-controller  \
 	 	 # Controller to publish state of IMU sensors
        && apt-get install -y ros-kinetic-imu-tools  \
 	 	 # Various tools for IMU devices
        && apt-get install -y ros-kinetic-imu-transformer  \
 	 	 # Node/nodelet combination to transform sensor_msgs::Imu data from one frame into another.
        && apt-get install -y ros-kinetic-indoor-localization  \
 	 	 # The indoor_localization package
        && apt-get install -y ros-kinetic-indoor-positioning  \
 	 	 # This is a ROS package for the metraTec Indoor Positioning System.
        && apt-get install -y ros-kinetic-joy  \
 	 	 # ROS driver for a generic Linux joystick.
        && apt-get install -y ros-kinetic-joy-listener  \
 	 	 # Translates joy msgs
        && apt-get install -y ros-kinetic-joy-mouse  \
 	 	 # The joy_mouse package
        && apt-get install -y ros-kinetic-joy-teleop  \
 	 	 # A (to be) generic joystick interface to control a robot
        && apt-get install -y ros-kinetic-joystick-drivers  \
 	 	 # This metapackage depends on packages for interfacing common joysticks and human input devices with ROS.
        && apt-get install -y ros-kinetic-joystick-interrupt  \
 	 	 # Interrupt cmd_vel by joystick input
        && apt-get install -y ros-kinetic-jpeg-streamer  \
 	 	 # tools for streaming JPEG-formatted CompressedImage topics over HTTP
        && apt-get install -y ros-kinetic-json-msgs  \
 	 	 # JSON ROS message
        && apt-get install -y ros-kinetic-json-transport  \
 	 	 # JSON transport for ROS
        && apt-get install -y ros-kinetic-kalman-filter  \
 	 	 # Simple Kalman Filter in Python
        && apt-get install -y ros-kinetic-key-teleop  \
 	 	 # A text-based interface to send a robot movement commands
        && apt-get install -y ros-kinetic-kobuki  \
 	 	 # Software for Kobuki, Yujin Robot's mobile research base.
        && apt-get install -y ros-kinetic-kobuki-auto-docking  \
 	 	 # Automatic docking for Kobuki: Users owning a docking station for Kobuki can use this tool to let Kobuki find its nest autonomously.
        && apt-get install -y ros-kinetic-kobuki-bumper2pc  \
 	 	 # Bumper/cliff to pointcloud nodelet: Publish bumpers and cliff sensors events as points in a pointcloud, so navistack can use them for poor-man navigation.
        && apt-get install -y ros-kinetic-kobuki-capabilities  \
 	 	 # Kobuki's capabilities
        && apt-get install -y ros-kinetic-kobuki-controller-tutorial  \
 	 	 # Code for the Kobuki controller tutorial.
        && apt-get install -y ros-kinetic-kobuki-core  \
 	 	 # Non-ROS software for Kobuki, Yujin Robot's mobile research base.
        && apt-get install -y ros-kinetic-kobuki-dashboard  \
 	 	 # The Kobuki dashboard is a RQT-based plug-in for visualising data from Kobuki and giving easy access to basic functionalities.
        && apt-get install -y ros-kinetic-kobuki-description  \
 	 	 # Description of the Kobuki model.
        && apt-get install -y ros-kinetic-kobuki-desktop  \
 	 	 # Visualisation and simulation tools for Kobuki
        && apt-get install -y ros-kinetic-kobuki-dock-drive  \
 	 	 # Dock driving library for Kobuki.
        && apt-get install -y ros-kinetic-kobuki-driver  \
 	 	 # C++ driver library for Kobuki: Pure C++ driver library for Kobuki.
        && apt-get install -y ros-kinetic-kobuki-ftdi  \
 	 	 # Utilities for flashing and enabling Kobuki's USB connection.
        && apt-get install -y ros-kinetic-kobuki-gazebo  \
 	 	 # Kobuki simulation for Gazebo
        && apt-get install -y ros-kinetic-kobuki-gazebo-plugins  \
 	 	 # Kobuki-specific ROS plugins for Gazebo
        && apt-get install -y ros-kinetic-kobuki-keyop  \
 	 	 # Keyboard teleoperation for Kobuki: relays commands from a keyboard to Kobuki.
        && apt-get install -y ros-kinetic-kobuki-msgs  \
 	 	 # Kobuki message and service types: custom messages and services for Kobuki packages.
        && apt-get install -y ros-kinetic-kobuki-node  \
 	 	 # ROS nodelet for Kobuki: ROS wrapper for the Kobuki driver.
        && apt-get install -y ros-kinetic-kobuki-qtestsuite  \
 	 	 # An rqt plugin that provides a graphical, interactive testsuite for Kobuki.
        && apt-get install -y ros-kinetic-kobuki-random-walker  \
 	 	 # Random walker app for Kobuki
        && apt-get install -y ros-kinetic-kobuki-rapps  \
 	 	 # Robot apps for Kobuki
        && apt-get install -y ros-kinetic-kobuki-rviz-launchers  \
 	 	 # The kobuki_rviz_launchers package
        && apt-get install -y ros-kinetic-kobuki-safety-controller  \
 	 	 # A controller ensuring the safe operation of Kobuki.
        && apt-get install -y ros-kinetic-kobuki-soft  \
 	 	 # Soft kobuki impementation meta package
        && apt-get install -y ros-kinetic-kobuki-softapps  \
 	 	 # The kobuki_softapps package
        && apt-get install -y ros-kinetic-kobuki-softnode  \
 	 	 # ROS nodelet for fake Kobuki.
        && apt-get install -y ros-kinetic-kobuki-testsuite  \
 	 	 # Kobuki test suite: this package provides tools to thoroughly test Kobuki's hardware.
        && apt-get install -y ros-kinetic-laser-assembler  \
 	 	 # Provides nodes to assemble point clouds from either LaserScan or PointCloud messages
        && apt-get install -y ros-kinetic-laser-cb-detector  \
 	 	 # Extracts checkerboard corners from a dense laser snapshot.
        && apt-get install -y ros-kinetic-laser-filtering  \
 	 	 # ROS Libraries for filtering specific kinds of laser scans
        && apt-get install -y ros-kinetic-laser-filters  \
 	 	 # Assorted filters designed to operate on 2D planar laser scanners, which use the sensor_msgs/LaserScan type.
        && apt-get install -y ros-kinetic-laser-filters-jsk-patch  \
 	 	 # laser_filters_jsk_patch
        && apt-get install -y ros-kinetic-laser-geometry  \
 	 	 # This package contains a class for converting from a 2D laser scan as defined by sensor_msgs/LaserScan into a point cloud as defined by sensor_msgs/PointCloud or sensor_msgs/PointCloud2.
        && apt-get install -y ros-kinetic-laser-joint-processor  \
 	 	 # Computes joint angles associated with a specific set of detected checkerboard corners.
        && apt-get install -y ros-kinetic-laser-joint-projector  \
 	 	 # Projects laser readings into a point cloud, based on a set of recorded joint angles This package is experimental and unstable.
        && apt-get install -y ros-kinetic-laser-ortho-projector  \
 	 	 # The laser_ortho_projector package calculates orthogonal projections of LaserScan messages.
        && apt-get install -y ros-kinetic-laser-pipeline  \
 	 	 # Meta-package of libraries for processing laser data, including converting laser data into 3D representations.
        && apt-get install -y ros-kinetic-laser-proc  \
 	 	 # laser_proc
        && apt-get install -y ros-kinetic-laser-scan-densifier  \
 	 	 # The laser_scan_densifier takes in a LaserScan message and densifies it.
        && apt-get install -y ros-kinetic-laser-scan-matcher  \
 	 	 # An incremental laser scan matcher, using Andrea Censi's Canonical Scan Matcher (CSM) implementation.
        && apt-get install -y ros-kinetic-laser-scan-publisher-tutorial  \
 	 	 # The laser_scan_publisher_tutorial package
        && apt-get install -y ros-kinetic-laser-scan-sparsifier  \
 	 	 # The laser_scan_sparsifier takes in a LaserScan message and sparsifies it.
        && apt-get install -y ros-kinetic-laser-scan-splitter  \
 	 	 # The laser_scan_splitter takes in a LaserScan message and splits it into a number of other LaserScan messages.
        && apt-get install -y ros-kinetic-laser-tilt-controller-filter  \
 	 	 # laser_tilt_controller_filter
        && apt-get install -y ros-kinetic-launch-tools  \
 	 	 # ROS tools and scripts related to launchfiles
        && apt-get install -y ros-kinetic-launchman  \
 	 	 # Launch Manager
        && apt-get install -y ros-kinetic-libg2o  \
 	 	 # The libg2o library from http://openslam.org/g2o.html
        && apt-get install -y ros-kinetic-libqt-concurrent  \
 	 	 # libqt-concurrent metapackage supporting qt4 and qt5
        && apt-get install -y ros-kinetic-libqt-core  \
 	 	 # libqt-core metapackage supporting qt4 and qt5
        && apt-get install -y ros-kinetic-libqt-dev  \
 	 	 # libqt-dev metapackage supporting qt4 and qt5
        && apt-get install -y ros-kinetic-libqt-gui  \
 	 	 # libqt-gui metapackage supporting qt4 and qt5
        && apt-get install -y ros-kinetic-libqt-network  \
 	 	 # libqt-network metapackage supporting qt4 and qt5
        && apt-get install -y ros-kinetic-libqt-opengl  \
 	 	 # libqt-opengl metapackage supporting qt4 and qt5
        && apt-get install -y ros-kinetic-libqt-opengl-dev  \
 	 	 # libqt-opengl metapackage supporting qt4 and qt5
        && apt-get install -y ros-kinetic-libqt-svg-dev  \
 	 	 # libqt-svg-dev metapackage supporting qt4 and qt5
        && apt-get install -y ros-kinetic-libqt-widgets  \
 	 	 # libqt-widgets metapackage supporting qt4 and qt5
        && apt-get install -y ros-kinetic-librealsense  \
 	 	 # Library for capturing data from the Intel(R) RealSense(TM) F200, SR300, R200, LR200 and ZR300 cameras.
        && apt-get install -y ros-kinetic-librealsense2  \
 	 	 # Doron Hirshberg Library for capturing data from the Intel(R) RealSense(TM) SR300, D400 Depth cameras and T2xx Tracking devices.
        && apt-get install -y ros-kinetic-libreflexxestype2  \
 	 	 # Package with ReflexxesTypeII implementation and header files
        && apt-get install -y ros-kinetic-librviz-tutorial  \
 	 	 # Tutorial showing how to compile your own C++ program with RViz displays and features.
        && apt-get install -y ros-kinetic-libsensors-monitor  \
 	 	 # A ROS node for using libsensors to provide diagnostics information about the sensors on a computer system.
        && apt-get install -y ros-kinetic-libsiftfast  \
 	 	 # Library to compute SIFT features
        && apt-get install -y ros-kinetic-lockfree  \
 	 	 # The lockfree package contains lock-free data structures for use in multithreaded programming.
        && apt-get install -y ros-kinetic-log-server  \
 	 	 # The log_server package
        && apt-get install -y ros-kinetic-log4cpp  \
 	 	 # Log4cpp maintained by Orocos developers This version of log4cpp deviates from the official release by adding custom category factories.
        && apt-get install -y ros-kinetic-look-at-pose  \
 	 	 # Rotate camera to look at a given pose.
        && apt-get install -y ros-kinetic-lpg-planner  \
 	 	 # lpg_planner: LPGL Planner (http://zeus.ing.unibs.it/lpg/)
        && apt-get install -y ros-kinetic-map-laser  \
 	 	 # Filters a laser scan to remove points that are in the current static map
        && apt-get install -y ros-kinetic-map-msgs \ 
 	 	 # This package defines messages commonly used in mapping packages.
        && apt-get install -y ros-kinetic-map-organizer  \
 	 	 # Layered costmap organizer package
        && apt-get install -y ros-kinetic-map-organizer-msgs  \
 	 	 # Message definitions for map_organizer_msgs package
        && apt-get install -y ros-kinetic-map-server  \
 	 	 # map_server provides the map_server ROS Node, which offers map data as a ROS Service.
        && apt-get install -y ros-kinetic-mapviz  \
 	 	 # mapviz
        && apt-get install -y ros-kinetic-mapviz-plugins  \
 	 	 # Common plugins for the Mapviz visualization tool
        && apt-get install -y ros-kinetic-marker-msgs  \
 	 	 # The marker_msgs package contains messages usable to setup a marker/fiducial system.
        && apt-get install -y ros-kinetic-marker-rviz-plugin  \
 	 	 # The marker_rviz_plugin package contains RViz plugins to visualize messages of the marker_msgs package using RViz.
        && apt-get install -y ros-kinetic-marshmallow  \
 	 	 # A lightweight library for converting complex objects to and from simple Python datatypes.
        && apt-get install -y ros-kinetic-mcl-3dl  \
 	 	 # 3-D/6-DOF localization for mobile robots with 3-D LIDAR(s)
        && apt-get install -y ros-kinetic-mcl-3dl-msgs  \
 	 	 # The mcl_3dl message definition package
        && apt-get install -y ros-kinetic-message-filters  \
 	 	 # A set of message filters which take in messages and may output those messages at a later time, based on the conditions that filter needs met.
        && apt-get install -y ros-kinetic-message-generation  \
 	 	 # Package modeling the build-time dependencies for generating language bindings of messages.
        && apt-get install -y ros-kinetic-message-multiplexing  \
 	 	 # Lightweight communication patterns built on top of nanomsg for use in embedded scenarios where only a single socket connection is desirable.
        && apt-get install -y ros-kinetic-message-relay  \
 	 	 # Package to programmatically spawn message, service, and action relays.
        && apt-get install -y ros-kinetic-message-runtime  \
 	 	 # Package modeling the run-time dependencies for language bindings of messages.
        && apt-get install -y ros-kinetic-message-to-tf  \
 	 	 # message_to_tf translates pose information from different kind of common_msgs message types to tf.
        && apt-get install -y ros-kinetic-micros-swarm-framework  \
 	 	 # This is a programming framework to facilitate application development involving robot swarms.
        && apt-get install -y ros-kinetic-movie-publisher  \
 	 	 # Node for using a video file as video topic source.
        && apt-get install -y ros-kinetic-mrpt-bridge  \
 	 	 # C++ library to convert between ROS messages and MRPT classes
        && apt-get install -y ros-kinetic-mrpt-ekf-slam-2d  \
 	 	 # This package is a wrapper for the implementation of EKF-based SLAM with range-bearing sensors, odometry, and a 2D (+heading) robot pose, and 2D landmarks.
        && apt-get install -y ros-kinetic-mrpt-ekf-slam-3d  \
 	 	 # This package is a wrapper for the implementation of EKF-based SLAM with range-bearing sensors, odometry, a full 6D robot pose, and 3D landmarks.
        && apt-get install -y ros-kinetic-mrpt-graphslam-2d  \
 	 	 # Implement graphSLAM using the mrpt-graphslam library, in an online fashion by directly reading measurements off ROS Topics.
        && apt-get install -y ros-kinetic-mrpt-icp-slam-2d  \
 	 	 # mrpt_icp_slam_2d contains a wrapper on MRPT's 2D ICP-SLAM algorithms.
        && apt-get install -y ros-kinetic-mrpt-local-obstacles  \
 	 	 # Maintains a local obstacle map (point cloud, voxels or occupancy grid) from recent sensor readings within a configurable time window.
        && apt-get install -y ros-kinetic-mrpt-localization  \
 	 	 # Package for robot 2D self-localization using dynamic or static (MRPT or ROS) maps.
        && apt-get install -y ros-kinetic-mrpt-map  \
 	 	 # The mrpt_map is able to publish a mrpt map as ros occupancy grid like the map_server
        && apt-get install -y ros-kinetic-mrpt-msgs  \
 	 	 # ROS messages for MRPT classes and objects
        && apt-get install -y ros-kinetic-mrpt-navigation  \
 	 	 # Tools related to the Mobile Robot Programming Toolkit (MRPT).
        && apt-get install -y ros-kinetic-mrpt-rawlog  \
 	 	 # This package enables you to record a rawlog from a ROS drive robot.
        && apt-get install -y ros-kinetic-mrpt-rbpf-slam  \
 	 	 # This package is used for gridmap SLAM.
        && apt-get install -y ros-kinetic-mrpt-reactivenav2d  \
 	 	 # Reactive navigation for 2D robots using MRPT navigation algorithms (TP-Space)
        && apt-get install -y ros-kinetic-mrpt-slam  \
 	 	 # mrpt_slam
        && apt-get install -y ros-kinetic-mrpt-tutorials  \
 	 	 # Example files used as tutorials for MRPT ROS packages
        && apt-get install -y ros-kinetic-mrpt1  \
 	 	 # Mobile Robot Programming Toolkit (MRPT) version 1.5.x
        && apt-get install -y ros-kinetic-nav-2d-msgs  \
 	 	 # Basic message types for two dimensional navigation, extending from geometry_msgs::Pose2D.
        && apt-get install -y ros-kinetic-nav-2d-utils  \
 	 	 # A handful of useful utility functions for nav_core2 packages.
        && apt-get install -y ros-kinetic-nav-core  \
 	 	 # This package provides common interfaces for navigation specific robot actions.
        && apt-get install -y ros-kinetic-nav-core-adapter  \
 	 	 # This package contains adapters for using `nav_core` plugins as `nav_core2` plugins and vice versa (more or less).
        && apt-get install -y ros-kinetic-nav-core2  \
 	 	 # Interfaces for Costmap, LocalPlanner and GlobalPlanner.
        && apt-get install -y ros-kinetic-nav-grid  \
 	 	 # A templatized interface for overlaying a two dimensional grid on the world.
        && apt-get install -y ros-kinetic-nav-grid-iterators  \
 	 	 # Iterator implementations for moving around the cells of a nav_grid in a number of common patterns.
        && apt-get install -y ros-kinetic-nav-grid-pub-sub  \
 	 	 # Publishers and Subscribers for nav_grid data.
        && apt-get install -y ros-kinetic-nav-msgs  \
 	 	 # nav_msgs defines the common messages used to interact with the navigation stack.
        && apt-get install -y ros-kinetic-nav-pcontroller  \
 	 	 # Simple P-Controller for a holonomic robot base
        && apt-get install -y ros-kinetic-nav2d  \
 	 	 # Meta-Package containing modules for 2D-Navigation
        && apt-get install -y ros-kinetic-nav2d-exploration  \
 	 	 # This package holds a collection of plugins for the RobotNavigator, that provide different cooperative exploration strategies for a team of mobile robots.
        && apt-get install -y ros-kinetic-nav2d-karto  \
 	 	 # Graph-based Simultaneous Localization and Mapping module.
        && apt-get install -y ros-kinetic-nav2d-localizer  \
 	 	 # Wrapper around Particle Filter implementation.
        && apt-get install -y ros-kinetic-nav2d-msgs  \
 	 	 # Messages used for 2D-Navigation.
        && apt-get install -y ros-kinetic-nav2d-navigator  \
 	 	 # This package provides a node for higher level navigation of a mobile robot in a planar environment.
        && apt-get install -y ros-kinetic-nav2d-operator  \
 	 	 # The operator is a lightweight, purely reactive obstacle-avoidance module for mobile robots moving in a planar environment.
        && apt-get install -y ros-kinetic-nav2d-remote  \
 	 	 # This package is used to manually control a robot that uses the operator and navigator node from navigation_2d.
        && apt-get install -y ros-kinetic-nav2d-tutorials  \
 	 	 # Contains a set of tutorials that run 2D-Navigation within Stage-Simulator.
        && apt-get install -y ros-kinetic-navfn  \
 	 	 # navfn provides a fast interpolated navigation function that can be used to create plans for a mobile base.
        && apt-get install -y ros-kinetic-navigation  \
 	 	 # A 2D navigation stack that takes in information from odometry, sensor streams, and a goal pose and outputs safe velocity commands that are sent to a mobile base.
        && apt-get install -y ros-kinetic-navigation-experimental  \
 	 	 # A collection of navigation plugins and tools: Various recovery behaviors, local and global planner plugins for move_base, a teleop filter for obstacle avoidance, a simple control-based move_base replacement etc.
        && apt-get install -y ros-kinetic-navigation-layers  \
 	 	 # Extra navigation layers.
        && apt-get install -y ros-kinetic-navigation-stage  \
 	 	 # This package holds example launch files for running the ROS navigation stack in stage.
        && apt-get install -y ros-kinetic-navigation-tutorials  \
 	 	 # Navigation related tutorials.
        && apt-get install -y ros-kinetic-nodelet  \
 	 	 # The nodelet package is designed to provide a way to run multiple algorithms in the same process with zero copy transport between algorithms.
        && apt-get install -y ros-kinetic-nodelet-core  \
 	 	 # Nodelet Core Metapackage
        && apt-get install -y ros-kinetic-nodelet-topic-tools  \
 	 	 # This package contains common nodelet tools such as a mux, demux and throttle.
        && apt-get install -y ros-kinetic-nodelet-tutorial-math  \
 	 	 # Package for Nodelet tutorial.
        && apt-get install -y ros-kinetic-object-recognition-capture  \
 	 	 # Capture is a set of tools to capture objects in 3D and perform odometry
        && apt-get install -y ros-kinetic-object-recognition-core  \
 	 	 # object_recognition_core contains tools to launch several recognition pipelines, train objects, store models ...
        && apt-get install -y ros-kinetic-object-recognition-msgs  \
 	 	 # Object_recognition_msgs contains the ROS message and the actionlib definition used in object_recognition_core
        && apt-get install -y ros-kinetic-object-recognition-reconstruction  \
 	 	 # basic 3d reconstruction of an object from aligned Kinect data
        && apt-get install -y ros-kinetic-object-recognition-ros  \
 	 	 # object_recognition_core contains tools to launch several recognition pipelines, train objects, store models ...
        && apt-get install -y ros-kinetic-object-recognition-ros-visualization  \
 	 	 # object_recognition_ros_visualization contains rviz plugins to visualize ork detection results
        && apt-get install -y ros-kinetic-object-recognition-tod  \
 	 	 # Textured Object Recognition a standard bag of features approach
        && apt-get install -y ros-kinetic-object-recognition-transparent-objects  \
 	 	 # A technique to recognize and estimate poses of transparent objects
        && apt-get install -y ros-kinetic-octomap  \
 	 	 # The OctoMap library implements a 3D occupancy grid mapping approach, providing data structures and mapping algorithms in C++.
        && apt-get install -y ros-kinetic-octomap-mapping  \
 	 	 # Mapping tools to be used with the OctoMap library, implementing a 3D occupancy grid mapping.
        && apt-get install -y ros-kinetic-octomap-msgs  \
 	 	 # This package provides messages and serializations / conversion for the OctoMap library.
        && apt-get install -y ros-kinetic-octomap-pa  \
 	 	 # ProAut octomap package
        && apt-get install -y ros-kinetic-octomap-ros  \
 	 	 # octomap_ros provides conversion functions between ROS and OctoMap's native types.
        && apt-get install -y ros-kinetic-octomap-rviz-plugins  \
 	 	 # A set of plugins for displaying occupancy information decoded from binary octomap messages.
        && apt-get install -y ros-kinetic-octomap-server  \
 	 	 # octomap_server loads a 3D map (as Octree-based OctoMap) and distributes it to other nodes in a compact binary format.
        && apt-get install -y ros-kinetic-octovis  \
 	 	 # octovis is visualization tool for the OctoMap library based on Qt and libQGLViewer.
        && apt-get install -y ros-kinetic-opencv-apps  \
 	 	 # opencv_apps provides various nodes that run internally OpenCV's functionalities and publish the result as ROS topics.
        && apt-get install -y ros-kinetic-opencv-candidate  \
 	 	 # Experimental OpenCV functions
        && apt-get install -y ros-kinetic-opencv3  \
 	 	 # OpenCV 3.x
        && apt-get install -y ros-kinetic-openface-ros  \
 	 	 # The openface_ros package
        && apt-get install -y ros-kinetic-pcl-conversions  \
 	 	 # Provides conversions from PCL data types and ROS message types
        && apt-get install -y ros-kinetic-pcl-msgs  \
 	 	 # Package containing PCL (Point Cloud Library)-related ROS messages.
        && apt-get install -y ros-kinetic-pcl-ros  \
 	 	 # PCL (Point Cloud Library) ROS interface stack.
        && apt-get install -y ros-kinetic-perception  \
 	 	 # A metapackage to aggregate several packages.
        && apt-get install -y ros-kinetic-perception-pcl  \
 	 	 # PCL (Point Cloud Library) ROS interface stack.
        && apt-get install -y ros-kinetic-pgm-learner  \
 	 	 # Parameter/Structure Estimation and Inference for Bayesian Belief Network
        && apt-get install -y ros-kinetic-pid  \
 	 	 # Launch a PID control node.
        && apt-get install -y ros-kinetic-planner-cspace  \
 	 	 # 3-dof configuration space planner for mobile robot
        && apt-get install -y ros-kinetic-planner-cspace-msgs  \
 	 	 # Message definitions for planner_cspace package
        && apt-get install -y ros-kinetic-play-motion  \
 	 	 # Plays a pre-recorded motion on a robot
        && apt-get install -y ros-kinetic-play-motion-msgs  \
 	 	 # Messages, services and actions used by play_motion.
        && apt-get install -y ros-kinetic-plot-tools  \
 	 	 # plot_tools
        && apt-get install -y ros-kinetic-plotjuggler  \
 	 	 # PlotJuggler: juggle with data
        && apt-get install -y ros-kinetic-pluginlib  \
 	 	 # The pluginlib package provides tools for writing and dynamically loading plugins using the ROS build infrastructure.
        && apt-get install -y ros-kinetic-pluginlib-tutorials  \
 	 	 # The pluginlib_tutorials package
        && apt-get install -y ros-kinetic-point-cloud-publisher-tutorial  \
 	 	 # The point_cloud_publisher_tutorial package
        && apt-get install -y ros-kinetic-pointcloud-to-laserscan  \
 	 	 # Converts a 3D Point Cloud into a 2D laser scan.
        && apt-get install -y ros-kinetic-pointcloud-tools  \
 	 	 # pointcloud_tools
        && apt-get install -y ros-kinetic-py-trees  \
 	 	 # Pythonic implementation of behaviour trees.
        && apt-get install -y ros-kinetic-py-trees-msgs  \
 	 	 # Messages used by py_trees_ros and some extras for the mock demos/tests.
        && apt-get install -y ros-kinetic-py-trees-ros  \
 	 	 # Ros extensions and behaviours for py_trees.
        && apt-get install -y ros-kinetic-qt-build  \
 	 	 # Currently just maintains a cmake api for simplifying the building of qt apps within the ros framework.
        && apt-get install -y ros-kinetic-qt-create  \
 	 	 # Provides templates and scripts for creating qt-ros packages (similar to roscreate-pkg).
        && apt-get install -y ros-kinetic-qt-dotgraph  \
 	 	 # qt_dotgraph provides helpers to work with dot graphs.
        && apt-get install -y ros-kinetic-qt-gui  \
 	 	 # qt_gui provides the infrastructure for an integrated graphical user interface based on Qt.
        && apt-get install -y ros-kinetic-qt-gui-app  \
 	 	 # qt_gui_app provides the main to start an instance of the integrated graphical user interface provided by qt_gui.
        && apt-get install -y ros-kinetic-qt-gui-core  \
 	 	 # Integration of the ROS package system and ROS-specific plugins for a Qt-based GUI.
        && apt-get install -y ros-kinetic-qt-gui-cpp  \
 	 	 # qt_gui_cpp provides the foundation for C++-bindings for qt_gui and creates bindings for every generator available.
        && apt-get install -y ros-kinetic-qt-gui-py-common  \
 	 	 # qt_gui_py_common provides common functionality for GUI plugins written in Python.
        && apt-get install -y ros-kinetic-qt-qmake  \
 	 	 # qt*-qmake metapackage supporting qt4 and qt5
        && apt-get install -y ros-kinetic-qt-ros  \
 	 	 # Simple qt cmake build tools and master-chooser style application template.
        && apt-get install -y ros-kinetic-qt-tutorials  \
 	 	 # Example qt programs, generated from code similar to that used by the roscreate-qt-pkg script and styled on roscpp_tutorials.
        && apt-get install -y ros-kinetic-quaternion-operation  \
 	 	 # The quaternion_operation package
        && apt-get install -y ros-kinetic-rc-cloud-accumulator  \
 	 	 # A viewer for the SLAM component of roboception based on ROS and PCL
        && apt-get install -y ros-kinetic-robot  \
 	 	 # A metapackage which extends ros_base and includes ROS libaries for any robot hardware.
        && apt-get install -y ros-kinetic-robot-activity  \
 	 	 # The robot_activity package implements ROS node lifecycle
        && apt-get install -y ros-kinetic-robot-activity-msgs  \
 	 	 # This package contains messages used by robot_activity, such as node's state and error
        && apt-get install -y ros-kinetic-robot-activity-tutorials  \
 	 	 # The robot_activity_tutorials package
        && apt-get install -y ros-kinetic-robot-calibration  \
 	 	 # Calibrate a Robot
        && apt-get install -y ros-kinetic-robot-calibration-msgs  \
 	 	 # Messages for calibrating a robot
        && apt-get install -y ros-kinetic-robot-controllers  \
 	 	 # Some basic robot controllers for use with robot_controllers_interface.
        && apt-get install -y ros-kinetic-robot-controllers-interface  \
 	 	 # Generic framework for robot controls.
        && apt-get install -y ros-kinetic-robot-controllers-msgs  \
 	 	 # Messages for use with robot_controllers framework.
        && apt-get install -y ros-kinetic-robot-localization  \
 	 	 # Provides nonlinear state estimation through sensor fusion of an abritrary number of sensors.
        && apt-get install -y ros-kinetic-robot-mechanism-controllers  \
 	 	 # Generic Mechanism Controller Library
        && apt-get install -y ros-kinetic-robot-model  \
 	 	 # robot_model contains packages for modeling various aspects of robot information, specified in the Xml Robot Description Format (URDF).
        && apt-get install -y ros-kinetic-robot-navigation  \
 	 	 # The robot_navigation package
        && apt-get install -y ros-kinetic-robot-pose-ekf  \
 	 	 # The Robot Pose EKF package is used to estimate the 3D pose of a robot, based on (partial) pose measurements coming from different sources.
        && apt-get install -y ros-kinetic-robot-pose-publisher  \
 	 	 # A Simple Node to Publish the Robot's Position Relative to the Map using TFs
        && apt-get install -y ros-kinetic-robot-recorder  \
 	 	 # Meta package that contains all essential packages for the robot recorder.
        && apt-get install -y ros-kinetic-robot-self-filter  \
 	 	 # Filters the robot's body out of point clouds.
        && apt-get install -y ros-kinetic-robot-setup-tf-tutorial  \
 	 	 # The robot_setup_tf_tutorial package
        && apt-get install -y ros-kinetic-robot-state-publisher  \
 	 	 # This package allows you to publish the state of a robot to tf.
        && apt-get install -y ros-kinetic-robot-upstart  \
 	 	 # The robot_upstart package provides scripts which may be used to install and uninstall Ubuntu Linux upstart jobs which launch groups of roslaunch files.
        && apt-get install -y ros-kinetic-ros-numpy  \
 	 	 # A collection of conversion function for extracting numpy arrays from messages
        && apt-get install -y ros-kinetic-rosbag  \
 	 	 # This is a set of tools for recording from and playing back to ROS topics.
        && apt-get install -y ros-kinetic-rosbag-migration-rule  \
 	 	 # This empty package allows to export rosbag migration rule files without depending on rosbag.
        && apt-get install -y ros-kinetic-rosbag-pandas  \
 	 	 # Create a Pandas data frame from a ros bag file.
        && apt-get install -y ros-kinetic-rosbag-storage  \
 	 	 # This is a set of tools for recording from and playing back ROS message without relying on the ROS client library.
        && apt-get install -y ros-kinetic-rosbaglive  \
 	 	 # Plays rosbags as though they were happening NOW.
        && apt-get install -y ros-kinetic-rosbash  \
 	 	 # Assorted shell commands for using ros with bash.
        && apt-get install -y ros-kinetic-rosbash-params  \
 	 	 # Tools for writing ros-node-like bash scripts
        && apt-get install -y ros-kinetic-rosboost-cfg  \
 	 	 # Contains scripts used by the rosboost-cfg tool for determining cflags/lflags/etc.
        && apt-get install -y ros-kinetic-rosbridge-library  \
 	 	 # The core rosbridge package, repsonsible for interpreting JSON andperforming the appropriate ROS action, like subscribe, publish, call service, and interact with params.
        && apt-get install -y ros-kinetic-rosbridge-msgs  \
 	 	 # Package containing message files
        && apt-get install -y ros-kinetic-rosbridge-server  \
 	 	 # A WebSocket interface to rosbridge.
        && apt-get install -y ros-kinetic-rosbridge-suite  \
 	 	 # Rosbridge provides a JSON API to ROS functionality for non-ROS programs.
        && apt-get install -y ros-kinetic-roswtf  \
 	 	 # roswtf is a tool for diagnosing issues with a running ROS system.
        && apt-get install -y ros-kinetic-rqt  \
 	 	 # rqt is a Qt-based framework for GUI development for ROS.
        && apt-get install -y ros-kinetic-rqt-action  \
 	 	 # rqt_action provides a feature to introspect all available ROS action (from actionlib) types.
        && apt-get install -y ros-kinetic-rqt-bag  \
 	 	 # rqt_bag provides a GUI plugin for displaying and replaying ROS bag files.
        && apt-get install -y ros-kinetic-rqt-bag-plugins  \
 	 	 # rqt_bag provides a GUI plugin for displaying and replaying ROS bag files.
        && apt-get install -y ros-kinetic-rqt-bhand  \
 	 	 # The rqt_bhand package is intended to test the Barrett Hand in graphical mode
        && apt-get install -y ros-kinetic-rqt-common-plugins  \
 	 	 # rqt_common_plugins metapackage provides ROS backend graphical tools suite that can be used on/off of robot runtime.
        && apt-get install -y ros-kinetic-rqt-console  \
 	 	 # rqt_console provides a GUI plugin for displaying and filtering ROS messages.
        && apt-get install -y ros-kinetic-rqt-controller-manager  \
 	 	 # The rqt_controller_manager package
        && apt-get install -y ros-kinetic-rqt-dep  \
 	 	 # rqt_dep provides a GUI plugin for visualizing the ROS dependency graph.
        && apt-get install -y ros-kinetic-rqt-drone-teleop  \
 	 	 # A common drone teleop interface for all drone exercises in the JdeRobot Robotics Academy
        && apt-get install -y ros-kinetic-rqt-ez-publisher  \
 	 	 # The rqt_ez_publisher package
        && apt-get install -y ros-kinetic-rqt-gauges  \
 	 	 # The rqt_gauges package
        && apt-get install -y ros-kinetic-rqt-graph  \
 	 	 # rqt_graph provides a GUI plugin for visualizing the ROS computation graph.
        && apt-get install -y ros-kinetic-rqt-ground-robot-teleop  \
 	 	 # A common ground robot teleop interface for all ground robot exercises in the JdeRobot Robotics Academy
        && apt-get install -y ros-kinetic-rqt-gui  \
 	 	 # rqt_gui provides the main to start an instance of the ROS integrated graphical user interface provided by qt_gui.
        && apt-get install -y ros-kinetic-rqt-gui-cpp  \
 	 	 # rqt_gui_cpp enables GUI plugins to use the C++ client library for ROS.
        && apt-get install -y ros-kinetic-rqt-gui-py  \
 	 	 # rqt_gui_py enables GUI plugins to use the Python client library for ROS.
        && apt-get install -y ros-kinetic-rqt-image-view  \
 	 	 # rqt_image_view provides a GUI plugin for displaying images using image_transport.
        && apt-get install -y ros-kinetic-rqt-joint-trajectory-controller  \
 	 	 # Graphical frontend for interacting with joint_trajectory_controller instances.
        && apt-get install -y ros-kinetic-rqt-joint-trajectory-plot  \
 	 	 # The rqt_joint_trajectory_plot package
        && apt-get install -y ros-kinetic-rqt-launch  \
 	 	 # This rqt plugin ROS package provides easy view of .launch files.
        && apt-get install -y ros-kinetic-rqt-launchtree  \
 	 	 # An RQT plugin for hierarchical launchfile configuration introspection.
        && apt-get install -y ros-kinetic-rqt-logger-level  \
 	 	 # rqt_logger_level provides a GUI plugin for configuring the logger level of ROS nodes.
        && apt-get install -y ros-kinetic-rqt-moveit  \
 	 	 # An rqt-based tool that assists monitoring tasks for MoveIt! motion planner developers and users.
        && apt-get install -y ros-kinetic-rqt-msg  \
 	 	 # A Python GUI plugin for introspecting available ROS message types.
        && apt-get install -y ros-kinetic-rqt-multiplot  \
 	 	 # rqt_multiplot provides a GUI plugin for visualizing numeric values in multiple 2D plots using the Qwt plotting backend.
        && apt-get install -y ros-kinetic-rqt-nav-view  \
 	 	 # rqt_nav_view provides a gui for viewing navigation maps and paths.
        && apt-get install -y ros-kinetic-rqt-plot  \
 	 	 # rqt_plot provides a GUI plugin visualizing numeric values in a 2D plot using different plotting backends.
        && apt-get install -y ros-kinetic-rqt-pose-view  \
 	 	 # rqt_pose_view provides a GUI plugin for visualizing 3D poses.
        && apt-get install -y ros-kinetic-rqt-pr2-dashboard  \
 	 	 # rqt_pr2_dashboard is a GUI for debugging and controlling low-level state of the PR2.
        && apt-get install -y ros-kinetic-rqt-publisher  \
 	 	 # rqt_publisher provides a GUI plugin for publishing arbitrary messages with fixed or computed field values.
        && apt-get install -y ros-kinetic-rqt-py-common  \
 	 	 # rqt_py_common provides common functionality for rqt plugins written in Python.
        && apt-get install -y ros-kinetic-rqt-py-console  \
 	 	 # rqt_py_console is a Python GUI plugin providing an interactive Python console.
        && apt-get install -y ros-kinetic-rqt-py-trees  \
 	 	 # rqt_py_trees provides a GUI plugin for visualizing py_trees behaviour trees based on rqt_tf_tree.
        && apt-get install -y ros-kinetic-rqt-reconfigure  \
 	 	 # This rqt plugin succeeds former dynamic_reconfigure's GUI (reconfigure_gui), and provides the way to view and edit the parameters that are accessible via dynamic_reconfigure.
        && apt-get install -y ros-kinetic-rqt-robot-dashboard  \
 	 	 # rqt_robot_dashboard provides an infrastructure for building robot dashboard plugins in rqt.
        && apt-get install -y ros-kinetic-rqt-robot-monitor  \
 	 	 # rqt_robot_monitor displays diagnostics_agg topics messages that are published by diagnostic_aggregator.
        && apt-get install -y ros-kinetic-rqt-robot-plugins  \
 	 	 # Metapackage of rqt plugins that are particularly used with robots during its operation.
        && apt-get install -y ros-kinetic-rqt-robot-steering  \
 	 	 # rqt_robot_steering provides a GUI plugin for steering a robot using Twist messages.
        && apt-get install -y ros-kinetic-rqt-rosmon  \
 	 	 # rqt GUI for rosmon, the node launcher and monitor for ROS.
        && apt-get install -y ros-kinetic-rqt-runtime-monitor  \
 	 	 # rqt_runtime_monitor provides a GUI plugin viewing DiagnosticsArray messages.
        && apt-get install -y ros-kinetic-rqt-rviz  \
 	 	 # rqt_rviz provides a GUI plugin embedding RViz.
        && apt-get install -y ros-kinetic-rqt-service-caller  \
 	 	 # rqt_service_caller provides a GUI plugin for calling arbitrary services.
        && apt-get install -y ros-kinetic-rqt-servicebot-pan-tilt  \
 	 	 # The rqt_servicebot_pan_tilt package
        && apt-get install -y ros-kinetic-rqt-servicesim-score  \
 	 	 # The rqt_servicesim_score package
        && apt-get install -y ros-kinetic-rqt-shell  \
 	 	 # rqt_shell is a Python GUI plugin providing an interactive shell.
        && apt-get install -y ros-kinetic-rqt-srv  \
 	 	 # A Python GUI plugin for introspecting available ROS message types.
        && apt-get install -y ros-kinetic-rqt-tf-tree  \
 	 	 # rqt_tf_tree provides a GUI plugin for visualizing the ROS TF frame tree.
        && apt-get install -y ros-kinetic-rqt-top  \
 	 	 # RQT plugin for monitoring ROS processes.
        && apt-get install -y ros-kinetic-rqt-topic  \
 	 	 # rqt_topic provides a GUI plugin for displaying debug information about ROS topics including publishers, subscribers, publishing rate, and ROS Messages.
        && apt-get install -y ros-kinetic-rqt-web  \
 	 	 # rqt_web is a simple web content viewer for rqt.
        && apt-get install -y ros-kinetic-rqt-wrapper  \
 	 	 # A wrapper for keeping rqt programs alive.
        && apt-get install -y ros-kinetic-rviz  \
 	 	 # 3D visualization tool for ROS.
        && apt-get install -y ros-kinetic-rviz-imu-plugin  \
 	 	 # RVIZ plugin for IMU visualization
        && apt-get install -y ros-kinetic-rviz-plugin-tutorials  \
 	 	 # Tutorials showing how to write plugins for RViz.
        && apt-get install -y ros-kinetic-rviz-python-tutorial  \
 	 	 # Tutorials showing how to call into rviz internals from python scripts.
        && apt-get install -y ros-kinetic-rviz-recorder-buttons  \
 	 	 # The rviz_recorder_buttons package
        && apt-get install -y ros-kinetic-rviz-visual-tools  \
 	 	 # Utility functions for displaying and debugging data in Rviz via published markers
        && apt-get install -y ros-kinetic-safe-teleop-base  \
 	 	 # This package provides automatic collision avoidance and is intended to be used for safer teleoperation of a robot base.
        && apt-get install -y ros-kinetic-safe-teleop-stage  \
 	 	 # Demo of safe_teleop in stage
        && apt-get install -y ros-kinetic-safety-limiter  \
 	 	 # Motion limiter package for collision prevention
        && apt-get install -y ros-kinetic-scan-to-cloud-converter  \
 	 	 # Converts LaserScan to PointCloud messages.
        && apt-get install -y ros-kinetic-scan-tools  \
 	 	 # Laser scan processing tools.
        && apt-get install -y ros-kinetic-slam-gmapping  \
 	 	 # slam_gmapping contains a wrapper around gmapping which provides SLAM capabilities.
        && apt-get install -y ros-kinetic-slam-karto  \
 	 	 # This package pulls in the Karto mapping library, and provides a ROS wrapper for using it.
        && apt-get install -y ros-kinetic-smach  \
 	 	 # SMACH is a task-level architecture for rapidly creating complex robot behavior.
        && apt-get install -y ros-kinetic-smach-msgs  \
 	 	 # this package contains a set of messages that are used by the introspection interfaces for smach.
        && apt-get install -y ros-kinetic-smach-ros  \
 	 	 # The smach_ros package contains extensions for the SMACH library to integrate it tightly with ROS.
        && apt-get install -y ros-kinetic-smach-viewer  \
 	 	 # The smach viewer is a GUI that shows the state of hierarchical SMACH state machines.
        && apt-get install -y ros-kinetic-smacha  \
 	 	 # SMACHA (short for &quot;State Machine Assembler&quot;, pronounced &quot;smasha&quot;) aims at distilling the task-level simplicity of SMACH into compact YAML-based scripts in the foreground, while retaining all of its power and flexibility in Jinja2-based templates and a custom code generation engine in the background.
        && apt-get install -y ros-kinetic-smacha-ros  \
 	 	 # SMACHA ROS is a package that provides ROS integration for SMACHA.
        && apt-get install -y ros-kinetic-smclib  \
 	 	 # The State Machine Compiler (SMC) from http://smc.sourceforge.net/ converts a language-independent description o
        && apt-get install -y ros-kinetic-srdfdom  \
 	 	 # Parser for Semantic Robot Description Format (SRDF).
        && apt-get install -y ros-kinetic-stereo-image-proc  \
 	 	 # Stereo and single image rectification and disparity processing.
        && apt-get install -y ros-kinetic-stereo-msgs  \
 	 	 # stereo_msgs contains messages specific to stereo processing, such as disparity images.
        && apt-get install -y ros-kinetic-tf-conversions  \
 	 	 # This package contains a set of conversion functions to convert common tf datatypes (point, vector, pose, etc) into semantically identical datatypes used by other libraries.
        && apt-get install -y ros-kinetic-tf-remapper-cpp  \
 	 	 # More efficient version of tf/tf_remap able to handle TFs at kHz with tens of subscribers.
        && apt-get install -y ros-kinetic-tf-tools  \
 	 	 # ROS tools and scripts relates to tf
        && apt-get install -y ros-kinetic-tf2  \
 	 	 # tf2 is the second generation of the transform library, which lets the user keep track of multiple coordinate frames over time.
        && apt-get install -y ros-kinetic-tf2-bullet  \
 	 	 # tf2_bullet
        && apt-get install -y ros-kinetic-tf2-eigen  \
 	 	 # tf2_eigen
        && apt-get install -y ros-kinetic-tf2-geometry-msgs  \
 	 	 # tf2_geometry_msgs
        && apt-get install -y ros-kinetic-tf2-kdl  \
 	 	 # KDL binding for tf2
        && apt-get install -y ros-kinetic-tf2-msgs  \
 	 	 # tf2_msgs
        && apt-get install -y ros-kinetic-tf2-py  \
 	 	 # The tf2_py package
        && apt-get install -y ros-kinetic-tf2-relay  \
 	 	 # Specialization of message_relay for tf2
        && apt-get install -y ros-kinetic-tf2-ros  \
 	 	 # This package contains the ROS bindings for the tf2 library, for both Python and C++.
        && apt-get install -y ros-kinetic-tf2-sensor-msgs  \
 	 	 # Small lib to transform sensor_msgs with tf.
        && apt-get install -y ros-kinetic-tf2-tools  \
 	 	 # tf2_tools
        && apt-get install -y ros-kinetic-tf2-web-republisher  \
 	 	 # Republishing of Selected TFs
        && apt-get install -y ros-kinetic-tile-map  \
 	 	 # Tile map provides a slippy map style interface for visualizing OpenStreetMap and GooleMap tiles.
        && apt-get install -y ros-kinetic-timed-roslaunch  \
 	 	 # Script to delay the launch of a roslaunch file
        && apt-get install -y ros-kinetic-timestamp-tools  \
 	 	 # This package is currently for internal use only.
        && apt-get install -y ros-kinetic-topic-switch  \
 	 	 # The topic_switch package
        && apt-get install -y ros-kinetic-topic-tools  \
 	 	 # Tools for directing, throttling, selecting, and otherwise messing with ROS topics at a meta level.
        && apt-get install -y ros-kinetic-turtle-actionlib  \
 	 	 # turtle_actionlib demonstrates how to write an action server and client with the turtlesim.
        && apt-get install -y ros-kinetic-turtle-tf  \
 	 	 # turtle_tf demonstrates how to write a tf broadcaster and listener with the turtlesim.
        && apt-get install -y ros-kinetic-turtle-tf2  \
 	 	 # turtle_tf2 demonstrates how to write a tf2 broadcaster and listener with the turtlesim.
        && apt-get install -y ros-kinetic-turtlebot  \
 	 	 # The turtlebot meta package provides all the basic drivers for running and using a TurtleBot.
        && apt-get install -y ros-kinetic-turtlebot-actions  \
 	 	 # turtlebot_actions provides several basic actionlib actions for the TurtleBot.
        && apt-get install -y ros-kinetic-turtlebot-apps  \
 	 	 # turtlebot_apps is a group of simple demos and exmaples to run on your TurtleBot to help you get started with ROS and TurtleBot.
        && apt-get install -y ros-kinetic-turtlebot-bringup  \
 	 	 # turtlebot_bringup provides roslaunch scripts for starting the TurtleBot base functionality.
        && apt-get install -y ros-kinetic-turtlebot-calibration  \
 	 	 # turtlebot_calibration
        && apt-get install -y ros-kinetic-turtlebot-capabilities  \
 	 	 # Capabilities for the TurtleBot
        && apt-get install -y ros-kinetic-turtlebot-create  \
 	 	 # Catkin metapackage for the turtlebot_create stack
        && apt-get install -y ros-kinetic-turtlebot-dashboard  \
 	 	 # Launchers for the base-specific dashboards
        && apt-get install -y ros-kinetic-turtlebot-description  \
 	 	 # turtlebot_description provides a complete 3D model of the TurtleBot for simulation and visualization.
        && apt-get install -y ros-kinetic-turtlebot-follower  \
 	 	 # Follower for the turtlebot.
        && apt-get install -y ros-kinetic-turtlebot-gazebo  \
 	 	 # Gazebo launchers and worlds for TurtleBot simulation
        && apt-get install -y ros-kinetic-turtlebot-interactions  \
 	 	 # Catkin meta-package for turtlebot_interactions
        && apt-get install -y ros-kinetic-turtlebot-interactive-markers  \
 	 	 # Interactive control for the TurtleBot using RViz and interactive markers
        && apt-get install -y ros-kinetic-turtlebot-msgs  \
 	 	 # Turtlebot messages, services and actions
        && apt-get install -y ros-kinetic-turtlebot-navigation  \
 	 	 # turtlebot_navigation
        && apt-get install -y ros-kinetic-turtlebot-rapps  \
 	 	 # The core set of turtlebot 'app manager' apps are defined in this package.
        && apt-get install -y ros-kinetic-turtlebot-rviz-launchers  \
 	 	 # Launchers for visualizing TurtleBot
        && apt-get install -y ros-kinetic-turtlebot-simulator  \
 	 	 # Catkin metapackage for the turtlebot_simulator stack
        && apt-get install -y ros-kinetic-turtlebot-stage  \
 	 	 # Stage version of turtlebot simulation.
        && apt-get install -y ros-kinetic-turtlebot-stdr  \
 	 	 # Stdr version of turtlebot simulation.
        && apt-get install -y ros-kinetic-turtlebot-teleop \ 
 	 	 # Provides teleoperation using joysticks or keyboard.
        && apt-get install -y ros-kinetic-turtlesim  \
 	 	 # turtlesim is a tool made for teaching ROS and ROS packages.
        && apt-get install -y ros-kinetic-urdf  \
 	 	 # This package contains a C++ parser for the Unified Robot Description Format (URDF), which is an XML format for representing a robot model.
        && apt-get install -y ros-kinetic-urdf-geometry-parser  \
 	 	 # Extract geometry value of a vehicle from urdf
        && apt-get install -y ros-kinetic-urdf-parser-plugin  \
 	 	 # This package contains a C++ base class for URDF parsers.
        && apt-get install -y ros-kinetic-urdf-sim-tutorial  \
 	 	 # The urdf_sim_tutorial package
        && apt-get install -y ros-kinetic-urdf-test  \
 	 	 # The urdf_test package
        && apt-get install -y ros-kinetic-urdf-tutorial  \
 	 	 # This package contains a number of URDF tutorials.
        && apt-get install -y ros-kinetic-urdfdom-py  \
 	 	 # Python implementation of the URDF parser.
        && apt-get install -y ros-kinetic-vector-map-msgs  \
 	 	 # The vector_map_msgs package
        && apt-get install -y ros-kinetic-velocity-controllers  \
 	 	 # velocity_controllers
        && apt-get install -y ros-kinetic-velodyne  \
 	 	 # Basic ROS support for the Velodyne 3D LIDARs.
        && apt-get install -y ros-kinetic-velodyne-description  \
 	 	 # URDF and meshes describing Velodyne laser scanners.
        && apt-get install -y ros-kinetic-velodyne-driver  \
 	 	 # ROS device driver for Velodyne 3D LIDARs.
        && apt-get install -y ros-kinetic-velodyne-gazebo-plugins  \
 	 	 # Gazebo plugin to provide simulated data from Velodyne laser scanners.
        && apt-get install -y ros-kinetic-velodyne-laserscan  \
 	 	 # Extract a single ring of a Velodyne PointCloud2 and publish it as a LaserScan message
        && apt-get install -y ros-kinetic-velodyne-msgs  \
 	 	 # ROS message definitions for Velodyne 3D LIDARs.
        && apt-get install -y ros-kinetic-velodyne-pointcloud  \
 	 	 # Point cloud conversions for Velodyne 3D LIDARs.
        && apt-get install -y ros-kinetic-velodyne-simulator  \
 	 	 # Metapackage allowing easy installation of Velodyne simulation components.
        && apt-get install -y ros-kinetic-video-stream-opencv  \
 	 	 # The video_stream_opencv package contains a node to publish a video stream (the protocols that opencv supports are supported, including rtsp, webcams on /dev/video and video files) in ROS image topics, it supports camera info and basic image flipping (horizontal, vertical or both) capabilities, also adjusting publishing rate.
        && apt-get install -y ros-kinetic-view-controller-msgs  \
 	 	 # Messages for (camera) view controllers
        && apt-get install -y ros-kinetic-vision-msgs  \
 	 	 # Messages for interfacing with various computer vision pipelines, such as object detectors.
        && apt-get install -y ros-kinetic-vision-opencv \ 
 	 	 # Packages for interfacing ROS with OpenCV, a library of programming functions for real time computer vision.
        && apt-get install -y ros-kinetic-visualization-marker-tutorials  \
 	 	 # The visulalization_marker_tutorials package
        && apt-get install -y ros-kinetic-visualization-msgs  \
 	 	 # visualization_msgs is a set of messages used by higher level packages, such as rviz, that deal in visualization-specific data.
        && apt-get install -y ros-kinetic-visualization-osg  \
 	 	 # visualization_osg is a metapackage providing support for visualization of geometry using the OpenSceneGraph rendering engine.
        && apt-get install -y ros-kinetic-visualization-tutorials  \
 	 	 # Metapackage referencing tutorials related to rviz and visualization.
        && apt-get install -y ros-kinetic-visualstates  \
 	 	 # The VisualStates is reactive hierarchical visual robot planning tool.
        && apt-get install -y ros-kinetic-voxel-grid  \
 	 	 # voxel_grid provides an implementation of an efficient 3D voxel grid.
        && apt-get install -y ros-kinetic-waypoint-generator  \
 	 	 # Generates waypoint yaml file
        && apt-get install -y ros-kinetic-waypoint-meta  \
 	 	 # Waypoint Meta package
        && apt-get install -y ros-kinetic-waypoint-touring  \
 	 	 # Tours around the waypoints
        && apt-get install -y ros-kinetic-web-interface  \
 	 	 # The web_interface package
        && apt-get install -y ros-kinetic-web-msgs  \
 	 	 # web_msgs
        && apt-get install -y ros-kinetic-web-video-server  \
 	 	 # HTTP Streaming of ROS Image Topics in Multiple Formats
        && rosdep init

RUN rm -rf /var/lib/apt/lists/* 

RUN useradd -ms /bin/bash user \
    && echo "user:user" | chpasswd && adduser user sudo \
    && usermod -aG audio user
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

COPY ./scripts/init_commands.sh /scripts/init_commands.sh
RUN ["chmod", "+x", "/scripts/init_commands.sh"]

USER user
WORKDIR /home/user
RUN rosdep update \
        && echo "source /opt/ros/kinetic/setup.bash" >> /home/user/.bashrc

RUN git clone https://github.com/jimeh/tmux-themepack.git ~/.tmux-themepack  \
        && git clone https://github.com/tmux-plugins/tmux-resurrect ~/.tmux-resurrect
COPY --chown=user:user ./.tmux.conf /home/user/.tmux.conf

RUN mkdir -p Projects/catkin_ws/src 
RUN /bin/bash -c '. /opt/ros/kinetic/setup.bash; cd /home/user/Projects/catkin_ws; catkin_make'
RUN /bin/bash -c '. /opt/ros/kinetic/setup.bash; cd /home/user/Projects/catkin_ws; catkin_make'

RUN echo "source /home/user/Projects/catkin_ws/devel/setup.bash --extend" >> /home/user/.bashrc

STOPSIGNAL SIGTERM

ENTRYPOINT ["/scripts/init_commands.sh"]
CMD /bin/bash
