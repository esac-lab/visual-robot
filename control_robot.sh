#!/usr/bin/env bash

print_help()
{
  echo "Usage: $0 <action>"
  echo ""
  echo "  Available actions:"
  echo "      - enable_core"
  echo "      - enable_zed"
  echo "      - enable_kinect"
  echo "      - enable_turtlebot"
  echo "      - enable_turtlebot_keyboard"
  echo "      - enable_stereo_slam"
}

if [ "$#" -lt "1" ]; then
  print_help
  exit
fi

if [ "$1" = "enable_core" ]; then
  ps -e | grep roscore -q
  if [ "$?" -ne "0" ]; then
      roscore
  fi
elif [ "$1" = "enable_zed" ]; then
  source ./devel/setup.bash
  roslaunch zed_wrapper zed.launch
elif [ "$1" = "enable_kinect" ]; then
  roslaunch openni_launch openni.launch
elif [ "$1" = "enable_turtlebot" ]; then
  source ./devel/setup.bash
  roslaunch turtlebot_bringup minimal.launch
elif [ "$1" = "enable_turtlebot_keyboard" ]; then
  source ./devel/setup.bash
  roslaunch turtlebot_teleop keyboard_teleop.launch
elif [ "$1" = "enable_stereo_slam" ]; then
  export ROS_PACKAGE_PATH=${ROS_PACKAGE_PATH}:`pwd`/src/ORB_SLAM2/Examples/ROS
  rosrun ORB_SLAM2 Stereo ./src/ORB_SLAM2/Vocabulary/ORBvoc.txt ./src/ORB_SLAM2/Examples/ROS/ORB_SLAM2/ZED_VGA.yaml false
else
  echo "Unsupported action: $1"
fi
