[app/sources/462537814.Dockerfile]
digraph {
  "sha256:26a10bd5d91080a5e340c727b0fb6c521fe5879cfe29a8a9754cb50ba084b644" [label="docker-image://docker.io/nvidia/cuda:9.0-cudnn7-runtime" shape="ellipse"];
  "sha256:12c416d2f23d262382780a949dae774e484589117b4fe90fe61c322c798b935a" [label="/bin/sh -c apt-get update && apt-get install -q -y     apt-utils     curl     dirmngr     gnupg2     less     lsb-release     lxde-core     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:2d8b29195c84c8f156797b4bdd85f40ab1fa84ab88afade301dff27c09abb74b" [label="/bin/sh -c apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116" shape="box"];
  "sha256:d23f17a5562799fbef89c6118b1cc6540e086ed3c4ac0fdc032f98b7398dcd2c" [label="/bin/sh -c echo \"deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main\" > /etc/apt/sources.list.d/ros-latest.list" shape="box"];
  "sha256:13f2a4155b68476e1f81d9c55bc2d49b2bfdda42aca1cfd8f70a24d1c85951f5" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends     ros-kinetic-ros-base    && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:116485f775b93aa1dc60ad716f28954d38f1245e56d074fc48f4e3e01f712d46" [label="/bin/sh -c apt-get update && apt-get install --no-install-recommends -y     python-rosinstall     python-rosinstall-generator     python-wstool     build-essential     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:1a04c7ad229dece9cbcf4e9084b43055b3e1f566b7ebdba0713a03e8003e4652" [label="/bin/sh -c rosdep init" shape="box"];
  "sha256:fe6dc193e3a69a284431ff58e6c988b5235cccf3242629fa409393a28698a23b" [label="/bin/sh -c useradd -m $USER_NAME &&     echo \"${USER_NAME} ALL=(ALL) NOPASSWD: ALL\" >> /etc/sudoers.d/${USER_NAME}" shape="box"];
  "sha256:e726014f650a4df18f7b974fe357dde7c35f461883095c7c811c54b6d371975f" [label="/bin/sh -c rosdep update" shape="box"];
  "sha256:41f35f49857c94c8fa53f4f4bd088f76a9889b1b138604f4bdef65496a4e6773" [label="/bin/sh -c echo \"source /opt/ros/$ROS_DISTRO/setup.bash\" >> /home/$USER_NAME/.bashrc" shape="box"];
  "sha256:4232c3b06571aca7d965f48d34da59e100178d4a1861484b615c92fdea7de8d8" [label="/bin/sh -c mkdir -p /home/$USER_NAME/catkin_ws/src" shape="box"];
  "sha256:41e3474ae4fa64ce1f9ddc363ccc34a53cdeaed4d91823390ade07653553b847" [label="mkdir{path=/home/ubuntu/catkin_ws/src}" shape="note"];
  "sha256:64cedd2a6655d2077c9c2e2e919ff661ddc77f97bb69e61a685123e576f31cdb" [label="/bin/sh -c git clone https://github.com/OUXT-Polaris/robotx_packages.git" shape="box"];
  "sha256:670212c6217cfd7fd4fa8e028a1d09326c11e12df103a4af6d6395636409f589" [label="mkdir{path=/home/ubuntu/catkin_ws/src/robotx_packages}" shape="note"];
  "sha256:18aae90ade009168ca6ab6ab1c85fa853253b5dab907a0310e5e465ed54eeb88" [label="mkdir{path=/home/ubuntu/catkin_ws}" shape="note"];
  "sha256:7bb83dd66d497744ef7b9e4cf9bd1bdd9fcff3f12ac01c40030e5141883dbcf1" [label="/bin/sh -c sudo apt-get update &&     export DEBIAN_FRONTEND=noninteractive &&     rosdep install -i -r -y --from-paths src --rosdistro kinetic" shape="box"];
  "sha256:8cf398977b121838712d13a5d7d012cb4856d5b17a2d6456c647fd39c210d019" [label="/bin/sh -c /bin/bash -c \". /opt/ros/$ROS_DISTRO/setup.bash &&     rm -rf devel build &&     catkin_make_isolated\"" shape="box"];
  "sha256:c4e09957b5ab34fbd1879b8fc3c527b88ea8acea47925e5290e91dd12c704885" [label="/bin/sh -c echo \"source /home/$USER_NAME/catkin_ws/devel_isolated/setup.bash\" >> /home/$USER_NAME/.bashrc" shape="box"];
  "sha256:a438e685ad72b84afbf649a4c8b6a7dda0a27301e87b16a550b283f5b1e54221" [label="sha256:a438e685ad72b84afbf649a4c8b6a7dda0a27301e87b16a550b283f5b1e54221" shape="plaintext"];
  "sha256:26a10bd5d91080a5e340c727b0fb6c521fe5879cfe29a8a9754cb50ba084b644" -> "sha256:12c416d2f23d262382780a949dae774e484589117b4fe90fe61c322c798b935a" [label=""];
  "sha256:12c416d2f23d262382780a949dae774e484589117b4fe90fe61c322c798b935a" -> "sha256:2d8b29195c84c8f156797b4bdd85f40ab1fa84ab88afade301dff27c09abb74b" [label=""];
  "sha256:2d8b29195c84c8f156797b4bdd85f40ab1fa84ab88afade301dff27c09abb74b" -> "sha256:d23f17a5562799fbef89c6118b1cc6540e086ed3c4ac0fdc032f98b7398dcd2c" [label=""];
  "sha256:d23f17a5562799fbef89c6118b1cc6540e086ed3c4ac0fdc032f98b7398dcd2c" -> "sha256:13f2a4155b68476e1f81d9c55bc2d49b2bfdda42aca1cfd8f70a24d1c85951f5" [label=""];
  "sha256:13f2a4155b68476e1f81d9c55bc2d49b2bfdda42aca1cfd8f70a24d1c85951f5" -> "sha256:116485f775b93aa1dc60ad716f28954d38f1245e56d074fc48f4e3e01f712d46" [label=""];
  "sha256:116485f775b93aa1dc60ad716f28954d38f1245e56d074fc48f4e3e01f712d46" -> "sha256:1a04c7ad229dece9cbcf4e9084b43055b3e1f566b7ebdba0713a03e8003e4652" [label=""];
  "sha256:1a04c7ad229dece9cbcf4e9084b43055b3e1f566b7ebdba0713a03e8003e4652" -> "sha256:fe6dc193e3a69a284431ff58e6c988b5235cccf3242629fa409393a28698a23b" [label=""];
  "sha256:fe6dc193e3a69a284431ff58e6c988b5235cccf3242629fa409393a28698a23b" -> "sha256:e726014f650a4df18f7b974fe357dde7c35f461883095c7c811c54b6d371975f" [label=""];
  "sha256:e726014f650a4df18f7b974fe357dde7c35f461883095c7c811c54b6d371975f" -> "sha256:41f35f49857c94c8fa53f4f4bd088f76a9889b1b138604f4bdef65496a4e6773" [label=""];
  "sha256:41f35f49857c94c8fa53f4f4bd088f76a9889b1b138604f4bdef65496a4e6773" -> "sha256:4232c3b06571aca7d965f48d34da59e100178d4a1861484b615c92fdea7de8d8" [label=""];
  "sha256:4232c3b06571aca7d965f48d34da59e100178d4a1861484b615c92fdea7de8d8" -> "sha256:41e3474ae4fa64ce1f9ddc363ccc34a53cdeaed4d91823390ade07653553b847" [label=""];
  "sha256:41e3474ae4fa64ce1f9ddc363ccc34a53cdeaed4d91823390ade07653553b847" -> "sha256:64cedd2a6655d2077c9c2e2e919ff661ddc77f97bb69e61a685123e576f31cdb" [label=""];
  "sha256:64cedd2a6655d2077c9c2e2e919ff661ddc77f97bb69e61a685123e576f31cdb" -> "sha256:670212c6217cfd7fd4fa8e028a1d09326c11e12df103a4af6d6395636409f589" [label=""];
  "sha256:670212c6217cfd7fd4fa8e028a1d09326c11e12df103a4af6d6395636409f589" -> "sha256:18aae90ade009168ca6ab6ab1c85fa853253b5dab907a0310e5e465ed54eeb88" [label=""];
  "sha256:18aae90ade009168ca6ab6ab1c85fa853253b5dab907a0310e5e465ed54eeb88" -> "sha256:7bb83dd66d497744ef7b9e4cf9bd1bdd9fcff3f12ac01c40030e5141883dbcf1" [label=""];
  "sha256:7bb83dd66d497744ef7b9e4cf9bd1bdd9fcff3f12ac01c40030e5141883dbcf1" -> "sha256:8cf398977b121838712d13a5d7d012cb4856d5b17a2d6456c647fd39c210d019" [label=""];
  "sha256:8cf398977b121838712d13a5d7d012cb4856d5b17a2d6456c647fd39c210d019" -> "sha256:c4e09957b5ab34fbd1879b8fc3c527b88ea8acea47925e5290e91dd12c704885" [label=""];
  "sha256:c4e09957b5ab34fbd1879b8fc3c527b88ea8acea47925e5290e91dd12c704885" -> "sha256:a438e685ad72b84afbf649a4c8b6a7dda0a27301e87b16a550b283f5b1e54221" [label=""];
}

