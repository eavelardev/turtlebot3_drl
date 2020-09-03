# turtlebot3_drl
Deep Reinforcement Learning for Turtlebot3

This repo implement DRL algorithms to teach TurtleBot3 robot to navigate on unknown environments. The output is a model that can be used for an autonomous navigation.

## Environment to do the training

An virtual image is shared with a pre-config env with the next characteristics:

- VM based on Ubuntu 20.04 [netboot](http://archive.ubuntu.com/ubuntu/dists/focal-updates/main/installer-amd64/current/legacy-images/netboot/) version with `ubuntu-desktop-minimal` installation.
- `openssh-server` installed for remote access 

To log to the image

```
ssh focal@localhost
```
password: `pass`


### Manual Installation

Suggestion:

Install `openssh-server` if you are doing the installation for a VM and you want to access remotely. Add a Port forwarding rule.

Do the following if you want to open gui apps (Gazebo for example) from ssh sessions. 

```
echo 'export DISPLAY=:0' >> ~/.bashrc
```

Install ROS packages
```
sh -c "$(wget https://raw.github.com/eavelardev/turtlebot3_drl/master/scripts/install_ros.sh -O -)"
source ~/.bashrc
```

Install TurtleBot3 packages
```
sh -c "$(wget https://raw.github.com/eavelardev/turtlebot3_drl/master/scripts/install_turtlebot3.sh -O -)"
```

Restart terminal

### Test environment

Bring Empty World using the following command
```
ros2 launch turtlebot3_gazebo empty_world.launch.py
```

Open a new terminal and run teleoperation node
```
ros2 run turtlebot3_teleop teleop_keyboard
```
