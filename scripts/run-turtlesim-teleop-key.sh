#! /bin/bash

# check package is installed
package_name="ros-$ROS_DISTRO-turtlesim"
if rospack find "$package_name" &>/dev/null; then
	echo "$package_name is installed."
else
	echo "$package_name is not installed."
	./scripts/setup-turtlesim.sh
fi

# Run turtlesim
ros2 run turtlesim turtle_teleop_key
