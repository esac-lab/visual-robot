#!/usr/bin/env sh

# Install all deps.
./install/install_all.sh

# Make catkin workspace
mkdir -p src
catkin_make
