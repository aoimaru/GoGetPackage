[app/sources/210068689.Dockerfile]
digraph {
  "sha256:d3565fe040e2caf894a5c8f56e8ffd689d9357777f0c7b9ed780f1cf884ca342" [label="docker-image://docker.io/tensorflow/tensorflow:1.1.0-devel" shape="ellipse"];
  "sha256:83f19e1436dffa6c38554e4341deac8f53f183866375d20030e3c05229c148f2" [label="/bin/sh -c sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/' /etc/apt/sources.list" shape="box"];
  "sha256:6b2b52a9bd778bbf191f2fdd43e4cd7ce572be8d0ae5928e25160f6cd39ae5f8" [label="local://context" shape="ellipse"];
  "sha256:e99e76b72308b02218a36a3cbd22f2dda956c86c8cd1d3d5530543036785e412" [label="copy{src=/pip.conf, dest=/root/.pip/pip.conf}" shape="note"];
  "sha256:d5e6dfec73b2f49c2f1b326f4a059c43e5d1c1f4a90af8affaf55f29ca4e8270" [label="sha256:d5e6dfec73b2f49c2f1b326f4a059c43e5d1c1f4a90af8affaf55f29ca4e8270" shape="plaintext"];
  "sha256:d3565fe040e2caf894a5c8f56e8ffd689d9357777f0c7b9ed780f1cf884ca342" -> "sha256:83f19e1436dffa6c38554e4341deac8f53f183866375d20030e3c05229c148f2" [label=""];
  "sha256:83f19e1436dffa6c38554e4341deac8f53f183866375d20030e3c05229c148f2" -> "sha256:e99e76b72308b02218a36a3cbd22f2dda956c86c8cd1d3d5530543036785e412" [label=""];
  "sha256:6b2b52a9bd778bbf191f2fdd43e4cd7ce572be8d0ae5928e25160f6cd39ae5f8" -> "sha256:e99e76b72308b02218a36a3cbd22f2dda956c86c8cd1d3d5530543036785e412" [label=""];
  "sha256:e99e76b72308b02218a36a3cbd22f2dda956c86c8cd1d3d5530543036785e412" -> "sha256:d5e6dfec73b2f49c2f1b326f4a059c43e5d1c1f4a90af8affaf55f29ca4e8270" [label=""];
}

