#!/usr/bin/env sh

# Install Pangolin
#
# Install dependencies
sudo apt-get install libglew-dev -y
sudo apt-get install cmake -y

# Build Pangolin from source and install it
curr_dir=`pwd`
cd /tmp
git clone https://github.com/gaunthan/Pangolin
cd Pangolin
mkdir build
cd build
cmake ..
make
sudo make install
cd "$curr_dir"

# Install OpenCV python binding
sudo apt install python-opencv python3-opencv -y

# Install Eigen3
curr_dir=`pwd`
cd /tmp
wget http://bitbucket.org/eigen/eigen/get/3.3.4.tar.gz
tar xzvf 3.3.4.tar.gz
cd eigen-eigen-*
mkdir build
cd build
cmake ..
sudo make install
cd "$curr_dir"

# Install ORB_SLAM2
cd ../src
if [ ! -d ORB_SLAM2 ]; then
    git clone https://github.com/gaunthan/ORB_SLAM2
else
    git pull
fi
cd ORB_SLAM2
chmod +x build.sh build_ros.sh
./build.sh
./build_ros.sh
echo 'export ROS_PACKAGE_PATH=${ROS_PACKAGE_PATH}:'"`pwd`/Examples/ROS" >> ~/.bashrc
