#!/usr/bin/env sh

mkdir -p src

# Install all deps.
cd ./install
./install_all.sh
cd -

# Build ORB_SLAM
cd src/ORB_SLAM2
./build.sh
./build_ros.sh
cd -

# Build other packages
catkin_make
