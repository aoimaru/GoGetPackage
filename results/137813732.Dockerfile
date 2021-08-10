[app/sources/137813732.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:7e458319217d8fae25644f6ca3b057d86016c9090b7bd9541701784a4c735330" [label="/bin/sh -c (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == systemd-tmpfiles-setup.service ] || rm -f $i; done); rm -f /lib/systemd/system/multi-user.target.wants/*;rm -f /etc/systemd/system/*.wants/*;rm -f /lib/systemd/system/local-fs.target.wants/*; rm -f /lib/systemd/system/sockets.target.wants/*udev*; rm -f /lib/systemd/system/sockets.target.wants/*initctl*; rm -f /lib/systemd/system/basic.target.wants/*;rm -f /lib/systemd/system/anaconda.target.wants/*;" shape="box"];
  "sha256:b4dd12addaf3c7e292f4140d2c06b99f44045f8768ffdf6b3c80d46f9a9c97f2" [label="/bin/sh -c yum -y install httpd; yum clean all; systemctl enable httpd.service" shape="box"];
  "sha256:813dcae68defd519f58f13d4b3dc3df1d9b15a9a1a700f7cb8292c9a8f8dc0cf" [label="sha256:813dcae68defd519f58f13d4b3dc3df1d9b15a9a1a700f7cb8292c9a8f8dc0cf" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:7e458319217d8fae25644f6ca3b057d86016c9090b7bd9541701784a4c735330" [label=""];
  "sha256:7e458319217d8fae25644f6ca3b057d86016c9090b7bd9541701784a4c735330" -> "sha256:b4dd12addaf3c7e292f4140d2c06b99f44045f8768ffdf6b3c80d46f9a9c97f2" [label=""];
  "sha256:b4dd12addaf3c7e292f4140d2c06b99f44045f8768ffdf6b3c80d46f9a9c97f2" -> "sha256:813dcae68defd519f58f13d4b3dc3df1d9b15a9a1a700f7cb8292c9a8f8dc0cf" [label=""];
}

