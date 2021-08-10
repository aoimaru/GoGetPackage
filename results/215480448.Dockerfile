[app/sources/215480448.Dockerfile]
digraph {
  "sha256:df55a48d8d25f02c50ed4a14e92c485284c085366d436c87247b2ea5aa1bc0e2" [label="docker-image://docker.io/library/oraclelinux:7" shape="ellipse"];
  "sha256:4f1f66064c69d4d2a31603563348e8f5f8c1c94258b5d4d09dbab3ceafee6e18" [label="/bin/sh -c yum groupinstall -y \"Development Tools\"" shape="box"];
  "sha256:e54b34e87edee7ab559d0736df7f11d466412c7bb5e575d89f0c4b647005db59" [label="/bin/sh -c yum install -y --enablerepo=ol7_optional_latest btrfs-progs-devel device-mapper-devel glibc-static libseccomp-devel libselinux-devel pkgconfig selinux-policy selinux-policy-devel systemd-devel tar git cmake vim-common" shape="box"];
  "sha256:9c42d8661e1144c4d8523ed42577a409ca023ee7b62d23e495336eb30c2da546" [label="/bin/sh -c curl -fSL \"https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:746ff9e5a104b064d26a462a834b87e4ccdb2595435e9c232998d56e8f780a0f" [label="sha256:746ff9e5a104b064d26a462a834b87e4ccdb2595435e9c232998d56e8f780a0f" shape="plaintext"];
  "sha256:df55a48d8d25f02c50ed4a14e92c485284c085366d436c87247b2ea5aa1bc0e2" -> "sha256:4f1f66064c69d4d2a31603563348e8f5f8c1c94258b5d4d09dbab3ceafee6e18" [label=""];
  "sha256:4f1f66064c69d4d2a31603563348e8f5f8c1c94258b5d4d09dbab3ceafee6e18" -> "sha256:e54b34e87edee7ab559d0736df7f11d466412c7bb5e575d89f0c4b647005db59" [label=""];
  "sha256:e54b34e87edee7ab559d0736df7f11d466412c7bb5e575d89f0c4b647005db59" -> "sha256:9c42d8661e1144c4d8523ed42577a409ca023ee7b62d23e495336eb30c2da546" [label=""];
  "sha256:9c42d8661e1144c4d8523ed42577a409ca023ee7b62d23e495336eb30c2da546" -> "sha256:746ff9e5a104b064d26a462a834b87e4ccdb2595435e9c232998d56e8f780a0f" [label=""];
}

