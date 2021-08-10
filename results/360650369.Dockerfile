[app/sources/360650369.Dockerfile]
digraph {
  "sha256:1915d0fdb329fc6f0ffa64c18b305038c2c21226e2a3fce8553f8b43515794fc" [label="docker-image://docker.io/library/opensuse:13.2" shape="ellipse"];
  "sha256:3a7e914cf4d845701810ec1e8fc7b2ff3bad60de4a85be32db8cfe7cd257f011" [label="/bin/sh -c zypper --non-interactive install ca-certificates* curl gzip rpm-build" shape="box"];
  "sha256:abcc846dee40990227f2af05c2507dc66cc12e8865ee1d76028ae89b9105ac3e" [label="/bin/sh -c zypper --non-interactive install libbtrfs-devel device-mapper-devel glibc-static  libselinux-devel libtool-ltdl-devel pkg-config selinux-policy selinux-policy-devel sqlite-devel systemd-devel tar git systemd-rpm-macros" shape="box"];
  "sha256:103a22c17cf45fa746c19a0733c6dd826b8e07c730fbc2c8f848c844be8479c0" [label="/bin/sh -c curl -fSL \"https://storage.googleapis.com/golang/go${GO_VERSION}.linux-amd64.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:0d884869b5592631f1340bdc548aad20d04d7b2a3e2c89b8fa6f3bfecabad68d" [label="sha256:0d884869b5592631f1340bdc548aad20d04d7b2a3e2c89b8fa6f3bfecabad68d" shape="plaintext"];
  "sha256:1915d0fdb329fc6f0ffa64c18b305038c2c21226e2a3fce8553f8b43515794fc" -> "sha256:3a7e914cf4d845701810ec1e8fc7b2ff3bad60de4a85be32db8cfe7cd257f011" [label=""];
  "sha256:3a7e914cf4d845701810ec1e8fc7b2ff3bad60de4a85be32db8cfe7cd257f011" -> "sha256:abcc846dee40990227f2af05c2507dc66cc12e8865ee1d76028ae89b9105ac3e" [label=""];
  "sha256:abcc846dee40990227f2af05c2507dc66cc12e8865ee1d76028ae89b9105ac3e" -> "sha256:103a22c17cf45fa746c19a0733c6dd826b8e07c730fbc2c8f848c844be8479c0" [label=""];
  "sha256:103a22c17cf45fa746c19a0733c6dd826b8e07c730fbc2c8f848c844be8479c0" -> "sha256:0d884869b5592631f1340bdc548aad20d04d7b2a3e2c89b8fa6f3bfecabad68d" [label=""];
}

