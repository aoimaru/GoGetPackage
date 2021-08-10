[app/sources/483733313.Dockerfile]
digraph {
  "sha256:dc57b30d04f0feb2e2cac7498143b81e31f0e1784143335b6a4d21e858607b2f" [label="docker-image://docker.io/library/fedora:rawhide" shape="ellipse"];
  "sha256:ffbbe813a40328cd758817ea896195e6790ef5b6b5920bba9f520a588fbefb88" [label="/bin/sh -c yum -y update && yum clean all" shape="box"];
  "sha256:da60fb3dcd4cfdf1fe545f87b35a9c8232b19006ff42237e79f1407dd0366e40" [label="/bin/sh -c yum -y install systemd; yum clean all; (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == systemd-tmpfiles-setup.service ] || rm -f $i; done); rm -f /lib/systemd/system/multi-user.target.wants/*;rm -f /etc/systemd/system/*.wants/*;rm -f /lib/systemd/system/local-fs.target.wants/*; rm -f /lib/systemd/system/sockets.target.wants/*udev*; rm -f /lib/systemd/system/sockets.target.wants/*initctl*; rm -f /lib/systemd/system/basic.target.wants/*;rm -f /lib/systemd/system/anaconda.target.wants/*;" shape="box"];
  "sha256:81bbaa8d0436a6c42615aeb417e16b9ce980a85e44408a7ef88b84900dfb90aa" [label="sha256:81bbaa8d0436a6c42615aeb417e16b9ce980a85e44408a7ef88b84900dfb90aa" shape="plaintext"];
  "sha256:dc57b30d04f0feb2e2cac7498143b81e31f0e1784143335b6a4d21e858607b2f" -> "sha256:ffbbe813a40328cd758817ea896195e6790ef5b6b5920bba9f520a588fbefb88" [label=""];
  "sha256:ffbbe813a40328cd758817ea896195e6790ef5b6b5920bba9f520a588fbefb88" -> "sha256:da60fb3dcd4cfdf1fe545f87b35a9c8232b19006ff42237e79f1407dd0366e40" [label=""];
  "sha256:da60fb3dcd4cfdf1fe545f87b35a9c8232b19006ff42237e79f1407dd0366e40" -> "sha256:81bbaa8d0436a6c42615aeb417e16b9ce980a85e44408a7ef88b84900dfb90aa" [label=""];
}

