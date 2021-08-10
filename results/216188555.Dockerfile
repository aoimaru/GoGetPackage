[app/sources/216188555.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:9bad306109b1207acf78a8e736eff48d0c8c18aa37e1d5ea92ac45e45c07e153" [label="/bin/sh -c sed -ri \"s/(httpredir|deb).debian.org/$APT_MIRROR/g\" /etc/apt/sources.list" shape="box"];
  "sha256:bd53c408438d400d8ccf1ac38c433d6a985b736f807d4b4878cc2441e61b8a49" [label="/bin/sh -c apt-get update && apt-get install -y apparmor bash-completion btrfs-tools build-essential cmake curl ca-certificates debhelper dh-apparmor dh-systemd git libapparmor-dev libdevmapper-dev libltdl-dev  pkg-config vim-common libsystemd-journal-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:b2f7ce70e1b5467fb10afd1c92f80fd5eb95825b7cb82f2aa0d6a0ad07e86e7f" [label="/bin/sh -c curl -fSL \"https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:a9f61e4767752486c582433eef9aa63b7fd36938290c3d1b5e3bedf429cef34b" [label="sha256:a9f61e4767752486c582433eef9aa63b7fd36938290c3d1b5e3bedf429cef34b" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:9bad306109b1207acf78a8e736eff48d0c8c18aa37e1d5ea92ac45e45c07e153" [label=""];
  "sha256:9bad306109b1207acf78a8e736eff48d0c8c18aa37e1d5ea92ac45e45c07e153" -> "sha256:bd53c408438d400d8ccf1ac38c433d6a985b736f807d4b4878cc2441e61b8a49" [label=""];
  "sha256:bd53c408438d400d8ccf1ac38c433d6a985b736f807d4b4878cc2441e61b8a49" -> "sha256:b2f7ce70e1b5467fb10afd1c92f80fd5eb95825b7cb82f2aa0d6a0ad07e86e7f" [label=""];
  "sha256:b2f7ce70e1b5467fb10afd1c92f80fd5eb95825b7cb82f2aa0d6a0ad07e86e7f" -> "sha256:a9f61e4767752486c582433eef9aa63b7fd36938290c3d1b5e3bedf429cef34b" [label=""];
}

