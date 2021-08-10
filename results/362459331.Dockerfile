[app/sources/362459331.Dockerfile]
digraph {
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" [label="docker-image://docker.io/library/ubuntu:trusty" shape="ellipse"];
  "sha256:03e92cc19ee46f35d6742e51f0dac20787acd7db32735f4b4eb3d6c59d4120e9" [label="/bin/sh -c apt-get update && apt-get install -y \tpython-stdeb \tfakeroot \tpython-all \tgit" shape="box"];
  "sha256:5f04adbffa2535dadf4784760d0156f69af8ae65995bf697785671ebc178e54e" [label="local://context" shape="ellipse"];
  "sha256:f9c4a3df0537b4f6bb7336407810ad044e02e24683d2c9562ced18e4ee036c5b" [label="copy{src=/build-debs.sh, dest=/}" shape="note"];
  "sha256:f90e5d3f4f01a4da9657d00ce69c29c00408542c25c8c016609baf734d09014c" [label="sha256:f90e5d3f4f01a4da9657d00ce69c29c00408542c25c8c016609baf734d09014c" shape="plaintext"];
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" -> "sha256:03e92cc19ee46f35d6742e51f0dac20787acd7db32735f4b4eb3d6c59d4120e9" [label=""];
  "sha256:03e92cc19ee46f35d6742e51f0dac20787acd7db32735f4b4eb3d6c59d4120e9" -> "sha256:f9c4a3df0537b4f6bb7336407810ad044e02e24683d2c9562ced18e4ee036c5b" [label=""];
  "sha256:5f04adbffa2535dadf4784760d0156f69af8ae65995bf697785671ebc178e54e" -> "sha256:f9c4a3df0537b4f6bb7336407810ad044e02e24683d2c9562ced18e4ee036c5b" [label=""];
  "sha256:f9c4a3df0537b4f6bb7336407810ad044e02e24683d2c9562ced18e4ee036c5b" -> "sha256:f90e5d3f4f01a4da9657d00ce69c29c00408542c25c8c016609baf734d09014c" [label=""];
}

