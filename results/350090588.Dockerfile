[app/sources/350090588.Dockerfile]
digraph {
  "sha256:2fc893a965a1889294ee9c7fcd3af04e80a51e1a82efa2146cb2f4742391c7a7" [label="docker-image://docker.io/library/rhel7:latest" shape="ellipse"];
  "sha256:d178690bfc994a239cfeefb652a6baca35539b48a078e697618c3af9f17be39b" [label="/bin/sh -c INSTALL_PKGS=\"which git tar wget hostname sysvinit-tools util-linux bsdtar       socat ethtool device-mapper iptables tree findutils nmap-ncat e2fsprogs xfsprogs lsof device-mapper-persistent-data ceph-common\" &&     yum install -y $INSTALL_PKGS &&     rpm -V $INSTALL_PKGS &&     yum clean all &&     mkdir -p /var/lib/origin" shape="box"];
  "sha256:f729058ee20201df2401a246302bcaf0bb9c2d0b838940b4d5e8b1e8550a7495" [label="sha256:f729058ee20201df2401a246302bcaf0bb9c2d0b838940b4d5e8b1e8550a7495" shape="plaintext"];
  "sha256:2fc893a965a1889294ee9c7fcd3af04e80a51e1a82efa2146cb2f4742391c7a7" -> "sha256:d178690bfc994a239cfeefb652a6baca35539b48a078e697618c3af9f17be39b" [label=""];
  "sha256:d178690bfc994a239cfeefb652a6baca35539b48a078e697618c3af9f17be39b" -> "sha256:f729058ee20201df2401a246302bcaf0bb9c2d0b838940b4d5e8b1e8550a7495" [label=""];
}

