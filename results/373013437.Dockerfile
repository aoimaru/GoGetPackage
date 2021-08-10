[app/sources/373013437.Dockerfile]
digraph {
  "sha256:cd89ee131f628834252163eada135aceb29bdb805b924898d8f8fbe88d5e0dff" [label="docker-image://docker.io/armhf/ubuntu:xenial" shape="ellipse"];
  "sha256:dbb307657b50ba29ec969eac598a8ac83f20fd1fcd84718237c39aa447181f46" [label="/bin/sh -c apt-get update && apt-get install -y apparmor bash-completion btrfs-tools build-essential cmake curl ca-certificates debhelper dh-apparmor dh-systemd git libapparmor-dev libdevmapper-dev libseccomp-dev pkg-config vim-common libsystemd-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:99955c67061d497ff85349faa3961fc99186169cdd5d16983352483de3dfdf33" [label="/bin/sh -c curl -fSL \"https://golang.org/dl/go${GO_VERSION}.linux-armv6l.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:4b777c7c899c8eed04bb288824d065ddb16e950e1dad35c8c91c55bb7e6fefa3" [label="sha256:4b777c7c899c8eed04bb288824d065ddb16e950e1dad35c8c91c55bb7e6fefa3" shape="plaintext"];
  "sha256:cd89ee131f628834252163eada135aceb29bdb805b924898d8f8fbe88d5e0dff" -> "sha256:dbb307657b50ba29ec969eac598a8ac83f20fd1fcd84718237c39aa447181f46" [label=""];
  "sha256:dbb307657b50ba29ec969eac598a8ac83f20fd1fcd84718237c39aa447181f46" -> "sha256:99955c67061d497ff85349faa3961fc99186169cdd5d16983352483de3dfdf33" [label=""];
  "sha256:99955c67061d497ff85349faa3961fc99186169cdd5d16983352483de3dfdf33" -> "sha256:4b777c7c899c8eed04bb288824d065ddb16e950e1dad35c8c91c55bb7e6fefa3" [label=""];
}

