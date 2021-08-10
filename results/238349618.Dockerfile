[app/sources/238349618.Dockerfile]
digraph {
  "sha256:cd89ee131f628834252163eada135aceb29bdb805b924898d8f8fbe88d5e0dff" [label="docker-image://docker.io/armhf/ubuntu:xenial" shape="ellipse"];
  "sha256:0e21a248fb4e7090ba7b424007038adaede5dcaa3a4f7bc1202a3836e7ffdbb8" [label="/bin/sh -c apt-get update && apt-get install -y apparmor bash-completion btrfs-tools build-essential cmake curl ca-certificates debhelper dh-apparmor dh-systemd git libapparmor-dev libdevmapper-dev libltdl-dev libseccomp-dev libsqlite3-dev pkg-config vim-common libsystemd-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:014e2ed7dd9be5e0791c000605548122f5978789bbaf5f10b774dc88339d649e" [label="/bin/sh -c curl -fSL \"https://golang.org/dl/go${GO_VERSION}.linux-armv6l.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:d0248821eb01765bff2515efa051d5c53a712db6bd62673b3024e88a74f45564" [label="sha256:d0248821eb01765bff2515efa051d5c53a712db6bd62673b3024e88a74f45564" shape="plaintext"];
  "sha256:cd89ee131f628834252163eada135aceb29bdb805b924898d8f8fbe88d5e0dff" -> "sha256:0e21a248fb4e7090ba7b424007038adaede5dcaa3a4f7bc1202a3836e7ffdbb8" [label=""];
  "sha256:0e21a248fb4e7090ba7b424007038adaede5dcaa3a4f7bc1202a3836e7ffdbb8" -> "sha256:014e2ed7dd9be5e0791c000605548122f5978789bbaf5f10b774dc88339d649e" [label=""];
  "sha256:014e2ed7dd9be5e0791c000605548122f5978789bbaf5f10b774dc88339d649e" -> "sha256:d0248821eb01765bff2515efa051d5c53a712db6bd62673b3024e88a74f45564" [label=""];
}

