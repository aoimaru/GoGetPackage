[app/sources/330724068.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:9bad306109b1207acf78a8e736eff48d0c8c18aa37e1d5ea92ac45e45c07e153" [label="/bin/sh -c sed -ri \"s/(httpredir|deb).debian.org/$APT_MIRROR/g\" /etc/apt/sources.list" shape="box"];
  "sha256:3dac05930ba2f257b56f40e03b6fb7c8fbfb59ec1435afd5dda2abff21d32914" [label="/bin/sh -c apt-get update && apt-get install -y apparmor bash-completion btrfs-tools build-essential cmake curl ca-certificates debhelper dh-apparmor dh-systemd git libapparmor-dev libdevmapper-dev libltdl-dev  libsqlite3-dev pkg-config vim-common libsystemd-journal-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:ef83cddfa7e01c737ecf899752898dcb9e1f41e5e2d9a422dc7b5d8b48be553a" [label="/bin/sh -c curl -fSL \"https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:07e3c5516fa7a79e27e734f5392c7c3ce256aba25755daaf71d4a3fa91a9a4dc" [label="sha256:07e3c5516fa7a79e27e734f5392c7c3ce256aba25755daaf71d4a3fa91a9a4dc" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:9bad306109b1207acf78a8e736eff48d0c8c18aa37e1d5ea92ac45e45c07e153" [label=""];
  "sha256:9bad306109b1207acf78a8e736eff48d0c8c18aa37e1d5ea92ac45e45c07e153" -> "sha256:3dac05930ba2f257b56f40e03b6fb7c8fbfb59ec1435afd5dda2abff21d32914" [label=""];
  "sha256:3dac05930ba2f257b56f40e03b6fb7c8fbfb59ec1435afd5dda2abff21d32914" -> "sha256:ef83cddfa7e01c737ecf899752898dcb9e1f41e5e2d9a422dc7b5d8b48be553a" [label=""];
  "sha256:ef83cddfa7e01c737ecf899752898dcb9e1f41e5e2d9a422dc7b5d8b48be553a" -> "sha256:07e3c5516fa7a79e27e734f5392c7c3ce256aba25755daaf71d4a3fa91a9a4dc" [label=""];
}

