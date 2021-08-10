[app/sources/292147161.Dockerfile]
digraph {
  "sha256:f983686491ea7de4b7c5f007c1d803e7ee80e42782557bc067e68af10c2c4b3a" [label="docker-image://docker.io/library/ros:kinetic-perception" shape="ellipse"];
  "sha256:73c07daff352a4fe14ad0082e0e023abe098812087ad549e9f0b328e90790a25" [label="/bin/sh -c if [ \"x$(nproc)\" = \"x1\" ] ; then export USE_PROC=1 ;       else export USE_PROC=$(($(nproc)/2)) ; fi &&       apt-get update && apt-get install -y       cmake       libatlas-base-dev       libeigen3-dev       libgoogle-glog-dev       libsuitesparse-dev       python-catkin-tools       ros-${ROS_DISTRO}-cv-bridge       ros-${ROS_DISTRO}-image-transport       ros-${ROS_DISTRO}-message-filters       ros-${ROS_DISTRO}-tf &&       rm -rf /var/lib/apt/lists/* &&       git clone https://ceres-solver.googlesource.com/ceres-solver &&       cd ceres-solver &&       git checkout tags/${CERES_VERSION} &&       mkdir build && cd build &&       cmake .. &&       make -j$(USE_PROC) install &&       rm -rf ../../ceres-solver &&       mkdir -p $CATKIN_WS/src/VINS-Mono/" shape="box"];
  "sha256:986b12861441005a5b8d4b3ee4aab768a0bc9dad06ed7b3d664c91d5469e406b" [label="local://context" shape="ellipse"];
  "sha256:1e4698e99a4df1e99d75cbdf992d2fdcceddc4e13c9553b3916400bc7bd7b96c" [label="copy{src=/, dest=/root/catkin_ws/src/VINS-Mono/}" shape="note"];
  "sha256:d47f25bc38e8dfa991d651bd71ce0258cc49a1cf11f119eb164c61dc6bc05509" [label="mkdir{path=/root/catkin_ws}" shape="note"];
  "sha256:e9939eb1a7b6535bf36a35c519aa222493548a657671bc79c237cf2505ec7550" [label="/bin/sh -c catkin config       --extend /opt/ros/$ROS_DISTRO       --cmake-args         -DCMAKE_BUILD_TYPE=Release &&     catkin build &&     sed -i '/exec \"$@\"/i             source \"/root/catkin_ws/devel/setup.bash\"' /ros_entrypoint.sh" shape="box"];
  "sha256:6e73b3ef7419ca31733cbe52b2406b9b5562b11be892f9bfda1ec6979822d9e0" [label="sha256:6e73b3ef7419ca31733cbe52b2406b9b5562b11be892f9bfda1ec6979822d9e0" shape="plaintext"];
  "sha256:f983686491ea7de4b7c5f007c1d803e7ee80e42782557bc067e68af10c2c4b3a" -> "sha256:73c07daff352a4fe14ad0082e0e023abe098812087ad549e9f0b328e90790a25" [label=""];
  "sha256:73c07daff352a4fe14ad0082e0e023abe098812087ad549e9f0b328e90790a25" -> "sha256:1e4698e99a4df1e99d75cbdf992d2fdcceddc4e13c9553b3916400bc7bd7b96c" [label=""];
  "sha256:986b12861441005a5b8d4b3ee4aab768a0bc9dad06ed7b3d664c91d5469e406b" -> "sha256:1e4698e99a4df1e99d75cbdf992d2fdcceddc4e13c9553b3916400bc7bd7b96c" [label=""];
  "sha256:1e4698e99a4df1e99d75cbdf992d2fdcceddc4e13c9553b3916400bc7bd7b96c" -> "sha256:d47f25bc38e8dfa991d651bd71ce0258cc49a1cf11f119eb164c61dc6bc05509" [label=""];
  "sha256:d47f25bc38e8dfa991d651bd71ce0258cc49a1cf11f119eb164c61dc6bc05509" -> "sha256:e9939eb1a7b6535bf36a35c519aa222493548a657671bc79c237cf2505ec7550" [label=""];
  "sha256:e9939eb1a7b6535bf36a35c519aa222493548a657671bc79c237cf2505ec7550" -> "sha256:6e73b3ef7419ca31733cbe52b2406b9b5562b11be892f9bfda1ec6979822d9e0" [label=""];
}

