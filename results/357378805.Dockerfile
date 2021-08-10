[app/sources/357378805.Dockerfile]
digraph {
  "sha256:df55a48d8d25f02c50ed4a14e92c485284c085366d436c87247b2ea5aa1bc0e2" [label="docker-image://docker.io/library/oraclelinux:7" shape="ellipse"];
  "sha256:4f1f66064c69d4d2a31603563348e8f5f8c1c94258b5d4d09dbab3ceafee6e18" [label="/bin/sh -c yum groupinstall -y \"Development Tools\"" shape="box"];
  "sha256:e18c96cb1538af30f78d786f8d5a42c094f46ae98831eae8a1cb5bc3f8d49397" [label="/bin/sh -c yum install -y --enablerepo=ol7_optional_latest btrfs-progs-devel device-mapper-devel glibc-static libselinux-devel selinux-policy selinux-policy-devel sqlite-devel tar" shape="box"];
  "sha256:a1b29832e4eaa95b01ad72c8334c1db993d73b5af31a800b688cf8347c1c340c" [label="/bin/sh -c curl -fSL \"https://storage.googleapis.com/golang/go${GO_VERSION}.linux-amd64.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:b8145b0c4ede69289b6a854a3a86f79be62026bbf43686e1136474b6dc83a9b6" [label="sha256:b8145b0c4ede69289b6a854a3a86f79be62026bbf43686e1136474b6dc83a9b6" shape="plaintext"];
  "sha256:df55a48d8d25f02c50ed4a14e92c485284c085366d436c87247b2ea5aa1bc0e2" -> "sha256:4f1f66064c69d4d2a31603563348e8f5f8c1c94258b5d4d09dbab3ceafee6e18" [label=""];
  "sha256:4f1f66064c69d4d2a31603563348e8f5f8c1c94258b5d4d09dbab3ceafee6e18" -> "sha256:e18c96cb1538af30f78d786f8d5a42c094f46ae98831eae8a1cb5bc3f8d49397" [label=""];
  "sha256:e18c96cb1538af30f78d786f8d5a42c094f46ae98831eae8a1cb5bc3f8d49397" -> "sha256:a1b29832e4eaa95b01ad72c8334c1db993d73b5af31a800b688cf8347c1c340c" [label=""];
  "sha256:a1b29832e4eaa95b01ad72c8334c1db993d73b5af31a800b688cf8347c1c340c" -> "sha256:b8145b0c4ede69289b6a854a3a86f79be62026bbf43686e1136474b6dc83a9b6" [label=""];
}

