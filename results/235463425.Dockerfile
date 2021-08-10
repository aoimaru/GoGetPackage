[app/sources/235463425.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:949f9d0c49275b212ae60551f63e3b3913c5545f317d3d316d215d67b79e5332" [label="/bin/sh -c apt-get update && apt-get install -y apparmor bash-completion btrfs-tools build-essential curl ca-certificates debhelper dh-apparmor dh-systemd git libapparmor-dev libdevmapper-dev libltdl-dev  libsqlite3-dev pkg-config libsystemd-journal-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:cf3547b757790284874800de9374a2648605277102595ae3ebed4e9bc0f19a94" [label="/bin/sh -c curl -fSL \"https://storage.googleapis.com/golang/go${GO_VERSION}.linux-amd64.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:0049f4f1201432c682bdda4a4aad1c3ee7129942d4a9905348e0bf0fa801fc1f" [label="sha256:0049f4f1201432c682bdda4a4aad1c3ee7129942d4a9905348e0bf0fa801fc1f" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:949f9d0c49275b212ae60551f63e3b3913c5545f317d3d316d215d67b79e5332" [label=""];
  "sha256:949f9d0c49275b212ae60551f63e3b3913c5545f317d3d316d215d67b79e5332" -> "sha256:cf3547b757790284874800de9374a2648605277102595ae3ebed4e9bc0f19a94" [label=""];
  "sha256:cf3547b757790284874800de9374a2648605277102595ae3ebed4e9bc0f19a94" -> "sha256:0049f4f1201432c682bdda4a4aad1c3ee7129942d4a9905348e0bf0fa801fc1f" [label=""];
}

