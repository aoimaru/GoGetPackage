[app/sources/352462748.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:f10b56c8ec016c0c76012c237d060227cd3303f7d34416c1c28f3f9d3f93ac9c" [label="local://context" shape="ellipse"];
  "sha256:34471fe2f0d746bc1500c9ce84e1810a0c87e6f2bb0afe7164dbf4a33f668c60" [label="copy{src=/src/docker-install.sh, dest=/tmp/docker-install.sh}" shape="note"];
  "sha256:6fbd1823d9949f0d7fbd563df7f53f616a5e849b4c73a4207ff9ead573d1b8ce" [label="/bin/sh -c /tmp/docker-install.sh  && rm -rvf /tmp/*" shape="box"];
  "sha256:33fbecbbd735ae844781ec1a89c44c5a38669769e8528b376e3d41c693748877" [label="copy{src=/src/*.py, dest=/},copy{src=/src/track*, dest=/},copy{src=/src/*.sh, dest=/}" shape="note"];
  "sha256:8df8aa47a1f97a5610e7f0c79777972518b784947bdb987a0ec0d8adede984df" [label="copy{src=/src/reload, dest=/usr/bin/reload}" shape="note"];
  "sha256:ff71ed9f593e71dc0f6de443114a6ae9b24ded161f0f3274d1fe5bef178cacff" [label="copy{src=/src/default.vcl, dest=/etc/varnish/default.vcl}" shape="note"];
  "sha256:04d36cfa2b24d5a49df65611e5ddf781e5000a0544c1824b9f8af7cfd637158f" [label="sha256:04d36cfa2b24d5a49df65611e5ddf781e5000a0544c1824b9f8af7cfd637158f" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:34471fe2f0d746bc1500c9ce84e1810a0c87e6f2bb0afe7164dbf4a33f668c60" [label=""];
  "sha256:f10b56c8ec016c0c76012c237d060227cd3303f7d34416c1c28f3f9d3f93ac9c" -> "sha256:34471fe2f0d746bc1500c9ce84e1810a0c87e6f2bb0afe7164dbf4a33f668c60" [label=""];
  "sha256:34471fe2f0d746bc1500c9ce84e1810a0c87e6f2bb0afe7164dbf4a33f668c60" -> "sha256:6fbd1823d9949f0d7fbd563df7f53f616a5e849b4c73a4207ff9ead573d1b8ce" [label=""];
  "sha256:6fbd1823d9949f0d7fbd563df7f53f616a5e849b4c73a4207ff9ead573d1b8ce" -> "sha256:33fbecbbd735ae844781ec1a89c44c5a38669769e8528b376e3d41c693748877" [label=""];
  "sha256:f10b56c8ec016c0c76012c237d060227cd3303f7d34416c1c28f3f9d3f93ac9c" -> "sha256:33fbecbbd735ae844781ec1a89c44c5a38669769e8528b376e3d41c693748877" [label=""];
  "sha256:33fbecbbd735ae844781ec1a89c44c5a38669769e8528b376e3d41c693748877" -> "sha256:8df8aa47a1f97a5610e7f0c79777972518b784947bdb987a0ec0d8adede984df" [label=""];
  "sha256:f10b56c8ec016c0c76012c237d060227cd3303f7d34416c1c28f3f9d3f93ac9c" -> "sha256:8df8aa47a1f97a5610e7f0c79777972518b784947bdb987a0ec0d8adede984df" [label=""];
  "sha256:8df8aa47a1f97a5610e7f0c79777972518b784947bdb987a0ec0d8adede984df" -> "sha256:ff71ed9f593e71dc0f6de443114a6ae9b24ded161f0f3274d1fe5bef178cacff" [label=""];
  "sha256:f10b56c8ec016c0c76012c237d060227cd3303f7d34416c1c28f3f9d3f93ac9c" -> "sha256:ff71ed9f593e71dc0f6de443114a6ae9b24ded161f0f3274d1fe5bef178cacff" [label=""];
  "sha256:ff71ed9f593e71dc0f6de443114a6ae9b24ded161f0f3274d1fe5bef178cacff" -> "sha256:04d36cfa2b24d5a49df65611e5ddf781e5000a0544c1824b9f8af7cfd637158f" [label=""];
}

