[app/sources/335428353.Dockerfile]
digraph {
  "sha256:cd89ee131f628834252163eada135aceb29bdb805b924898d8f8fbe88d5e0dff" [label="docker-image://docker.io/armhf/ubuntu:xenial" shape="ellipse"];
  "sha256:dbb307657b50ba29ec969eac598a8ac83f20fd1fcd84718237c39aa447181f46" [label="/bin/sh -c apt-get update && apt-get install -y apparmor bash-completion btrfs-tools build-essential cmake curl ca-certificates debhelper dh-apparmor dh-systemd git libapparmor-dev libdevmapper-dev libseccomp-dev pkg-config vim-common libsystemd-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:0c6f751d06725cfaef507d3bc072b6d152046315fefa28d110c40b51b60e4973" [label="/bin/sh -c curl -fSL \"https://golang.org/dl/go${GO_VERSION}.linux-armv6l.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:395c86973a333cd97f3cb5fa05d3a80d1e1437e5768a7ed4f90ba688c5c37882" [label="sha256:395c86973a333cd97f3cb5fa05d3a80d1e1437e5768a7ed4f90ba688c5c37882" shape="plaintext"];
  "sha256:cd89ee131f628834252163eada135aceb29bdb805b924898d8f8fbe88d5e0dff" -> "sha256:dbb307657b50ba29ec969eac598a8ac83f20fd1fcd84718237c39aa447181f46" [label=""];
  "sha256:dbb307657b50ba29ec969eac598a8ac83f20fd1fcd84718237c39aa447181f46" -> "sha256:0c6f751d06725cfaef507d3bc072b6d152046315fefa28d110c40b51b60e4973" [label=""];
  "sha256:0c6f751d06725cfaef507d3bc072b6d152046315fefa28d110c40b51b60e4973" -> "sha256:395c86973a333cd97f3cb5fa05d3a80d1e1437e5768a7ed4f90ba688c5c37882" [label=""];
}

