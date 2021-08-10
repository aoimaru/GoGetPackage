[app/sources/276977863.Dockerfile]
digraph {
  "sha256:2884d952291c560aff5d5d5cf7b631cddbdfab83609ae7f7d27735bc2cd2cfb3" [label="docker-image://docker.io/armhf/ubuntu:trusty" shape="ellipse"];
  "sha256:773a9240897dba37d87225f6e1e1ee7bb7f6518b627c49a4195b42b5a9bcbc3c" [label="/bin/sh -c apt-get update && apt-get install -y apparmor bash-completion btrfs-tools build-essential cmake curl ca-certificates debhelper dh-apparmor dh-systemd git libapparmor-dev libdevmapper-dev  pkg-config vim-common libsystemd-journal-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:8a65f82603817a246f344a1cc213e06f0ee755f6259c976bcf3da066de0fbfbb" [label="/bin/sh -c curl -fSL \"https://golang.org/dl/go${GO_VERSION}.linux-armv6l.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:fe71a819bde0e09da1f02b7ed3554b9995a46df107d71b05801052032d56ecfc" [label="sha256:fe71a819bde0e09da1f02b7ed3554b9995a46df107d71b05801052032d56ecfc" shape="plaintext"];
  "sha256:2884d952291c560aff5d5d5cf7b631cddbdfab83609ae7f7d27735bc2cd2cfb3" -> "sha256:773a9240897dba37d87225f6e1e1ee7bb7f6518b627c49a4195b42b5a9bcbc3c" [label=""];
  "sha256:773a9240897dba37d87225f6e1e1ee7bb7f6518b627c49a4195b42b5a9bcbc3c" -> "sha256:8a65f82603817a246f344a1cc213e06f0ee755f6259c976bcf3da066de0fbfbb" [label=""];
  "sha256:8a65f82603817a246f344a1cc213e06f0ee755f6259c976bcf3da066de0fbfbb" -> "sha256:fe71a819bde0e09da1f02b7ed3554b9995a46df107d71b05801052032d56ecfc" [label=""];
}

