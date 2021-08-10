[app/sources/207482833.Dockerfile]
digraph {
  "sha256:48e4fd079846c4002da9c069091fc61db5931366c2c9cc75046da9d771919d40" [label="docker-image://docker.io/armhf/ubuntu:yakkety" shape="ellipse"];
  "sha256:ec8bdb9dacaa1c50e97b4828c337c51a6199a83861e7ccf9b9e8bd65ffaa6cd4" [label="/bin/sh -c apt-get update && apt-get install -y apparmor bash-completion btrfs-tools build-essential cmake curl ca-certificates debhelper dh-apparmor dh-systemd git libapparmor-dev libdevmapper-dev libseccomp-dev pkg-config vim-common libsystemd-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:b37ad9891da9ee709d3ad63331378ebded5d9c3e8b1b34f3de06cf66f117ca88" [label="/bin/sh -c curl -fSL \"https://golang.org/dl/go${GO_VERSION}.linux-armv6l.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:ba825cfa67ec276b5c1848de98323e12fb46890850d9aa68bfade5850479422b" [label="sha256:ba825cfa67ec276b5c1848de98323e12fb46890850d9aa68bfade5850479422b" shape="plaintext"];
  "sha256:48e4fd079846c4002da9c069091fc61db5931366c2c9cc75046da9d771919d40" -> "sha256:ec8bdb9dacaa1c50e97b4828c337c51a6199a83861e7ccf9b9e8bd65ffaa6cd4" [label=""];
  "sha256:ec8bdb9dacaa1c50e97b4828c337c51a6199a83861e7ccf9b9e8bd65ffaa6cd4" -> "sha256:b37ad9891da9ee709d3ad63331378ebded5d9c3e8b1b34f3de06cf66f117ca88" [label=""];
  "sha256:b37ad9891da9ee709d3ad63331378ebded5d9c3e8b1b34f3de06cf66f117ca88" -> "sha256:ba825cfa67ec276b5c1848de98323e12fb46890850d9aa68bfade5850479422b" [label=""];
}

