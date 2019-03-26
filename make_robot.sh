#!/usr/bin/env sh

# Update and build ORB_SLAM
cd src/ORB_SLAM2
git pull
./build.sh
./build_ros.sh
cd -

# Update zed-ros-wrapper
cd src/zed-ros-wrapper
git pull
cd -

# Build other packages
catkin_make
