#!/usr/bin/env sh

curl -sLf https://raw.githubusercontent.com/gaunthan/Turtlebot2-On-Melodic/master/build_basic.sh | bash

# Install turtlebot exploration 3d
cd ./src
git clone https://github.com/gaunthan/turtlebot_exploration_3d.git
sudo apt install ros-melodic-move-base-msgs

