[app/sources/341640312.Dockerfile]
digraph {
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" [label="docker-image://docker.io/library/debian:stretch" shape="ellipse"];
  "sha256:58653c47967069c0620e428768227ceb9c5aa83768405c21f3e973a3bbcb28d2" [label="/bin/sh -c sed -ri \"s/(httpredir|deb).debian.org/$APT_MIRROR/g\" /etc/apt/sources.list" shape="box"];
  "sha256:7cffe454799a357bb519159eb3c918b93802aa13d938ca19bc826ca9d0ff82c8" [label="/bin/sh -c apt-get update && apt-get install -y apparmor bash-completion btrfs-tools build-essential cmake curl ca-certificates debhelper dh-apparmor dh-systemd git libapparmor-dev libdevmapper-dev libseccomp-dev pkg-config vim-common libsystemd-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:82272e769681a7f606f3192aedb5620635c5bb075f5d6cf3e3d18ea75fa69bd6" [label="/bin/sh -c curl -fSL \"https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:8839ba458e7d4af10154cf56d2ac398dbac8dde9a3e5fbe9258b7308aebf8940" [label="sha256:8839ba458e7d4af10154cf56d2ac398dbac8dde9a3e5fbe9258b7308aebf8940" shape="plaintext"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" -> "sha256:58653c47967069c0620e428768227ceb9c5aa83768405c21f3e973a3bbcb28d2" [label=""];
  "sha256:58653c47967069c0620e428768227ceb9c5aa83768405c21f3e973a3bbcb28d2" -> "sha256:7cffe454799a357bb519159eb3c918b93802aa13d938ca19bc826ca9d0ff82c8" [label=""];
  "sha256:7cffe454799a357bb519159eb3c918b93802aa13d938ca19bc826ca9d0ff82c8" -> "sha256:82272e769681a7f606f3192aedb5620635c5bb075f5d6cf3e3d18ea75fa69bd6" [label=""];
  "sha256:82272e769681a7f606f3192aedb5620635c5bb075f5d6cf3e3d18ea75fa69bd6" -> "sha256:8839ba458e7d4af10154cf56d2ac398dbac8dde9a3e5fbe9258b7308aebf8940" [label=""];
}

