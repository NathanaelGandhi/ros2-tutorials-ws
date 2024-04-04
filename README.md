# ros2-tutorials-ws

## Source the setup files
```
source /opt/ros/humble/setup.bash
```
or from the ws root
```
source source.sh
```

## Check environment variables
```
printenv | grep -i ROS
```

## Build the workspace
```
colcon build --symlink-install
```

```
colcon build
```

Only build a select package
```
colcon build --packages-select <package>
```

## Run tests
```
colcon test
```

## Source the environment
To source the overlay as well as the underlay it was created in
```
source install/setup.bash
```

To only source an overlay
```
source install/local_setup.bash
```

## Resolve dependencies
Note: It is best practice to check for dependencies every time you clone
```
rosdep install -i --from-path src --rosdistro humble -y
```

## Tutorial notes
### ros2 param dump
Dumping params to a file example
```
ros2 param dump /turtlesim > turtlesim.yaml
```
This created [turtlesim.yaml](turtlesim.yaml)

This can be loaded with
```
ros2 param load /turtlesim turtlesim.yaml
```

Note: read-only params can only be modified at startup

To start a node with the saved params use:
```
ros2 run turtlesim turtlesim_node --ros-args --params-file turtlesim.yaml
```

### Actions
Actions consist of three parts: a goal, feedback, and a result.
See [Understanding ROS2 Actions](https://docs.ros.org/en/humble/Tutorials/Beginner-CLI-Tools/Understanding-ROS2-Actions/Understanding-ROS2-Actions.html).

Note: Don’t assume every action server will choose to abort the current goal when it gets a new one.
