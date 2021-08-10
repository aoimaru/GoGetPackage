[app/sources/373013449.Dockerfile]
digraph {
  "sha256:82f6685e9ba547eb5ea0e42c339d70ad22fe819d358a375fd9fc8e30bf3e50a7" [label="docker-image://docker.io/ppc64le/ubuntu:yakkety" shape="ellipse"];
  "sha256:cdbd3696373e9001a677db709a94957c38101415b319572bacee4d5d3dd115cc" [label="/bin/sh -c apt-get update && apt-get install -y apparmor bash-completion btrfs-tools build-essential cmake curl ca-certificates debhelper dh-apparmor dh-systemd git libapparmor-dev libdevmapper-dev pkg-config vim-common libseccomp-dev libsystemd-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:1b5947d79edc67f552889dafc98e9b66c572cbf24c94b522d874bf79f54e7fb2" [label="/bin/sh -c curl -fsSL \"https://golang.org/dl/go${GO_VERSION}.linux-ppc64le.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:5f842fac9635555ee2f9bcc302132da0c5f3d93019474d5a0ccb461376c6fe7b" [label="sha256:5f842fac9635555ee2f9bcc302132da0c5f3d93019474d5a0ccb461376c6fe7b" shape="plaintext"];
  "sha256:82f6685e9ba547eb5ea0e42c339d70ad22fe819d358a375fd9fc8e30bf3e50a7" -> "sha256:cdbd3696373e9001a677db709a94957c38101415b319572bacee4d5d3dd115cc" [label=""];
  "sha256:cdbd3696373e9001a677db709a94957c38101415b319572bacee4d5d3dd115cc" -> "sha256:1b5947d79edc67f552889dafc98e9b66c572cbf24c94b522d874bf79f54e7fb2" [label=""];
  "sha256:1b5947d79edc67f552889dafc98e9b66c572cbf24c94b522d874bf79f54e7fb2" -> "sha256:5f842fac9635555ee2f9bcc302132da0c5f3d93019474d5a0ccb461376c6fe7b" [label=""];
}

