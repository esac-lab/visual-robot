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

# Install dependencies
sudo apt install -y ros-melodic-move-base-msgs ros-melodic-openni2-launch

git clone https://github.com/robotics-in-concert/rocon_app_platform
git clone https://github.com/robotics-in-concert/rocon_tools.git
