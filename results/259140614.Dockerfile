[app/sources/259140614.Dockerfile]
digraph {
  "sha256:2fc893a965a1889294ee9c7fcd3af04e80a51e1a82efa2146cb2f4742391c7a7" [label="docker-image://docker.io/library/rhel7:latest" shape="ellipse"];
  "sha256:d3849bad15957a5b4db89f049e58363e89b312b4da70fc1dfaad86b5c30e381c" [label="/bin/sh -c INSTALL_PKGS=\"which git tar wget hostname sysvinit-tools util-linux bsdtar       socat ethtool device-mapper iptables tree findutils nmap-ncat e2fsprogs xfsprogs lsof\" &&     yum install -y $INSTALL_PKGS &&     rpm -V $INSTALL_PKGS &&     yum clean all &&     mkdir -p /var/lib/origin" shape="box"];
  "sha256:08e8919a7c73e2d6c9fe27ad649b0509f8fd7a72408827d9e5cf71a876cf1395" [label="sha256:08e8919a7c73e2d6c9fe27ad649b0509f8fd7a72408827d9e5cf71a876cf1395" shape="plaintext"];
  "sha256:2fc893a965a1889294ee9c7fcd3af04e80a51e1a82efa2146cb2f4742391c7a7" -> "sha256:d3849bad15957a5b4db89f049e58363e89b312b4da70fc1dfaad86b5c30e381c" [label=""];
  "sha256:d3849bad15957a5b4db89f049e58363e89b312b4da70fc1dfaad86b5c30e381c" -> "sha256:08e8919a7c73e2d6c9fe27ad649b0509f8fd7a72408827d9e5cf71a876cf1395" [label=""];
}

