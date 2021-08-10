[app/sources/263761793.Dockerfile]
digraph {
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" [label="docker-image://docker.io/library/ubuntu:trusty" shape="ellipse"];
  "sha256:a69df3e4b5464d374bd43968806edcf2c25a455a77d0b9eb50bf7a4a52d5a9a4" [label="/bin/sh -c apt-get update && apt-get install -y apparmor bash-completion btrfs-tools build-essential cmake curl ca-certificates debhelper dh-apparmor dh-systemd git libapparmor-dev libdevmapper-dev  pkg-config vim-common libsystemd-journal-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:92bc437e3de6ec8c5e497214755ff80685f160d208ffb5b78c7c7a495a4028c5" [label="/bin/sh -c curl -fSL \"https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:8b222eb7b066242c9848abe267c0e83f29ace8adc05b76826c453e876a63a847" [label="sha256:8b222eb7b066242c9848abe267c0e83f29ace8adc05b76826c453e876a63a847" shape="plaintext"];
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" -> "sha256:a69df3e4b5464d374bd43968806edcf2c25a455a77d0b9eb50bf7a4a52d5a9a4" [label=""];
  "sha256:a69df3e4b5464d374bd43968806edcf2c25a455a77d0b9eb50bf7a4a52d5a9a4" -> "sha256:92bc437e3de6ec8c5e497214755ff80685f160d208ffb5b78c7c7a495a4028c5" [label=""];
  "sha256:92bc437e3de6ec8c5e497214755ff80685f160d208ffb5b78c7c7a495a4028c5" -> "sha256:8b222eb7b066242c9848abe267c0e83f29ace8adc05b76826c453e876a63a847" [label=""];
}

