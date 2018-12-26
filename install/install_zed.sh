#!/usr/bin/env sh

# Install deps
sudo apt install curl git -y

# Install zed SDK
curl -sLf https://raw.githubusercontent.com/gaunthan/zed-sdk-installer/master/installer.sh | bash

# Install zed-ros-wrapper
cd ../src
git clone https://github.com/stereolabs/zed-ros-wrapper.git
cd ../
catkin_make
source ./devel/setup.bash
