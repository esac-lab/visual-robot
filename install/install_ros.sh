#!/usr/bin/env sh

# Setup your sources.list
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

# Set up your keys
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116

# Update Debian package index
sudo apt update

# Desktop-Full Install
sudo apt install ros-melodic-desktop-full -y

# Initialize rosdep
sudo rosdep init
rosdep update

# Environment setup
echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
source ~/.bashrc

# Dependencies for building packages
sudo apt install python-rosinstall python-rosinstall-generator python-wstool build-essential git -y
