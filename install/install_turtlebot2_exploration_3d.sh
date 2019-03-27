#!/usr/bin/env bash

# Install turtlebot exploration 3d
cd ./src
if [ ! -d turtlebot_exploration_3d ]; then
  git clone https://github.com/gaunthan/turtlebot_exploration_3d.git
else
  cd turtlebot_exploration_3d
  git pull
  cd -
fi
sudo apt install ros-melodic-move-base-msgs
