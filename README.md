# TurtleBot2Docker
This repository contains multiple Dockerfiles and a few bash scripts to create a ROS Kinetic development environment for the Turtlebot2 completely encapsulated in one container. Depending on the available graphics acceleration, it uses Nvidia or DRI.

The script to build all images is:
```bash
./0001_build_images.sh
```
It will check if there's an active Nvidia OpenGL driver or not and will build all the necessary images.

The other scripts are self explanatory.

