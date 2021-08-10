[app/sources/429867789.Dockerfile]
digraph {
  "sha256:ad7deede01a64fb8b8e80e93dfe1a8de497e69e1383b650ee24dbad02d075dfb" [label="docker-image://docker.io/library/debian:jessie@sha256:32ad5050caffb2c7e969dac873bce2c370015c2256ff984b70c1c08b3a2816a0" shape="ellipse"];
  "sha256:00e139402095bfbdedf83f43a827e0f7fd57412935be1c552cfaec5219afd9c7" [label="/bin/sh -c sed -ri \"s/(httpredir|deb).debian.org/$APT_MIRROR/g\" /etc/apt/sources.list" shape="box"];
  "sha256:0b300a4372ecc4338d2b9d949beb971f7557212327153e46dcba552e8c413d71" [label="/bin/sh -c apt-get update && apt-get install -y apparmor bash-completion btrfs-tools build-essential cmake curl ca-certificates debhelper dh-apparmor dh-systemd git libapparmor-dev libdevmapper-dev  pkg-config vim-common libsystemd-journal-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:07df78cd10cc5ad3ed3cb434a281c5f1f57226fe79ed50e4f8f3f6a1d9fbdb0a" [label="/bin/sh -c curl -fSL \"https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:1558919673bd0615206c3d849644391a606347f515fe4ce542bca147f306fd14" [label="sha256:1558919673bd0615206c3d849644391a606347f515fe4ce542bca147f306fd14" shape="plaintext"];
  "sha256:ad7deede01a64fb8b8e80e93dfe1a8de497e69e1383b650ee24dbad02d075dfb" -> "sha256:00e139402095bfbdedf83f43a827e0f7fd57412935be1c552cfaec5219afd9c7" [label=""];
  "sha256:00e139402095bfbdedf83f43a827e0f7fd57412935be1c552cfaec5219afd9c7" -> "sha256:0b300a4372ecc4338d2b9d949beb971f7557212327153e46dcba552e8c413d71" [label=""];
  "sha256:0b300a4372ecc4338d2b9d949beb971f7557212327153e46dcba552e8c413d71" -> "sha256:07df78cd10cc5ad3ed3cb434a281c5f1f57226fe79ed50e4f8f3f6a1d9fbdb0a" [label=""];
  "sha256:07df78cd10cc5ad3ed3cb434a281c5f1f57226fe79ed50e4f8f3f6a1d9fbdb0a" -> "sha256:1558919673bd0615206c3d849644391a606347f515fe4ce542bca147f306fd14" [label=""];
}

