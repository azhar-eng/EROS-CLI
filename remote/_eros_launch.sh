#!/usr/bin/env bash

source /opt/ros/kinetic/setup.bash
source ~/$2/devel/setup.bash

export ROS_IP=127.0.0.1
export ROS_HOSTNAME=127.0.0.1
export ROS_MASTER_URI=http://127.0.0.1:11311

roslaunch eros eros.launch
