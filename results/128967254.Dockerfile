[app/sources/128967254.Dockerfile]
digraph {
  "sha256:d7aef73ab2e5e09b51f96cc836e79bc762ad6a41fb242e09c1e8acfc14da6bcf" [label="local://context" shape="ellipse"];
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" [label="docker-image://docker.io/library/busybox:latest" shape="ellipse"];
  "sha256:6511a9adff6340c996316c2ac789b2e308c0078c42de4ed70bf17ca22f65c2fb" [label="copy{src=/bin/redis-shake, dest=/usr/local/app/redis-shake}" shape="note"];
  "sha256:68dedc8d6da06ce98f7a28ecf10d5e14533c5218a11d67858686808d9c6d3b8f" [label="copy{src=/conf/redis-shake.conf, dest=/usr/local/app/redis-shake.conf}" shape="note"];
  "sha256:63e3dab476e647d62e4b9e55057ffc1cfc36c023b0544c3c32af9073205110c4" [label="sha256:63e3dab476e647d62e4b9e55057ffc1cfc36c023b0544c3c32af9073205110c4" shape="plaintext"];
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" -> "sha256:6511a9adff6340c996316c2ac789b2e308c0078c42de4ed70bf17ca22f65c2fb" [label=""];
  "sha256:d7aef73ab2e5e09b51f96cc836e79bc762ad6a41fb242e09c1e8acfc14da6bcf" -> "sha256:6511a9adff6340c996316c2ac789b2e308c0078c42de4ed70bf17ca22f65c2fb" [label=""];
  "sha256:6511a9adff6340c996316c2ac789b2e308c0078c42de4ed70bf17ca22f65c2fb" -> "sha256:68dedc8d6da06ce98f7a28ecf10d5e14533c5218a11d67858686808d9c6d3b8f" [label=""];
  "sha256:d7aef73ab2e5e09b51f96cc836e79bc762ad6a41fb242e09c1e8acfc14da6bcf" -> "sha256:68dedc8d6da06ce98f7a28ecf10d5e14533c5218a11d67858686808d9c6d3b8f" [label=""];
  "sha256:68dedc8d6da06ce98f7a28ecf10d5e14533c5218a11d67858686808d9c6d3b8f" -> "sha256:63e3dab476e647d62e4b9e55057ffc1cfc36c023b0544c3c32af9073205110c4" [label=""];
}

