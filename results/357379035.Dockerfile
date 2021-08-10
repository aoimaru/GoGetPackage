[app/sources/357379035.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:7e458319217d8fae25644f6ca3b057d86016c9090b7bd9541701784a4c735330" [label="/bin/sh -c (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == systemd-tmpfiles-setup.service ] || rm -f $i; done); rm -f /lib/systemd/system/multi-user.target.wants/*;rm -f /etc/systemd/system/*.wants/*;rm -f /lib/systemd/system/local-fs.target.wants/*; rm -f /lib/systemd/system/sockets.target.wants/*udev*; rm -f /lib/systemd/system/sockets.target.wants/*initctl*; rm -f /lib/systemd/system/basic.target.wants/*;rm -f /lib/systemd/system/anaconda.target.wants/*;" shape="box"];
  "sha256:f0a275f478c0e283128299086f3d51015cfb90aeff72d05c5c15eb816b473680" [label="/bin/sh -c yum makecache fast  && yum -y install deltarpm epel-release initscripts  && yum -y update  && yum -y install       ansible       git       sudo  && yum clean all" shape="box"];
  "sha256:a6d707b26c3c2deb809867174e11da269618d81eb2aab6b8646b1169c5dcdbcc" [label="/bin/sh -c sed -i -e 's/^\\(Defaults\\s*requiretty\\)/#--- \\1/'  /etc/sudoers" shape="box"];
  "sha256:a51bcf4d2d83bf771e4d0d58aa23e7fa59177ddd9da2305d79cd39a73049137e" [label="/bin/sh -c echo -e '[local]\\nlocalhost ansible_connection=local' > /etc/ansible/hosts" shape="box"];
  "sha256:f86c2a9320056568921629c5f9cf46122d540f1184641066db378e701f2a86ba" [label="sha256:f86c2a9320056568921629c5f9cf46122d540f1184641066db378e701f2a86ba" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:7e458319217d8fae25644f6ca3b057d86016c9090b7bd9541701784a4c735330" [label=""];
  "sha256:7e458319217d8fae25644f6ca3b057d86016c9090b7bd9541701784a4c735330" -> "sha256:f0a275f478c0e283128299086f3d51015cfb90aeff72d05c5c15eb816b473680" [label=""];
  "sha256:f0a275f478c0e283128299086f3d51015cfb90aeff72d05c5c15eb816b473680" -> "sha256:a6d707b26c3c2deb809867174e11da269618d81eb2aab6b8646b1169c5dcdbcc" [label=""];
  "sha256:a6d707b26c3c2deb809867174e11da269618d81eb2aab6b8646b1169c5dcdbcc" -> "sha256:a51bcf4d2d83bf771e4d0d58aa23e7fa59177ddd9da2305d79cd39a73049137e" [label=""];
  "sha256:a51bcf4d2d83bf771e4d0d58aa23e7fa59177ddd9da2305d79cd39a73049137e" -> "sha256:f86c2a9320056568921629c5f9cf46122d540f1184641066db378e701f2a86ba" [label=""];
}

