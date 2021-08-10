[app/sources/481774657.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:450040e2bbb7be67c53832f3d763cee35b2fe5956932400534a595f88389aac5" [label="/bin/sh -c apt-get update &&     apt-get install -y     haproxy     procps     rsyslog     curl;" shape="box"];
  "sha256:4f597ed9d121cd8b5f4f650e1e6b15bfc91a93e8ad8f0a2b9a1c56a92124ff4f" [label="local://context" shape="ellipse"];
  "sha256:9ec23548f9a60f273de49643bd6bb2c9f13af3c5091ee08e3f0a668f7703d76e" [label="copy{src=/haproxy.cfg, dest=/etc/haproxy/haproxy.cfg}" shape="note"];
  "sha256:8dd38a9a626901d0db3547a60ade06936f45fe9fbe0e320095cec99192d6414c" [label="copy{src=/bootstrap.sh, dest=/root/bootstrap.sh}" shape="note"];
  "sha256:d28dd6a9fe7fe6599389e5e503be2fa5dff52e84f7e61bf07b847d33a0aa0805" [label="/bin/sh -c apt-get clean && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:96ba6a0fc815a81d7bc4ff83807b60323caf90f1112d748b9eb7208c662d848e" [label="sha256:96ba6a0fc815a81d7bc4ff83807b60323caf90f1112d748b9eb7208c662d848e" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:450040e2bbb7be67c53832f3d763cee35b2fe5956932400534a595f88389aac5" [label=""];
  "sha256:450040e2bbb7be67c53832f3d763cee35b2fe5956932400534a595f88389aac5" -> "sha256:9ec23548f9a60f273de49643bd6bb2c9f13af3c5091ee08e3f0a668f7703d76e" [label=""];
  "sha256:4f597ed9d121cd8b5f4f650e1e6b15bfc91a93e8ad8f0a2b9a1c56a92124ff4f" -> "sha256:9ec23548f9a60f273de49643bd6bb2c9f13af3c5091ee08e3f0a668f7703d76e" [label=""];
  "sha256:9ec23548f9a60f273de49643bd6bb2c9f13af3c5091ee08e3f0a668f7703d76e" -> "sha256:8dd38a9a626901d0db3547a60ade06936f45fe9fbe0e320095cec99192d6414c" [label=""];
  "sha256:4f597ed9d121cd8b5f4f650e1e6b15bfc91a93e8ad8f0a2b9a1c56a92124ff4f" -> "sha256:8dd38a9a626901d0db3547a60ade06936f45fe9fbe0e320095cec99192d6414c" [label=""];
  "sha256:8dd38a9a626901d0db3547a60ade06936f45fe9fbe0e320095cec99192d6414c" -> "sha256:d28dd6a9fe7fe6599389e5e503be2fa5dff52e84f7e61bf07b847d33a0aa0805" [label=""];
  "sha256:d28dd6a9fe7fe6599389e5e503be2fa5dff52e84f7e61bf07b847d33a0aa0805" -> "sha256:96ba6a0fc815a81d7bc4ff83807b60323caf90f1112d748b9eb7208c662d848e" [label=""];
}

