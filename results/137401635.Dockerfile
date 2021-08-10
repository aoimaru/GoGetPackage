[app/sources/137401635.Dockerfile]
digraph {
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" [label="docker-image://docker.io/library/ubuntu:trusty" shape="ellipse"];
  "sha256:b854c5ba23e2728d34b4da3a5fdb67ababab4d9458bcc15c4e2acb1a00eb80bb" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:555fae4274dbee17a1ca5f42aa039ac72a4432a3eb8ca96a8c4db76ececddf5e" [label="/bin/sh -c apt-get install -y     python python-pip" shape="box"];
  "sha256:eb4915db2c6afa565c94fecef8e4ac2bb02ba842e9012781950f60d8bd74ad97" [label="/bin/sh -c pip install setuptools urp" shape="box"];
  "sha256:b3ac132e647d29fa9cdcaa5a7898fc6d276514c2d8efc5a02032783cd45ac07d" [label="sha256:b3ac132e647d29fa9cdcaa5a7898fc6d276514c2d8efc5a02032783cd45ac07d" shape="plaintext"];
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" -> "sha256:b854c5ba23e2728d34b4da3a5fdb67ababab4d9458bcc15c4e2acb1a00eb80bb" [label=""];
  "sha256:b854c5ba23e2728d34b4da3a5fdb67ababab4d9458bcc15c4e2acb1a00eb80bb" -> "sha256:555fae4274dbee17a1ca5f42aa039ac72a4432a3eb8ca96a8c4db76ececddf5e" [label=""];
  "sha256:555fae4274dbee17a1ca5f42aa039ac72a4432a3eb8ca96a8c4db76ececddf5e" -> "sha256:eb4915db2c6afa565c94fecef8e4ac2bb02ba842e9012781950f60d8bd74ad97" [label=""];
  "sha256:eb4915db2c6afa565c94fecef8e4ac2bb02ba842e9012781950f60d8bd74ad97" -> "sha256:b3ac132e647d29fa9cdcaa5a7898fc6d276514c2d8efc5a02032783cd45ac07d" [label=""];
}

