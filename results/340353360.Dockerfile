[app/sources/340353360.Dockerfile]
digraph {
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" [label="docker-image://docker.io/library/ubuntu:trusty" shape="ellipse"];
  "sha256:682aad9108bbe6a0c0d99477696dc64797877ae8e8f668281590c63bf333f125" [label="/bin/sh -c apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:96b6c3990b6efedb29a9661f433e4362297d303e88a67cc3c37bcb90461818c8" [label="/bin/sh -c apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654" shape="box"];
  "sha256:5fc5f9e763fe7c5e1f9636b45b062f48ef7d01e6686b55ff5edaf35e82db040c" [label="/bin/sh -c echo \"deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main\" > /etc/apt/sources.list.d/ros-latest.list" shape="box"];
  "sha256:f600b4130def6d21048283cd8d787bdd676ed14ea86bf5163ee18d5735a70d63" [label="/bin/sh -c apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:d46025c51c5d1782c3a18bef27e000bff6c84674cb9d5f20e17fb52a84c2b4c5" [label="/bin/sh -c rosdep init     && rosdep update" shape="box"];
  "sha256:c5bf3c3e2d256f93b7b84c66369f78b7becc8f1174548317d1e54f59a094eed4" [label="/bin/sh -c apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:dbd7c7cc498546efd994aa7d36f46845fb26cdec5fbea8f80f66fe5978a8477b" [label="local://context" shape="ellipse"];
  "sha256:e3c926ce491e08bc65ea23e4abc1d995a2a8933659a74dd274be67ef809f1425" [label="copy{src=/ros_entrypoint.sh, dest=/}" shape="note"];
  "sha256:67dbfb2abb0acd7179ec8a1312e8d01634a1da06c71eb69adec03fa35a2f232b" [label="sha256:67dbfb2abb0acd7179ec8a1312e8d01634a1da06c71eb69adec03fa35a2f232b" shape="plaintext"];
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" -> "sha256:682aad9108bbe6a0c0d99477696dc64797877ae8e8f668281590c63bf333f125" [label=""];
  "sha256:682aad9108bbe6a0c0d99477696dc64797877ae8e8f668281590c63bf333f125" -> "sha256:96b6c3990b6efedb29a9661f433e4362297d303e88a67cc3c37bcb90461818c8" [label=""];
  "sha256:96b6c3990b6efedb29a9661f433e4362297d303e88a67cc3c37bcb90461818c8" -> "sha256:5fc5f9e763fe7c5e1f9636b45b062f48ef7d01e6686b55ff5edaf35e82db040c" [label=""];
  "sha256:5fc5f9e763fe7c5e1f9636b45b062f48ef7d01e6686b55ff5edaf35e82db040c" -> "sha256:f600b4130def6d21048283cd8d787bdd676ed14ea86bf5163ee18d5735a70d63" [label=""];
  "sha256:f600b4130def6d21048283cd8d787bdd676ed14ea86bf5163ee18d5735a70d63" -> "sha256:d46025c51c5d1782c3a18bef27e000bff6c84674cb9d5f20e17fb52a84c2b4c5" [label=""];
  "sha256:d46025c51c5d1782c3a18bef27e000bff6c84674cb9d5f20e17fb52a84c2b4c5" -> "sha256:c5bf3c3e2d256f93b7b84c66369f78b7becc8f1174548317d1e54f59a094eed4" [label=""];
  "sha256:c5bf3c3e2d256f93b7b84c66369f78b7becc8f1174548317d1e54f59a094eed4" -> "sha256:e3c926ce491e08bc65ea23e4abc1d995a2a8933659a74dd274be67ef809f1425" [label=""];
  "sha256:dbd7c7cc498546efd994aa7d36f46845fb26cdec5fbea8f80f66fe5978a8477b" -> "sha256:e3c926ce491e08bc65ea23e4abc1d995a2a8933659a74dd274be67ef809f1425" [label=""];
  "sha256:e3c926ce491e08bc65ea23e4abc1d995a2a8933659a74dd274be67ef809f1425" -> "sha256:67dbfb2abb0acd7179ec8a1312e8d01634a1da06c71eb69adec03fa35a2f232b" [label=""];
}

