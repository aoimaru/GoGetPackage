[app/sources/176839501.Dockerfile]
digraph {
  "sha256:88a8ae6992cc856db153d6f573b0ada8e9a40cd8f831b5de81bd7e0a1f450b05" [label="docker-image://docker.io/library/photon:1.0" shape="ellipse"];
  "sha256:5689cca9ad16b7bc12c12e243fe0e899a55ff59b7f9265861238bbb4d432f15c" [label="/bin/sh -c tdnf install -y wget curl ca-certificates gzip make rpm-build sed gcc linux-api-headers glibc-devel binutils libseccomp libltdl-devel elfutils" shape="box"];
  "sha256:22532140af1d1627ce1dc8ac1cedd2f6d5679612defcd2de087701baae1ca308" [label="/bin/sh -c tdnf install -y btrfs-progs-devel device-mapper-devel glibc-static libseccomp-devel libselinux-devel libtool-ltdl-devel pkg-config selinux-policy selinux-policy-devel sqlite-devel systemd-devel tar git" shape="box"];
  "sha256:8df2b6144ea0a681553b8eeb256209518c2cc0778cd9dd92daf68f33c28e0c3f" [label="/bin/sh -c curl -fSL \"https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:be9efd01dfaa4c3de900e71f3409789da992ba4a322be25521b362cb6ae7c4ab" [label="sha256:be9efd01dfaa4c3de900e71f3409789da992ba4a322be25521b362cb6ae7c4ab" shape="plaintext"];
  "sha256:88a8ae6992cc856db153d6f573b0ada8e9a40cd8f831b5de81bd7e0a1f450b05" -> "sha256:5689cca9ad16b7bc12c12e243fe0e899a55ff59b7f9265861238bbb4d432f15c" [label=""];
  "sha256:5689cca9ad16b7bc12c12e243fe0e899a55ff59b7f9265861238bbb4d432f15c" -> "sha256:22532140af1d1627ce1dc8ac1cedd2f6d5679612defcd2de087701baae1ca308" [label=""];
  "sha256:22532140af1d1627ce1dc8ac1cedd2f6d5679612defcd2de087701baae1ca308" -> "sha256:8df2b6144ea0a681553b8eeb256209518c2cc0778cd9dd92daf68f33c28e0c3f" [label=""];
  "sha256:8df2b6144ea0a681553b8eeb256209518c2cc0778cd9dd92daf68f33c28e0c3f" -> "sha256:be9efd01dfaa4c3de900e71f3409789da992ba4a322be25521b362cb6ae7c4ab" [label=""];
}

