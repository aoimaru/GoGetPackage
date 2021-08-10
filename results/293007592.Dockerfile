[app/sources/293007592.Dockerfile]
digraph {
  "sha256:df55a48d8d25f02c50ed4a14e92c485284c085366d436c87247b2ea5aa1bc0e2" [label="docker-image://docker.io/library/oraclelinux:7" shape="ellipse"];
  "sha256:4f1f66064c69d4d2a31603563348e8f5f8c1c94258b5d4d09dbab3ceafee6e18" [label="/bin/sh -c yum groupinstall -y \"Development Tools\"" shape="box"];
  "sha256:db316f992d956e31f2f2bc91e4b163c754f7b3e94de86f8ce8084d4e85569263" [label="/bin/sh -c yum install -y --enablerepo=ol7_optional_latest btrfs-progs-devel device-mapper-devel glibc-static libseccomp-devel libselinux-devel libtool-ltdl-devel pkgconfig selinux-policy selinux-policy-devel sqlite-devel systemd-devel tar git cmake vim-common" shape="box"];
  "sha256:335bbdb80f2297d4e635a8dca50d58633f0717659edaca332316653730f3f8ec" [label="/bin/sh -c curl -fSL \"https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:a80d58cc5d7f2c163e934960f1f111bc11d42112aa2f13fc184b9b773b5bcf93" [label="sha256:a80d58cc5d7f2c163e934960f1f111bc11d42112aa2f13fc184b9b773b5bcf93" shape="plaintext"];
  "sha256:df55a48d8d25f02c50ed4a14e92c485284c085366d436c87247b2ea5aa1bc0e2" -> "sha256:4f1f66064c69d4d2a31603563348e8f5f8c1c94258b5d4d09dbab3ceafee6e18" [label=""];
  "sha256:4f1f66064c69d4d2a31603563348e8f5f8c1c94258b5d4d09dbab3ceafee6e18" -> "sha256:db316f992d956e31f2f2bc91e4b163c754f7b3e94de86f8ce8084d4e85569263" [label=""];
  "sha256:db316f992d956e31f2f2bc91e4b163c754f7b3e94de86f8ce8084d4e85569263" -> "sha256:335bbdb80f2297d4e635a8dca50d58633f0717659edaca332316653730f3f8ec" [label=""];
  "sha256:335bbdb80f2297d4e635a8dca50d58633f0717659edaca332316653730f3f8ec" -> "sha256:a80d58cc5d7f2c163e934960f1f111bc11d42112aa2f13fc184b9b773b5bcf93" [label=""];
}

