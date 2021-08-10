[app/sources/134832030.Dockerfile]
digraph {
  "sha256:2863c77d38f73508050fd402b2322719e62fec5356750211ba380da8628264e4" [label="docker-image://docker.io/library/amazonlinux:2" shape="ellipse"];
  "sha256:0d8c9fc5287cfb45b643400801a2e7b4f1f0c02c2680071c23f82d510d277785" [label="/bin/sh -c yum -y install sudo systemd hostname procps-ng net-tools iproute iputils wget && yum clean all" shape="box"];
  "sha256:8bf59701ea72d3e9b4f49656db012c4eba295f2afc7e6beadc4f394139bcf350" [label="/bin/sh -c (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == systemd-tmpfiles-setup.service ] || rm -f $i; done); rm -f /lib/systemd/system/multi-user.target.wants/*;rm -f /etc/systemd/system/*.wants/*;rm -f /lib/systemd/system/local-fs.target.wants/*; rm -f /lib/systemd/system/sockets.target.wants/*udev*; rm -f /lib/systemd/system/sockets.target.wants/*initctl*; rm -f /lib/systemd/system/basic.target.wants/*;rm -f /lib/systemd/system/anaconda.target.wants/*;rm -f /lib/systemd/system/*.wants/*update-utmp*;" shape="box"];
  "sha256:6e69e33a3f07f6f5fd7b23faec39bd7254701984180de6044c0362f10c979f09" [label="/bin/sh -c yum -y install openssh-server && yum clean all" shape="box"];
  "sha256:5c03942869c6df2b742889ce4fbe762326f91fc681fc9f073c8aea785875d9a2" [label="sha256:5c03942869c6df2b742889ce4fbe762326f91fc681fc9f073c8aea785875d9a2" shape="plaintext"];
  "sha256:2863c77d38f73508050fd402b2322719e62fec5356750211ba380da8628264e4" -> "sha256:0d8c9fc5287cfb45b643400801a2e7b4f1f0c02c2680071c23f82d510d277785" [label=""];
  "sha256:0d8c9fc5287cfb45b643400801a2e7b4f1f0c02c2680071c23f82d510d277785" -> "sha256:8bf59701ea72d3e9b4f49656db012c4eba295f2afc7e6beadc4f394139bcf350" [label=""];
  "sha256:8bf59701ea72d3e9b4f49656db012c4eba295f2afc7e6beadc4f394139bcf350" -> "sha256:6e69e33a3f07f6f5fd7b23faec39bd7254701984180de6044c0362f10c979f09" [label=""];
  "sha256:6e69e33a3f07f6f5fd7b23faec39bd7254701984180de6044c0362f10c979f09" -> "sha256:5c03942869c6df2b742889ce4fbe762326f91fc681fc9f073c8aea785875d9a2" [label=""];
}

