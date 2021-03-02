#!/bin/bash

TARGET_FOLDER_nrpStorage=$HOME/.opt/nrpStorage
TARGET_FOLDER_NRP_ROS=$HBP
echo "$TARGET_FOLDER_nrpStorage"

if [ -d "$TARGET_FOLDER_nrpStorage" ]; then
  ### Take action if $TARGET_FOLDER exists ###
  echo "Moving folders inside local NRP Storage in ${TARGET_FOLDER_nrpStorage}..."
  cp -f -r  nrpStorage/panda_experiment $TARGET_FOLDER_nrpStorage
else
  ###  Control will jump here if $TARGET_FOLDER does NOT exists ###
  echo "Error: ${TARGET_FOLDER_nrpStorage} not found. Local NRP Storage is not exist."
  exit 1
fi


if [ -d "$TARGET_FOLDER_NRP_ROS" ]; then
  ### Take action if $TARGET_FOLDER exists ###
  echo "Moving folders inside local ROS Packages in ${TARGET_FOLDER_NRP_ROS}..."
  cp -f -r ROS_Packages/src/* $TARGET_FOLDER_NRP_ROS/GazeboRosPackages/src/
  cp -f -r ROS_Packages/Models/panda $TARGET_FOLDER_NRP_ROS/Models/
else
  ###  Control will jump here if $TARGET_FOLDER does NOT exists ###
  echo "Error: ${TARGET_FOLDER_NRP_ROS} not found. Local NRP Storage is not exist."
  exit 1
fi

sudo apt install -y ros-noetic-libfranka 

cd $TARGET_FOLDER_NRP_ROS/GazeboRosPackages
source devel/setup.bash
rosdep install panda_simulation
$TARGET_FOLDER_NRP_ROS/Models/create-symlinks.sh
catkin build

