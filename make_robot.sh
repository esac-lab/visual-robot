#!/usr/bin/env sh

mkdir -p src

# Install all deps.
./install/install_all.sh

# Make catkin workspace
catkin_make
