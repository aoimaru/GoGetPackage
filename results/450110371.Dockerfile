[app/sources/450110371.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:7e458319217d8fae25644f6ca3b057d86016c9090b7bd9541701784a4c735330" [label="/bin/sh -c (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == systemd-tmpfiles-setup.service ] || rm -f $i; done); rm -f /lib/systemd/system/multi-user.target.wants/*;rm -f /etc/systemd/system/*.wants/*;rm -f /lib/systemd/system/local-fs.target.wants/*; rm -f /lib/systemd/system/sockets.target.wants/*udev*; rm -f /lib/systemd/system/sockets.target.wants/*initctl*; rm -f /lib/systemd/system/basic.target.wants/*;rm -f /lib/systemd/system/anaconda.target.wants/*;" shape="box"];
  "sha256:9c74c6f386b5824453943ff299c55b213bc537f338332ece0f847aa3dd9fb1f1" [label="sha256:9c74c6f386b5824453943ff299c55b213bc537f338332ece0f847aa3dd9fb1f1" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:7e458319217d8fae25644f6ca3b057d86016c9090b7bd9541701784a4c735330" [label=""];
  "sha256:7e458319217d8fae25644f6ca3b057d86016c9090b7bd9541701784a4c735330" -> "sha256:9c74c6f386b5824453943ff299c55b213bc537f338332ece0f847aa3dd9fb1f1" [label=""];
}

