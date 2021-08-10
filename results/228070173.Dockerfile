[app/sources/228070173.Dockerfile]
digraph {
  "sha256:5e79387ea46489f2f5f23b08860c73b05682ac12d7c43bafe8364397eabb1912" [label="docker-image://docker.io/ppc64le/centos:7" shape="ellipse"];
  "sha256:fdb1a16f26fb35b5e176cb82655f0d2c45e1e8dabb7a7aff463537181cac15b1" [label="/bin/sh -c yum groupinstall -y \"Development Tools\"" shape="box"];
  "sha256:31fa17f95bb2b229751e8d8ead1bd33a6b89049c337043b05f16f74b632bdb11" [label="/bin/sh -c yum -y swap -- remove systemd-container systemd-container-libs -- install systemd systemd-libs" shape="box"];
  "sha256:0eddf07b9bed879adb817a583c476478c3af76bb71e220d84225c30d2fcf3dc6" [label="/bin/sh -c yum install -y btrfs-progs-devel device-mapper-devel glibc-static libseccomp-devel libselinux-devel pkgconfig selinux-policy selinux-policy-devel sqlite-devel systemd-devel tar git cmake vim-common" shape="box"];
  "sha256:6e9e18bbbe92430d4a7a2a165ecd0373ad597f89b7da275c7b90c4128ee22640" [label="/bin/sh -c curl -fsSL \"https://golang.org/dl/go${GO_VERSION}.linux-ppc64le.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:b832d861fba98319ad79f511224de360112ef781cb92e5545186af2b05894eac" [label="sha256:b832d861fba98319ad79f511224de360112ef781cb92e5545186af2b05894eac" shape="plaintext"];
  "sha256:5e79387ea46489f2f5f23b08860c73b05682ac12d7c43bafe8364397eabb1912" -> "sha256:fdb1a16f26fb35b5e176cb82655f0d2c45e1e8dabb7a7aff463537181cac15b1" [label=""];
  "sha256:fdb1a16f26fb35b5e176cb82655f0d2c45e1e8dabb7a7aff463537181cac15b1" -> "sha256:31fa17f95bb2b229751e8d8ead1bd33a6b89049c337043b05f16f74b632bdb11" [label=""];
  "sha256:31fa17f95bb2b229751e8d8ead1bd33a6b89049c337043b05f16f74b632bdb11" -> "sha256:0eddf07b9bed879adb817a583c476478c3af76bb71e220d84225c30d2fcf3dc6" [label=""];
  "sha256:0eddf07b9bed879adb817a583c476478c3af76bb71e220d84225c30d2fcf3dc6" -> "sha256:6e9e18bbbe92430d4a7a2a165ecd0373ad597f89b7da275c7b90c4128ee22640" [label=""];
  "sha256:6e9e18bbbe92430d4a7a2a165ecd0373ad597f89b7da275c7b90c4128ee22640" -> "sha256:b832d861fba98319ad79f511224de360112ef781cb92e5545186af2b05894eac" [label=""];
}

