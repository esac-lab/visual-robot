#!/usr/bin/env sh

# Install deps
sudo apt-get install ros-melodic-joy -y

# Install turtlebot2 packages from source
cd ../src
if [ ! -d turtlebot ]; then
    git clone https://github.com/turtlebot/turtlebot.git
else
    git pull
fi
cd ..
catkin_make
source ./devel/setup.bash
