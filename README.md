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
