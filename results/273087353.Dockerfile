[app/sources/273087353.Dockerfile]
digraph {
  "sha256:1915d0fdb329fc6f0ffa64c18b305038c2c21226e2a3fce8553f8b43515794fc" [label="docker-image://docker.io/library/opensuse:13.2" shape="ellipse"];
  "sha256:3a7e914cf4d845701810ec1e8fc7b2ff3bad60de4a85be32db8cfe7cd257f011" [label="/bin/sh -c zypper --non-interactive install ca-certificates* curl gzip rpm-build" shape="box"];
  "sha256:7560aef97d809e08cd0b8ac509688043ea7f51af816da7f9e55c8faed093ff8b" [label="/bin/sh -c zypper --non-interactive install libbtrfs-devel device-mapper-devel glibc-static  libselinux-devel libtool-ltdl-devel pkg-config selinux-policy selinux-policy-devel sqlite-devel systemd-devel tar git cmake vim systemd-rpm-macros" shape="box"];
  "sha256:16ea037ec1b20a3d828067c8bb57ea016d94aba8d8c702cac0dab4e4a5c6dad2" [label="/bin/sh -c curl -fSL \"https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:2422f3cb98371b8264917ed9211de931e9f0ec5fdf073f9f982fc0ac5740840f" [label="sha256:2422f3cb98371b8264917ed9211de931e9f0ec5fdf073f9f982fc0ac5740840f" shape="plaintext"];
  "sha256:1915d0fdb329fc6f0ffa64c18b305038c2c21226e2a3fce8553f8b43515794fc" -> "sha256:3a7e914cf4d845701810ec1e8fc7b2ff3bad60de4a85be32db8cfe7cd257f011" [label=""];
  "sha256:3a7e914cf4d845701810ec1e8fc7b2ff3bad60de4a85be32db8cfe7cd257f011" -> "sha256:7560aef97d809e08cd0b8ac509688043ea7f51af816da7f9e55c8faed093ff8b" [label=""];
  "sha256:7560aef97d809e08cd0b8ac509688043ea7f51af816da7f9e55c8faed093ff8b" -> "sha256:16ea037ec1b20a3d828067c8bb57ea016d94aba8d8c702cac0dab4e4a5c6dad2" [label=""];
  "sha256:16ea037ec1b20a3d828067c8bb57ea016d94aba8d8c702cac0dab4e4a5c6dad2" -> "sha256:2422f3cb98371b8264917ed9211de931e9f0ec5fdf073f9f982fc0ac5740840f" [label=""];
}

