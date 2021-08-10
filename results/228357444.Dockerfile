[app/sources/228357444.Dockerfile]
digraph {
  "sha256:ad7deede01a64fb8b8e80e93dfe1a8de497e69e1383b650ee24dbad02d075dfb" [label="docker-image://docker.io/library/debian:jessie@sha256:32ad5050caffb2c7e969dac873bce2c370015c2256ff984b70c1c08b3a2816a0" shape="ellipse"];
  "sha256:00e139402095bfbdedf83f43a827e0f7fd57412935be1c552cfaec5219afd9c7" [label="/bin/sh -c sed -ri \"s/(httpredir|deb).debian.org/$APT_MIRROR/g\" /etc/apt/sources.list" shape="box"];
  "sha256:a4f993eee78cbb1a3a27c268da9927091d43f651b6dfa62c79ab06474764a755" [label="/bin/sh -c apt-get update && apt-get install -y apparmor bash-completion btrfs-tools build-essential cmake curl ca-certificates debhelper dh-apparmor dh-systemd git libapparmor-dev libdevmapper-dev libltdl-dev  pkg-config vim-common libsystemd-journal-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:5e56f5b78cc848dc1136141d3c36f1af57cf060b6d2876c9e8af1b1f236c6c73" [label="/bin/sh -c curl -fSL \"https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:1c519c4c13c96bfebaef0708f8d7e5cf65346dca62f6ecf213ed5c1480fd8878" [label="sha256:1c519c4c13c96bfebaef0708f8d7e5cf65346dca62f6ecf213ed5c1480fd8878" shape="plaintext"];
  "sha256:ad7deede01a64fb8b8e80e93dfe1a8de497e69e1383b650ee24dbad02d075dfb" -> "sha256:00e139402095bfbdedf83f43a827e0f7fd57412935be1c552cfaec5219afd9c7" [label=""];
  "sha256:00e139402095bfbdedf83f43a827e0f7fd57412935be1c552cfaec5219afd9c7" -> "sha256:a4f993eee78cbb1a3a27c268da9927091d43f651b6dfa62c79ab06474764a755" [label=""];
  "sha256:a4f993eee78cbb1a3a27c268da9927091d43f651b6dfa62c79ab06474764a755" -> "sha256:5e56f5b78cc848dc1136141d3c36f1af57cf060b6d2876c9e8af1b1f236c6c73" [label=""];
  "sha256:5e56f5b78cc848dc1136141d3c36f1af57cf060b6d2876c9e8af1b1f236c6c73" -> "sha256:1c519c4c13c96bfebaef0708f8d7e5cf65346dca62f6ecf213ed5c1480fd8878" [label=""];
}

