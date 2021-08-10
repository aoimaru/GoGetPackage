[app/sources/162835793.Dockerfile]
digraph {
  "sha256:ea4cacd8b3b36ab15ea1dc0cedf64019ef9ff870383b7d234e25b2bb6857e288" [label="docker-image://docker.io/library/ubuntu:yakkety" shape="ellipse"];
  "sha256:d03a376ce5028bdaf9eeb325b12d03b897073dbfdf301570bc38b2f2cfa005e0" [label="/bin/sh -c apt-get update && apt-get install -y apparmor bash-completion btrfs-tools build-essential cmake curl ca-certificates debhelper dh-apparmor dh-systemd git libapparmor-dev libdevmapper-dev libltdl-dev libseccomp-dev pkg-config vim-common libsystemd-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:c9135a78ce85e7b9ad4eed3b5eb4614814e05a0db3414da224285bc0b8775466" [label="/bin/sh -c curl -fSL \"https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:55e8bf3a55bf19ea7059bf1239cffc4ff10b49f80d54b2af6578c0d1851181c5" [label="sha256:55e8bf3a55bf19ea7059bf1239cffc4ff10b49f80d54b2af6578c0d1851181c5" shape="plaintext"];
  "sha256:ea4cacd8b3b36ab15ea1dc0cedf64019ef9ff870383b7d234e25b2bb6857e288" -> "sha256:d03a376ce5028bdaf9eeb325b12d03b897073dbfdf301570bc38b2f2cfa005e0" [label=""];
  "sha256:d03a376ce5028bdaf9eeb325b12d03b897073dbfdf301570bc38b2f2cfa005e0" -> "sha256:c9135a78ce85e7b9ad4eed3b5eb4614814e05a0db3414da224285bc0b8775466" [label=""];
  "sha256:c9135a78ce85e7b9ad4eed3b5eb4614814e05a0db3414da224285bc0b8775466" -> "sha256:55e8bf3a55bf19ea7059bf1239cffc4ff10b49f80d54b2af6578c0d1851181c5" [label=""];
}

