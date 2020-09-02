#!/bin/bash

# Procedure based on:
# https://index.ros.org/doc/ros2/Installation/Foxy/Linux-Install-Debians/
# https://emanual.robotis.com/docs/en/platform/turtlebot3/ros2_setup/

# Setup Locale
sudo locale-gen en_US en_US.UTF-8
sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
export LANG=en_US.UTF-8

# Setup Sources
sudo apt update
sudo apt install -y \
    curl \
    gnupg2 \
    lsb-release

curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
sudo sh -c 'echo "deb [arch=$(dpkg --print-architecture)] http://packages.ros.org/ros2/ubuntu $(lsb_release -cs) main" > /etc/apt/sources.list.d/ros2-latest.list'

# Install ROS 2 packages and dependences
sudo apt update
sudo apt install -y --no-install-recommends \
    ros-foxy-desktop \
    ros-foxy-gazebo-ros-pkgs \
    gazebo11 \
    python3-colcon-common-extensions \
    python3-vcstool \
    python3-argcomplete \
    build-essential \
    git

echo 'source /opt/ros/foxy/setup.bash' >> ~/.bashrc
