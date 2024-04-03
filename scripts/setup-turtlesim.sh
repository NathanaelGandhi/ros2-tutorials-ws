#! /bin/bash

echo "Installing turtlesim package"
sudo apt install ros-"$ROS_DISTRO"-turtlesim

echo "Installed turtlesim executables:"
ros2 pkg executables turtlesim
