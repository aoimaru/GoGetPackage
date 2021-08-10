[app/sources/429867827.Dockerfile]
digraph {
  "sha256:5e79387ea46489f2f5f23b08860c73b05682ac12d7c43bafe8364397eabb1912" [label="docker-image://docker.io/ppc64le/centos:7" shape="ellipse"];
  "sha256:fdb1a16f26fb35b5e176cb82655f0d2c45e1e8dabb7a7aff463537181cac15b1" [label="/bin/sh -c yum groupinstall -y \"Development Tools\"" shape="box"];
  "sha256:31fa17f95bb2b229751e8d8ead1bd33a6b89049c337043b05f16f74b632bdb11" [label="/bin/sh -c yum -y swap -- remove systemd-container systemd-container-libs -- install systemd systemd-libs" shape="box"];
  "sha256:86314641c0495fd959b1d02658bfae5a044229c6bcb0c407c9ffe02a93a92309" [label="/bin/sh -c yum install -y btrfs-progs-devel device-mapper-devel glibc-static libseccomp-devel libselinux-devel libtool-ltdl-devel pkgconfig selinux-policy selinux-policy-devel sqlite-devel systemd-devel tar git cmake vim-common" shape="box"];
  "sha256:070ae60d80a02ba57d1c8cbde3b1232a96dc797bfa137c62a0a7fb76cd401a49" [label="/bin/sh -c curl -fSL \"https://golang.org/dl/go${GO_VERSION}.linux-ppc64le.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:6eda1409fc4ce05789a43cc887a632301b9d0ff69456251c7ce0b2fcb25d58c6" [label="sha256:6eda1409fc4ce05789a43cc887a632301b9d0ff69456251c7ce0b2fcb25d58c6" shape="plaintext"];
  "sha256:5e79387ea46489f2f5f23b08860c73b05682ac12d7c43bafe8364397eabb1912" -> "sha256:fdb1a16f26fb35b5e176cb82655f0d2c45e1e8dabb7a7aff463537181cac15b1" [label=""];
  "sha256:fdb1a16f26fb35b5e176cb82655f0d2c45e1e8dabb7a7aff463537181cac15b1" -> "sha256:31fa17f95bb2b229751e8d8ead1bd33a6b89049c337043b05f16f74b632bdb11" [label=""];
  "sha256:31fa17f95bb2b229751e8d8ead1bd33a6b89049c337043b05f16f74b632bdb11" -> "sha256:86314641c0495fd959b1d02658bfae5a044229c6bcb0c407c9ffe02a93a92309" [label=""];
  "sha256:86314641c0495fd959b1d02658bfae5a044229c6bcb0c407c9ffe02a93a92309" -> "sha256:070ae60d80a02ba57d1c8cbde3b1232a96dc797bfa137c62a0a7fb76cd401a49" [label=""];
  "sha256:070ae60d80a02ba57d1c8cbde3b1232a96dc797bfa137c62a0a7fb76cd401a49" -> "sha256:6eda1409fc4ce05789a43cc887a632301b9d0ff69456251c7ce0b2fcb25d58c6" [label=""];
}

