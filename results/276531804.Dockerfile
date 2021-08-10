[app/sources/276531804.Dockerfile]
digraph {
  "sha256:df55a48d8d25f02c50ed4a14e92c485284c085366d436c87247b2ea5aa1bc0e2" [label="docker-image://docker.io/library/oraclelinux:7" shape="ellipse"];
  "sha256:4f1f66064c69d4d2a31603563348e8f5f8c1c94258b5d4d09dbab3ceafee6e18" [label="/bin/sh -c yum groupinstall -y \"Development Tools\"" shape="box"];
  "sha256:05c73b50fb2248f2e64634f5c7c465c83e18fa776be037f2806ec9bcb4bbde26" [label="/bin/sh -c yum install -y --enablerepo=ol7_optional_latest btrfs-progs-devel device-mapper-devel glibc-static libseccomp-devel libselinux-devel libtool-ltdl-devel pkgconfig selinux-policy selinux-policy-devel systemd-devel tar git cmake vim-common" shape="box"];
  "sha256:2304ed0789dfef2850a952ca818dffdba33de3257f354154e9a9d3851cd51b81" [label="/bin/sh -c curl -fSL \"https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:5abc7b515b04f50f3a33c32c54cc5fdbb58eb3dc57dad87486e7338660ac97e9" [label="sha256:5abc7b515b04f50f3a33c32c54cc5fdbb58eb3dc57dad87486e7338660ac97e9" shape="plaintext"];
  "sha256:df55a48d8d25f02c50ed4a14e92c485284c085366d436c87247b2ea5aa1bc0e2" -> "sha256:4f1f66064c69d4d2a31603563348e8f5f8c1c94258b5d4d09dbab3ceafee6e18" [label=""];
  "sha256:4f1f66064c69d4d2a31603563348e8f5f8c1c94258b5d4d09dbab3ceafee6e18" -> "sha256:05c73b50fb2248f2e64634f5c7c465c83e18fa776be037f2806ec9bcb4bbde26" [label=""];
  "sha256:05c73b50fb2248f2e64634f5c7c465c83e18fa776be037f2806ec9bcb4bbde26" -> "sha256:2304ed0789dfef2850a952ca818dffdba33de3257f354154e9a9d3851cd51b81" [label=""];
  "sha256:2304ed0789dfef2850a952ca818dffdba33de3257f354154e9a9d3851cd51b81" -> "sha256:5abc7b515b04f50f3a33c32c54cc5fdbb58eb3dc57dad87486e7338660ac97e9" [label=""];
}

