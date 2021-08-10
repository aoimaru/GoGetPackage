[app/sources/215480454.Dockerfile]
digraph {
  "sha256:5e79387ea46489f2f5f23b08860c73b05682ac12d7c43bafe8364397eabb1912" [label="docker-image://docker.io/ppc64le/centos:7" shape="ellipse"];
  "sha256:fdb1a16f26fb35b5e176cb82655f0d2c45e1e8dabb7a7aff463537181cac15b1" [label="/bin/sh -c yum groupinstall -y \"Development Tools\"" shape="box"];
  "sha256:31fa17f95bb2b229751e8d8ead1bd33a6b89049c337043b05f16f74b632bdb11" [label="/bin/sh -c yum -y swap -- remove systemd-container systemd-container-libs -- install systemd systemd-libs" shape="box"];
  "sha256:0eddf07b9bed879adb817a583c476478c3af76bb71e220d84225c30d2fcf3dc6" [label="/bin/sh -c yum install -y btrfs-progs-devel device-mapper-devel glibc-static libseccomp-devel libselinux-devel pkgconfig selinux-policy selinux-policy-devel sqlite-devel systemd-devel tar git cmake vim-common" shape="box"];
  "sha256:75c67e0437c5c307ee2968fedda39742398720650195209bc13f13e5a8428a55" [label="/bin/sh -c curl -fsSL \"https://golang.org/dl/go${GO_VERSION}.linux-ppc64le.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:761961bfeb7059e38dbf4ae7bb27e4b865a714243b553ab6fa694ea335e401c5" [label="sha256:761961bfeb7059e38dbf4ae7bb27e4b865a714243b553ab6fa694ea335e401c5" shape="plaintext"];
  "sha256:5e79387ea46489f2f5f23b08860c73b05682ac12d7c43bafe8364397eabb1912" -> "sha256:fdb1a16f26fb35b5e176cb82655f0d2c45e1e8dabb7a7aff463537181cac15b1" [label=""];
  "sha256:fdb1a16f26fb35b5e176cb82655f0d2c45e1e8dabb7a7aff463537181cac15b1" -> "sha256:31fa17f95bb2b229751e8d8ead1bd33a6b89049c337043b05f16f74b632bdb11" [label=""];
  "sha256:31fa17f95bb2b229751e8d8ead1bd33a6b89049c337043b05f16f74b632bdb11" -> "sha256:0eddf07b9bed879adb817a583c476478c3af76bb71e220d84225c30d2fcf3dc6" [label=""];
  "sha256:0eddf07b9bed879adb817a583c476478c3af76bb71e220d84225c30d2fcf3dc6" -> "sha256:75c67e0437c5c307ee2968fedda39742398720650195209bc13f13e5a8428a55" [label=""];
  "sha256:75c67e0437c5c307ee2968fedda39742398720650195209bc13f13e5a8428a55" -> "sha256:761961bfeb7059e38dbf4ae7bb27e4b865a714243b553ab6fa694ea335e401c5" [label=""];
}

