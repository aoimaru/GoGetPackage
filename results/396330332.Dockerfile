[app/sources/396330332.Dockerfile]
digraph {
  "sha256:725341945591bfd204fda644a85bd95f5a7ab061b5a6e0e5aca8a7de5097e80e" [label="docker-image://docker.io/rdbox/arm.ros:kinetic-ros-base_catkin-ws" shape="ellipse"];
  "sha256:0a3ace01bbf5c4917607f245acb970978a1e92bce7bd0266b04f7ecd7a4b5106" [label="/bin/sh -c apt-get update && apt-get install -y     ros-kinetic-rosserial-python ros-kinetic-tf     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:22a9b9f127bb94143ed3ed52ef89f4b459947e9c74347a4cfc792ad02e194f2d" [label="/bin/sh -c /bin/bash -c \"source /opt/ros/kinetic/setup.bash &&                   cd /catkin_ws/src &&                   git clone https://github.com/ROBOTIS-GIT/hls_lfcd_lds_driver.git &&                   git clone https://github.com/ROBOTIS-GIT/turtlebot3_msgs.git &&                   cd /catkin_ws/src/turtlebot3_msgs &&                   git checkout 0.1.3 &&                   cd /catkin_ws/src &&                   git clone https://github.com/ROBOTIS-GIT/turtlebot3.git &&                   cd /catkin_ws/src/turtlebot3 &&                   git checkout 0.1.3 &&                   rm -rf /catkin_ws/src/turtlebot3/turtlebot3_description &&                   rm -rf /catkin_ws/src/turtlebot3/turtlebot3_fake &&                   rm -rf /catkin_ws/src/turtlebot3/turtlebot3_navigation &&                   rm -rf /catkin_ws/src/turtlebot3/turtlebot3_gazebo &&                   rm -rf /catkin_ws/src/turtlebot3/turtlebot3_slam &&                   sed -i \"/run_depend/d\" /catkin_ws/src/turtlebot3/turtlebot3/package.xml &&                   sed -i \"/run_depend/d\" /catkin_ws/src/turtlebot3/turtlebot3_bringup/package.xml &&                   cd /catkin_ws/ &&                   catkin_make\"" shape="box"];
  "sha256:b0868e03ddfec82b07675be6723f8d1ced71c290c4deebdb85f03c52fcb3a810" [label="sha256:b0868e03ddfec82b07675be6723f8d1ced71c290c4deebdb85f03c52fcb3a810" shape="plaintext"];
  "sha256:725341945591bfd204fda644a85bd95f5a7ab061b5a6e0e5aca8a7de5097e80e" -> "sha256:0a3ace01bbf5c4917607f245acb970978a1e92bce7bd0266b04f7ecd7a4b5106" [label=""];
  "sha256:0a3ace01bbf5c4917607f245acb970978a1e92bce7bd0266b04f7ecd7a4b5106" -> "sha256:22a9b9f127bb94143ed3ed52ef89f4b459947e9c74347a4cfc792ad02e194f2d" [label=""];
  "sha256:22a9b9f127bb94143ed3ed52ef89f4b459947e9c74347a4cfc792ad02e194f2d" -> "sha256:b0868e03ddfec82b07675be6723f8d1ced71c290c4deebdb85f03c52fcb3a810" [label=""];
}

