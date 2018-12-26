#!/usr/bin/env sh

# Install deps
sudo apt-get install ros-melodic-joy -y

# Install turtlebot2 packages from source
cd ../src
git clone https://github.com/turtlebot/turtlebot.git
cd ..
catkin_make
source ./devel/setup.bash
