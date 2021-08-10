[app/sources/143853108.Dockerfile]
digraph {
  "sha256:88a8ae6992cc856db153d6f573b0ada8e9a40cd8f831b5de81bd7e0a1f450b05" [label="docker-image://docker.io/library/photon:1.0" shape="ellipse"];
  "sha256:5689cca9ad16b7bc12c12e243fe0e899a55ff59b7f9265861238bbb4d432f15c" [label="/bin/sh -c tdnf install -y wget curl ca-certificates gzip make rpm-build sed gcc linux-api-headers glibc-devel binutils libseccomp libltdl-devel elfutils" shape="box"];
  "sha256:4ff140eeb1a2ba67baf5acc5191835cf1d39a03867a32339704809bcf8d92944" [label="/bin/sh -c tdnf install -y btrfs-progs-devel device-mapper-devel glibc-static libseccomp-devel libselinux-devel libtool-ltdl-devel pkg-config selinux-policy selinux-policy-devel sqlite-devel systemd-devel tar git cmake vim-common" shape="box"];
  "sha256:8ddd8fd372017f2f1997c61e3da56c18c2ad68c661deafc08cf7f5468f9163cf" [label="/bin/sh -c curl -fSL \"https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:e29f29d48252a345c73df82792769d68db73522a24eaa26e021ef7af9d594499" [label="sha256:e29f29d48252a345c73df82792769d68db73522a24eaa26e021ef7af9d594499" shape="plaintext"];
  "sha256:88a8ae6992cc856db153d6f573b0ada8e9a40cd8f831b5de81bd7e0a1f450b05" -> "sha256:5689cca9ad16b7bc12c12e243fe0e899a55ff59b7f9265861238bbb4d432f15c" [label=""];
  "sha256:5689cca9ad16b7bc12c12e243fe0e899a55ff59b7f9265861238bbb4d432f15c" -> "sha256:4ff140eeb1a2ba67baf5acc5191835cf1d39a03867a32339704809bcf8d92944" [label=""];
  "sha256:4ff140eeb1a2ba67baf5acc5191835cf1d39a03867a32339704809bcf8d92944" -> "sha256:8ddd8fd372017f2f1997c61e3da56c18c2ad68c661deafc08cf7f5468f9163cf" [label=""];
  "sha256:8ddd8fd372017f2f1997c61e3da56c18c2ad68c661deafc08cf7f5468f9163cf" -> "sha256:e29f29d48252a345c73df82792769d68db73522a24eaa26e021ef7af9d594499" [label=""];
}

