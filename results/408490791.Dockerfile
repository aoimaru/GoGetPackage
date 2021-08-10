[app/sources/408490791.Dockerfile]
digraph {
  "sha256:7b75d63590fc1ff62e10a8283fb1bee9acb3530ee4f9ea91d2ead7cc7397d86e" [label="docker-image://docker.io/shadowrobot/build-tools:bionic-melodic-ide" shape="ellipse"];
  "sha256:facaeff68a684a00928baf868ae1b17c315e0d63201bbb4cf012d79a4acd3271" [label="/bin/sh -c sudo apt-get update &&   sudo apt-get -y install libgl1-mesa-glx libgl1-mesa-dri &&   sudo rm -rf /var/lib/apt/lists/* &&   sudo usermod -a -G video user" shape="box"];
  "sha256:90199ce093744b481633b1cf30926bec03afab15e8cac9c7110fa926a0ae9c53" [label="sha256:90199ce093744b481633b1cf30926bec03afab15e8cac9c7110fa926a0ae9c53" shape="plaintext"];
  "sha256:7b75d63590fc1ff62e10a8283fb1bee9acb3530ee4f9ea91d2ead7cc7397d86e" -> "sha256:facaeff68a684a00928baf868ae1b17c315e0d63201bbb4cf012d79a4acd3271" [label=""];
  "sha256:facaeff68a684a00928baf868ae1b17c315e0d63201bbb4cf012d79a4acd3271" -> "sha256:90199ce093744b481633b1cf30926bec03afab15e8cac9c7110fa926a0ae9c53" [label=""];
}

