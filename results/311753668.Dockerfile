[app/sources/311753668.Dockerfile]
digraph {
  "sha256:df55a48d8d25f02c50ed4a14e92c485284c085366d436c87247b2ea5aa1bc0e2" [label="docker-image://docker.io/library/oraclelinux:7" shape="ellipse"];
  "sha256:4f1f66064c69d4d2a31603563348e8f5f8c1c94258b5d4d09dbab3ceafee6e18" [label="/bin/sh -c yum groupinstall -y \"Development Tools\"" shape="box"];
  "sha256:05c73b50fb2248f2e64634f5c7c465c83e18fa776be037f2806ec9bcb4bbde26" [label="/bin/sh -c yum install -y --enablerepo=ol7_optional_latest btrfs-progs-devel device-mapper-devel glibc-static libseccomp-devel libselinux-devel libtool-ltdl-devel pkgconfig selinux-policy selinux-policy-devel systemd-devel tar git cmake vim-common" shape="box"];
  "sha256:7ee3377ceb106d67c10ee0903287ffd2daa3f1a5287a337555d4b7d8fe55070a" [label="/bin/sh -c curl -fSL \"https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:c25648ab942c9918c2888ac1adeeb318dfa993856471594d9b65a0d8ff424834" [label="sha256:c25648ab942c9918c2888ac1adeeb318dfa993856471594d9b65a0d8ff424834" shape="plaintext"];
  "sha256:df55a48d8d25f02c50ed4a14e92c485284c085366d436c87247b2ea5aa1bc0e2" -> "sha256:4f1f66064c69d4d2a31603563348e8f5f8c1c94258b5d4d09dbab3ceafee6e18" [label=""];
  "sha256:4f1f66064c69d4d2a31603563348e8f5f8c1c94258b5d4d09dbab3ceafee6e18" -> "sha256:05c73b50fb2248f2e64634f5c7c465c83e18fa776be037f2806ec9bcb4bbde26" [label=""];
  "sha256:05c73b50fb2248f2e64634f5c7c465c83e18fa776be037f2806ec9bcb4bbde26" -> "sha256:7ee3377ceb106d67c10ee0903287ffd2daa3f1a5287a337555d4b7d8fe55070a" [label=""];
  "sha256:7ee3377ceb106d67c10ee0903287ffd2daa3f1a5287a337555d4b7d8fe55070a" -> "sha256:c25648ab942c9918c2888ac1adeeb318dfa993856471594d9b65a0d8ff424834" [label=""];
}

