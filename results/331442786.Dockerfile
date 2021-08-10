[app/sources/331442786.Dockerfile]
digraph {
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" [label="docker-image://docker.io/library/debian:stretch" shape="ellipse"];
  "sha256:58653c47967069c0620e428768227ceb9c5aa83768405c21f3e973a3bbcb28d2" [label="/bin/sh -c sed -ri \"s/(httpredir|deb).debian.org/$APT_MIRROR/g\" /etc/apt/sources.list" shape="box"];
  "sha256:7cffe454799a357bb519159eb3c918b93802aa13d938ca19bc826ca9d0ff82c8" [label="/bin/sh -c apt-get update && apt-get install -y apparmor bash-completion btrfs-tools build-essential cmake curl ca-certificates debhelper dh-apparmor dh-systemd git libapparmor-dev libdevmapper-dev libseccomp-dev pkg-config vim-common libsystemd-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:6b91de9d42837f799ecd50ac3c2aa9fe7497bbf50724f8728770e696f619bc58" [label="/bin/sh -c curl -fSL \"https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:16933d2b995125ea118f998c4c6b8c40c5841482259234c361c1ad2d48be58fc" [label="sha256:16933d2b995125ea118f998c4c6b8c40c5841482259234c361c1ad2d48be58fc" shape="plaintext"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" -> "sha256:58653c47967069c0620e428768227ceb9c5aa83768405c21f3e973a3bbcb28d2" [label=""];
  "sha256:58653c47967069c0620e428768227ceb9c5aa83768405c21f3e973a3bbcb28d2" -> "sha256:7cffe454799a357bb519159eb3c918b93802aa13d938ca19bc826ca9d0ff82c8" [label=""];
  "sha256:7cffe454799a357bb519159eb3c918b93802aa13d938ca19bc826ca9d0ff82c8" -> "sha256:6b91de9d42837f799ecd50ac3c2aa9fe7497bbf50724f8728770e696f619bc58" [label=""];
  "sha256:6b91de9d42837f799ecd50ac3c2aa9fe7497bbf50724f8728770e696f619bc58" -> "sha256:16933d2b995125ea118f998c4c6b8c40c5841482259234c361c1ad2d48be58fc" [label=""];
}

