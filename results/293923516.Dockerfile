[app/sources/293923516.Dockerfile]
digraph {
  "sha256:88a8ae6992cc856db153d6f573b0ada8e9a40cd8f831b5de81bd7e0a1f450b05" [label="docker-image://docker.io/library/photon:1.0" shape="ellipse"];
  "sha256:5689cca9ad16b7bc12c12e243fe0e899a55ff59b7f9265861238bbb4d432f15c" [label="/bin/sh -c tdnf install -y wget curl ca-certificates gzip make rpm-build sed gcc linux-api-headers glibc-devel binutils libseccomp libltdl-devel elfutils" shape="box"];
  "sha256:ef70e56fe7de0b9ce33973dd558cbaeb5bade5c32cd63ae0e4425b004349beda" [label="/bin/sh -c tdnf install -y btrfs-progs-devel device-mapper-devel glibc-static libseccomp-devel libselinux-devel libtool-ltdl-devel pkg-config selinux-policy selinux-policy-devel systemd-devel tar git cmake vim-common" shape="box"];
  "sha256:50ad89fed1d2ad814970c3fe426598adc593fe8d79f54f95c397de67e8040e5d" [label="/bin/sh -c curl -fSL \"https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:d75b886efa98278fa94e71f9947b27631af5f00fdca34e18112df4c7d5024b0f" [label="sha256:d75b886efa98278fa94e71f9947b27631af5f00fdca34e18112df4c7d5024b0f" shape="plaintext"];
  "sha256:88a8ae6992cc856db153d6f573b0ada8e9a40cd8f831b5de81bd7e0a1f450b05" -> "sha256:5689cca9ad16b7bc12c12e243fe0e899a55ff59b7f9265861238bbb4d432f15c" [label=""];
  "sha256:5689cca9ad16b7bc12c12e243fe0e899a55ff59b7f9265861238bbb4d432f15c" -> "sha256:ef70e56fe7de0b9ce33973dd558cbaeb5bade5c32cd63ae0e4425b004349beda" [label=""];
  "sha256:ef70e56fe7de0b9ce33973dd558cbaeb5bade5c32cd63ae0e4425b004349beda" -> "sha256:50ad89fed1d2ad814970c3fe426598adc593fe8d79f54f95c397de67e8040e5d" [label=""];
  "sha256:50ad89fed1d2ad814970c3fe426598adc593fe8d79f54f95c397de67e8040e5d" -> "sha256:d75b886efa98278fa94e71f9947b27631af5f00fdca34e18112df4c7d5024b0f" [label=""];
}

