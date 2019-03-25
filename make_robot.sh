#!/usr/bin/env sh

# Build ORB_SLAM
cd src/ORB_SLAM2
./build.sh
./build_ros.sh
cd -

# Build other packages
catkin_make
