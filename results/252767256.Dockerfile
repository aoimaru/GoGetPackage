[app/sources/252767256.Dockerfile]
digraph {
  "sha256:f66e8e79b6d1cf96197c91c7c8c0fdb0170ad154468599bac0f5bae1ea21d37d" [label="docker-image://docker.io/library/ruby:2.4.1" shape="ellipse"];
  "sha256:17aa53e004fc9d40ae6f250b6b05415a21972b0c13dfbf8f96021159d06dab3d" [label="/bin/sh -c apt-get update && apt-get install -y qt5-default libqt5webkit5-dev streamer1.0-plugins-base gstreamer1.0-tools gstreamer1.0-x xvfb" shape="box"];
  "sha256:4fbf316049b787adefcfee68355d555f5637e039e802780b8e5fc8a8608154a1" [label="sha256:4fbf316049b787adefcfee68355d555f5637e039e802780b8e5fc8a8608154a1" shape="plaintext"];
  "sha256:f66e8e79b6d1cf96197c91c7c8c0fdb0170ad154468599bac0f5bae1ea21d37d" -> "sha256:17aa53e004fc9d40ae6f250b6b05415a21972b0c13dfbf8f96021159d06dab3d" [label=""];
  "sha256:17aa53e004fc9d40ae6f250b6b05415a21972b0c13dfbf8f96021159d06dab3d" -> "sha256:4fbf316049b787adefcfee68355d555f5637e039e802780b8e5fc8a8608154a1" [label=""];
}

