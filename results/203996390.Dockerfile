[app/sources/203996390.Dockerfile]
digraph {
  "sha256:9f3eab324c003c16241d4f8b78381e4c1ee354f4fb558bdf84fcb9b184ac9b16" [label="local://context" shape="ellipse"];
  "sha256:33be36a59cbd7b49d0db537723bac8b0c551b0422a265c48720771211e08dde0" [label="docker-image://docker.io/jacknlliu/ubuntu-init:16.04" shape="ellipse"];
  "sha256:2794230e2417c081cab281b8f9bf52d6676d578316f370f3e7e78d9c4b403699" [label="/bin/sh -c apt-get update -y && apt-get install -y -q --no-install-recommends apt-utils apt-transport-https aptitude locales && locale-gen en_US.UTF-8" shape="box"];
  "sha256:e2230867e61341bf835b4329d88d8bcb96a23741c6d48371e1b837dd967aa5e6" [label="/bin/sh -c echo \"deb http://packages.ros.org/ros/ubuntu xenial main\" > /etc/apt/sources.list.d/ros-latest.list          && apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116          && aptitude update -y -q && aptitude install -y -q -R ros-kinetic-desktop python-rosinstall ninja-build python3-pip python3-setuptools python3-defusedxml python3-dev     ros-kinetic-rosbridge-library ros-kinetic-rosbridge-server ros-kinetic-rosbridge-suite" shape="box"];
  "sha256:fb2fbbaf61879d661b7ed8ae293f2e8ff75e7582d5e1866a0585e7ac0a7c9bbf" [label="/bin/sh -c echo \"deb http://packages.osrfoundation.org/gazebo/ubuntu xenial main\" > /etc/apt/sources.list.d/gazebo-latest.list     && curl http://packages.osrfoundation.org/gazebo.key |apt-key add -     && aptitude update -y -q     && aptitude remove -y -q gazebo7; aptitude install -y -q -R gazebo9" shape="box"];
  "sha256:afba7bbdad2038b98554e99871cd4cec6609eede6c15ca7d792f1111643815db" [label="/bin/sh -c aptitude install -y -q -R  ros-kinetic-gazebo9-ros-control ros-kinetic-gazebo9-ros-pkgs ros-kinetic-tf2-geometry-msgs ros-kinetic-tf2-sensor-msgs" shape="box"];
  "sha256:fbe87589442860601d6135dbca5ae5b4df1619382580615095c8c72e85a6d313" [label="/bin/sh -c pip3 install --upgrade pip && pip3 install --no-cache-dir catkin-tools rospkg ws4py transforms3d trollius" shape="box"];
  "sha256:fd7e894c759855d3d455f7312e64d54514bfc1b40e56539e392e98633069bb59" [label="/bin/sh -c pip install empy" shape="box"];
  "sha256:5982cb6a8f41e210df33f86882e9b9b0bd362082dfec226bd2f48c3adf971692" [label="/bin/sh -c aptitude install -y -q -R build-essential gdb         && aptitude install -y -q -R mesa-common-dev libglu1-mesa-dev libfontconfig1 qt5-default qtcreator qtdeclarative5-qtquick2-plugin         && aptitude install -y -q -R libgl1-mesa-glx libgl1-mesa-dri         && aptitude install -y -q -R mesa-vdpau-drivers xserver-xorg-video-ati mesa-utils module-init-tools" shape="box"];
  "sha256:9c698f6275092652b7fc155179d6946cafd89f6ecfe8aab288166ec37d4c253f" [label="/bin/sh -c aptitude install -y -q -R  wget python-pip pylint clang libxss1 libnss3 libnotify4 libxtst6 ~nlibgconf-2     && export ROBOWAREVERSION=\"1.1.0-1514335284\"      && wget https://github.com/tonyrobotics/RoboWare/raw/master/Studio/roboware-studio_${ROBOWAREVERSION}_amd64.deb -O roboware_amd64.deb     && chmod a+x roboware_amd64.deb && dpkg -i roboware_amd64.deb     && apt-get install -y --no-install-recommends -f     && rm -f roboware_amd64.deb" shape="box"];
  "sha256:1f446f11dc1a47fca8125fd5b0e3582bbb6615283b449073d37b8f93820fbcfd" [label="/bin/sh -c aptitude update -y -q && aptitude install -y -q -R  bash-completion wget vim git iputils-ping iproute2 netcat tmux terminator xauth openssh-server sudo pcmanfm" shape="box"];
  "sha256:413bec6669807a6b1b38d15e9d2b4e16c2f32d849bf282e87cd18ec8a638c895" [label="/bin/sh -c aptitude install -y -q -R     ros-kinetic-ros-controllers     ros-kinetic-rqt-controller-manager     ros-kinetic-moveit     ros-kinetic-orocos-kdl     ros-kinetic-orocos-kinematics-dynamics     ros-kinetic-pid          && aptitude install -y -q -R libignition-math2-dev ros-kinetic-barrett-hand         && aptitude install -y -q -R libusb-1.0-0 libusb-1.0-0-dev freeglut3 freeglut3-dev         && aptitude install -y -q -R ros-kinetic-calibration-estimation ros-kinetic-kdl-parser-py          && aptitude install -y -q -R ros-kinetic-katana-moveit-ikfast-plugin  ros-kinetic-trac-ik-lib ros-kinetic-trac-ik-kinematics-plugin         && aptitude install -y -q -R ros-kinetic-video-stream-opencv ros-kinetic-find-object-2d libcgal-dev  libcgal-qt5-dev" shape="box"];
  "sha256:2bef813372bb6541b3e75348474f787398e9b7211438e28ed9423e2512beea33" [label="/bin/sh -c mkdir -p /opt/scripts/container/" shape="box"];
  "sha256:8dd4f17548c88a27f6fb0e9d6effac7f10b52554061db4c09be0de69cc313521" [label="copy{src=/scripts/*, dest=/opt/scripts/container/}" shape="note"];
  "sha256:894a34f2dfeda2bd3316a7e2db3b2945e5efafe0e72312b3db1870f8ac93106a" [label="/bin/sh -c chmod -R a+rx /opt/scripts/ && cp /opt/scripts/container/containerinit.sh /etc/my_init.d/ && chmod u+x /etc/my_init.d/containerinit.sh" shape="box"];
  "sha256:7093a537d9033a346e32b0d5e6abbc807a35dfa12d8926c2701b82c16d381068" [label="/bin/sh -c /opt/scripts/container/quick-fix.sh" shape="box"];
  "sha256:7687e2039871f71f9014f81a8d774f6700e0a94e0ad307994d57d7727a7e1b56" [label="/bin/sh -c apt-get autoclean     && apt-get clean all     && apt-get autoremove -y     && rm -rf /var/lib/apt/lists/*     && rm -rf /tmp/* /var/tmp/*" shape="box"];
  "sha256:5b5fcf6603ee9bede596e50d64819b9bdf397dba7432f211bca2ec0c972ed9cd" [label="/bin/sh -c mkdir -p /var/run/sshd && echo \"X11UseLocalhost no\" >> /etc/ssh/sshd_config     &&  rm -f /etc/service/sshd/down  && /etc/my_init.d/00_regen_ssh_host_keys.sh" shape="box"];
  "sha256:97341421c96ac241000aff002d67bc52aae196309e3e1a297f45d5927fe089ff" [label="/bin/sh -c adduser --gecos \"ROS User\" --home /home/ros --disabled-password ros &&     usermod -a -G dialout ros &&     echo \"ros ALL=(ALL) NOPASSWD: ALL\" > /etc/sudoers.d/99_aptget" shape="box"];
  "sha256:ef9e0f40ee4ef97aba8db16c035885d09c1f5615b5fb7a5c5b01d67e1f8852ee" [label="/bin/sh -c sudo rosdep init && rosdep update      && echo \"source \"/opt/ros/$ROS_DISTRO/setup.bash\"\" >> /home/ros/.bashrc" shape="box"];
  "sha256:5d71890cc5987b985c50814930f0f357be3f2fe19730465c2a4460a5fbcb9813" [label="/bin/sh -c mkdir -p /home/ros/.config/QtProject" shape="box"];
  "sha256:5c86b1efb7d7aba2aa86683a637db817e46642f544c9287099d84728808f45f2" [label="copy{src=/config/QtCreator.ini, dest=/home/ros/.config/QtProject/}" shape="note"];
  "sha256:6a1135bae708ac574c4f9fa1e9ae77ea894e0195440fddbb4236c804a85c1481" [label="/bin/sh -c chown -R ros:ros  /home/ros/.config/QtProject/" shape="box"];
  "sha256:587ca1ecedc987b538090a4e8d5cef6e0cc71f6174d03bdcf5511325443dfa5a" [label="/bin/sh -c mkdir -p /home/ros/.gazebo/models && chown -R ros:ros /home/ros/.gazebo" shape="box"];
  "sha256:5beba857f15e46ef7cdb3db2e563e97ef2866647e642bf98eba791a34d833894" [label="mkdir{path=/home/ros}" shape="note"];
  "sha256:125f7866284d62c0b0a52e8e7ed97a24ec6b00335d326f3a108f3dcd817e69c9" [label="sha256:125f7866284d62c0b0a52e8e7ed97a24ec6b00335d326f3a108f3dcd817e69c9" shape="plaintext"];
  "sha256:33be36a59cbd7b49d0db537723bac8b0c551b0422a265c48720771211e08dde0" -> "sha256:2794230e2417c081cab281b8f9bf52d6676d578316f370f3e7e78d9c4b403699" [label=""];
  "sha256:2794230e2417c081cab281b8f9bf52d6676d578316f370f3e7e78d9c4b403699" -> "sha256:e2230867e61341bf835b4329d88d8bcb96a23741c6d48371e1b837dd967aa5e6" [label=""];
  "sha256:e2230867e61341bf835b4329d88d8bcb96a23741c6d48371e1b837dd967aa5e6" -> "sha256:fb2fbbaf61879d661b7ed8ae293f2e8ff75e7582d5e1866a0585e7ac0a7c9bbf" [label=""];
  "sha256:fb2fbbaf61879d661b7ed8ae293f2e8ff75e7582d5e1866a0585e7ac0a7c9bbf" -> "sha256:afba7bbdad2038b98554e99871cd4cec6609eede6c15ca7d792f1111643815db" [label=""];
  "sha256:afba7bbdad2038b98554e99871cd4cec6609eede6c15ca7d792f1111643815db" -> "sha256:fbe87589442860601d6135dbca5ae5b4df1619382580615095c8c72e85a6d313" [label=""];
  "sha256:fbe87589442860601d6135dbca5ae5b4df1619382580615095c8c72e85a6d313" -> "sha256:fd7e894c759855d3d455f7312e64d54514bfc1b40e56539e392e98633069bb59" [label=""];
  "sha256:fd7e894c759855d3d455f7312e64d54514bfc1b40e56539e392e98633069bb59" -> "sha256:5982cb6a8f41e210df33f86882e9b9b0bd362082dfec226bd2f48c3adf971692" [label=""];
  "sha256:5982cb6a8f41e210df33f86882e9b9b0bd362082dfec226bd2f48c3adf971692" -> "sha256:9c698f6275092652b7fc155179d6946cafd89f6ecfe8aab288166ec37d4c253f" [label=""];
  "sha256:9c698f6275092652b7fc155179d6946cafd89f6ecfe8aab288166ec37d4c253f" -> "sha256:1f446f11dc1a47fca8125fd5b0e3582bbb6615283b449073d37b8f93820fbcfd" [label=""];
  "sha256:1f446f11dc1a47fca8125fd5b0e3582bbb6615283b449073d37b8f93820fbcfd" -> "sha256:413bec6669807a6b1b38d15e9d2b4e16c2f32d849bf282e87cd18ec8a638c895" [label=""];
  "sha256:413bec6669807a6b1b38d15e9d2b4e16c2f32d849bf282e87cd18ec8a638c895" -> "sha256:2bef813372bb6541b3e75348474f787398e9b7211438e28ed9423e2512beea33" [label=""];
  "sha256:2bef813372bb6541b3e75348474f787398e9b7211438e28ed9423e2512beea33" -> "sha256:8dd4f17548c88a27f6fb0e9d6effac7f10b52554061db4c09be0de69cc313521" [label=""];
  "sha256:9f3eab324c003c16241d4f8b78381e4c1ee354f4fb558bdf84fcb9b184ac9b16" -> "sha256:8dd4f17548c88a27f6fb0e9d6effac7f10b52554061db4c09be0de69cc313521" [label=""];
  "sha256:8dd4f17548c88a27f6fb0e9d6effac7f10b52554061db4c09be0de69cc313521" -> "sha256:894a34f2dfeda2bd3316a7e2db3b2945e5efafe0e72312b3db1870f8ac93106a" [label=""];
  "sha256:894a34f2dfeda2bd3316a7e2db3b2945e5efafe0e72312b3db1870f8ac93106a" -> "sha256:7093a537d9033a346e32b0d5e6abbc807a35dfa12d8926c2701b82c16d381068" [label=""];
  "sha256:7093a537d9033a346e32b0d5e6abbc807a35dfa12d8926c2701b82c16d381068" -> "sha256:7687e2039871f71f9014f81a8d774f6700e0a94e0ad307994d57d7727a7e1b56" [label=""];
  "sha256:7687e2039871f71f9014f81a8d774f6700e0a94e0ad307994d57d7727a7e1b56" -> "sha256:5b5fcf6603ee9bede596e50d64819b9bdf397dba7432f211bca2ec0c972ed9cd" [label=""];
  "sha256:5b5fcf6603ee9bede596e50d64819b9bdf397dba7432f211bca2ec0c972ed9cd" -> "sha256:97341421c96ac241000aff002d67bc52aae196309e3e1a297f45d5927fe089ff" [label=""];
  "sha256:97341421c96ac241000aff002d67bc52aae196309e3e1a297f45d5927fe089ff" -> "sha256:ef9e0f40ee4ef97aba8db16c035885d09c1f5615b5fb7a5c5b01d67e1f8852ee" [label=""];
  "sha256:ef9e0f40ee4ef97aba8db16c035885d09c1f5615b5fb7a5c5b01d67e1f8852ee" -> "sha256:5d71890cc5987b985c50814930f0f357be3f2fe19730465c2a4460a5fbcb9813" [label=""];
  "sha256:5d71890cc5987b985c50814930f0f357be3f2fe19730465c2a4460a5fbcb9813" -> "sha256:5c86b1efb7d7aba2aa86683a637db817e46642f544c9287099d84728808f45f2" [label=""];
  "sha256:9f3eab324c003c16241d4f8b78381e4c1ee354f4fb558bdf84fcb9b184ac9b16" -> "sha256:5c86b1efb7d7aba2aa86683a637db817e46642f544c9287099d84728808f45f2" [label=""];
  "sha256:5c86b1efb7d7aba2aa86683a637db817e46642f544c9287099d84728808f45f2" -> "sha256:6a1135bae708ac574c4f9fa1e9ae77ea894e0195440fddbb4236c804a85c1481" [label=""];
  "sha256:6a1135bae708ac574c4f9fa1e9ae77ea894e0195440fddbb4236c804a85c1481" -> "sha256:587ca1ecedc987b538090a4e8d5cef6e0cc71f6174d03bdcf5511325443dfa5a" [label=""];
  "sha256:587ca1ecedc987b538090a4e8d5cef6e0cc71f6174d03bdcf5511325443dfa5a" -> "sha256:5beba857f15e46ef7cdb3db2e563e97ef2866647e642bf98eba791a34d833894" [label=""];
  "sha256:5beba857f15e46ef7cdb3db2e563e97ef2866647e642bf98eba791a34d833894" -> "sha256:125f7866284d62c0b0a52e8e7ed97a24ec6b00335d326f3a108f3dcd817e69c9" [label=""];
}

