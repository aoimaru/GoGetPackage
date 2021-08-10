[app/sources/473730662.Dockerfile]
digraph {
  "sha256:f983686491ea7de4b7c5f007c1d803e7ee80e42782557bc067e68af10c2c4b3a" [label="docker-image://docker.io/library/ros:kinetic-perception" shape="ellipse"];
  "sha256:7edbff3d721ae36cd9edc4752cc45914561d52076372981b53f26724862789c7" [label="/bin/sh -c apt-get update && apt-get install -y       python-catkin-tools     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:ce4f5779d3a6a4ae978e1d7d551b135765ce7d50337ba4160b605375f69f7d4a" [label="/bin/sh -c mkdir -p $CATKIN_WS/src" shape="box"];
  "sha256:bc475589aabec8e99100727c5e9e14f0895d4bb9476314a6bf2044b917dfa30b" [label="mkdir{path=/root/catkin_ws/src}" shape="note"];
  "sha256:915399fcb8dd948182aab20a0ae4d358b7404c84f07f0bba529369998202a30b" [label="/bin/sh -c git clone https://github.com/spencer-project/spencer_people_tracking.git" shape="box"];
  "sha256:20c46d4cebe50297f33ec0fc435cd01d14ceeccfcef81e72e60ec499c2dab6e8" [label="/bin/sh -c apt-get update &&     apt-get install -y       wget &&     rosdep update &&     rosdep install -y -r --from-paths . --ignore-src --rosdistro ${ROS_DISTRO} --as-root=apt:false &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:d8852eff0a69f3eead7e45c751d4a35bdfa340719c0289d21379f6f2f922758e" [label="mkdir{path=/root/catkin_ws}" shape="note"];
  "sha256:c195f1ca5acfd46bb24f9a29f4ad98c3375d1f6734a1fe2c60941c67651e08ad" [label="/bin/sh -c catkin config --extend /opt/ros/$ROS_DISTRO &&     catkin build" shape="box"];
  "sha256:a0b879140f3de2d98cbf9589befe71785b128ac7fba32ddeebed4aed9358ab70" [label="sha256:a0b879140f3de2d98cbf9589befe71785b128ac7fba32ddeebed4aed9358ab70" shape="plaintext"];
  "sha256:f983686491ea7de4b7c5f007c1d803e7ee80e42782557bc067e68af10c2c4b3a" -> "sha256:7edbff3d721ae36cd9edc4752cc45914561d52076372981b53f26724862789c7" [label=""];
  "sha256:7edbff3d721ae36cd9edc4752cc45914561d52076372981b53f26724862789c7" -> "sha256:ce4f5779d3a6a4ae978e1d7d551b135765ce7d50337ba4160b605375f69f7d4a" [label=""];
  "sha256:ce4f5779d3a6a4ae978e1d7d551b135765ce7d50337ba4160b605375f69f7d4a" -> "sha256:bc475589aabec8e99100727c5e9e14f0895d4bb9476314a6bf2044b917dfa30b" [label=""];
  "sha256:bc475589aabec8e99100727c5e9e14f0895d4bb9476314a6bf2044b917dfa30b" -> "sha256:915399fcb8dd948182aab20a0ae4d358b7404c84f07f0bba529369998202a30b" [label=""];
  "sha256:915399fcb8dd948182aab20a0ae4d358b7404c84f07f0bba529369998202a30b" -> "sha256:20c46d4cebe50297f33ec0fc435cd01d14ceeccfcef81e72e60ec499c2dab6e8" [label=""];
  "sha256:20c46d4cebe50297f33ec0fc435cd01d14ceeccfcef81e72e60ec499c2dab6e8" -> "sha256:d8852eff0a69f3eead7e45c751d4a35bdfa340719c0289d21379f6f2f922758e" [label=""];
  "sha256:d8852eff0a69f3eead7e45c751d4a35bdfa340719c0289d21379f6f2f922758e" -> "sha256:c195f1ca5acfd46bb24f9a29f4ad98c3375d1f6734a1fe2c60941c67651e08ad" [label=""];
  "sha256:c195f1ca5acfd46bb24f9a29f4ad98c3375d1f6734a1fe2c60941c67651e08ad" -> "sha256:a0b879140f3de2d98cbf9589befe71785b128ac7fba32ddeebed4aed9358ab70" [label=""];
}

