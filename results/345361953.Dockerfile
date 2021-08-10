[app/sources/345361953.Dockerfile]
digraph {
  "sha256:9aaf17bf030a4397d5ac4d0b1b69414866bc7c9afd735634a3049e4976c1374d" [label="docker-image://docker.io/balenalib/armv7hf-ubuntu:trusty-run" shape="ellipse"];
  "sha256:36a7ea6b63cefe3875a2ca4914236961d3d770fed5ccb6f5864708bc1b05253c" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tless \t\tkmod \t\tnano \t\tnet-tools \t\tifupdown \t\tiputils-ping \t\ti2c-tools \t\tusbutils \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:df4e39546487a727212c468bdb0323b9a444a451d8720df4aa1a6294870518fc" [label="sha256:df4e39546487a727212c468bdb0323b9a444a451d8720df4aa1a6294870518fc" shape="plaintext"];
  "sha256:9aaf17bf030a4397d5ac4d0b1b69414866bc7c9afd735634a3049e4976c1374d" -> "sha256:36a7ea6b63cefe3875a2ca4914236961d3d770fed5ccb6f5864708bc1b05253c" [label=""];
  "sha256:36a7ea6b63cefe3875a2ca4914236961d3d770fed5ccb6f5864708bc1b05253c" -> "sha256:df4e39546487a727212c468bdb0323b9a444a451d8720df4aa1a6294870518fc" [label=""];
}

