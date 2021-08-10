[app/sources/256769174.Dockerfile]
digraph {
  "sha256:f6d5d0f61d69b05a28dfef83e310484282f20416f61829b3a709f066bc8c6bf8" [label="docker-image://docker.io/library/kibana:4.6.0" shape="ellipse"];
  "sha256:d24138494a905606c59e1c116708db6d268d906f984b1d117b8790da55e56a0d" [label="/bin/sh -c apt-get -y update  && apt-get install -y curl nano" shape="box"];
  "sha256:c4cf028ce07d571c8e913318c7edfa3e93f95a4003a5eab57a8bf804f929d9e0" [label="sha256:c4cf028ce07d571c8e913318c7edfa3e93f95a4003a5eab57a8bf804f929d9e0" shape="plaintext"];
  "sha256:f6d5d0f61d69b05a28dfef83e310484282f20416f61829b3a709f066bc8c6bf8" -> "sha256:d24138494a905606c59e1c116708db6d268d906f984b1d117b8790da55e56a0d" [label=""];
  "sha256:d24138494a905606c59e1c116708db6d268d906f984b1d117b8790da55e56a0d" -> "sha256:c4cf028ce07d571c8e913318c7edfa3e93f95a4003a5eab57a8bf804f929d9e0" [label=""];
}

