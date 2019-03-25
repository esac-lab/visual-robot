#!/usr/bin/env sh

mkdir -p src

# Install all deps.
cd ./install
./install_all.sh
cd -

# Make catkin workspace
catkin_make
