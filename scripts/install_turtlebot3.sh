#!/bin/bash

# Procedure based on:
# https://emanual.robotis.com/docs/en/platform/turtlebot3/ros2_setup/

# Install TurtleBot3 Packages
mkdir -p ~/turtlebot3_ws/src
cd ~/turtlebot3_ws
wget https://raw.githubusercontent.com/ROBOTIS-GIT/turtlebot3/ros2/turtlebot3.repos
vcs import src < turtlebot3.repos
colcon build --symlink-install

echo 'source ~/turtlebot3_ws/install/setup.bash' >> ~/.bashrc


# Procedure based on:
# https://emanual.robotis.com/docs/en/platform/turtlebot3/ros2_simulation/

echo 'export TURTLEBOT3_MODEL=burger' >> ~/.bashrc
echo 'export GAZEBO_MODEL_PATH=$GAZEBO_MODEL_PATH:~/turtlebot3_ws/src/turtlebot3/turtlebot3_simulations/turtlebot3_gazebo/models' >> ~/.bashrc
echo 'export DISPLAY=:0' >> ~/.bashrc

sudo rm -rf /var/lib/apt/lists/*
