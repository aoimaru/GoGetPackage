[app/sources/429867795.Dockerfile]
digraph {
  "sha256:ea4cacd8b3b36ab15ea1dc0cedf64019ef9ff870383b7d234e25b2bb6857e288" [label="docker-image://docker.io/library/ubuntu:yakkety" shape="ellipse"];
  "sha256:5deb9a5e2d5e20b9add9d75faa32ef79059a07e56c9ddfde06f57475b4eddc4e" [label="/bin/sh -c apt-get update && apt-get install -y apparmor bash-completion btrfs-tools build-essential cmake curl ca-certificates debhelper dh-apparmor dh-systemd git libapparmor-dev libdevmapper-dev libseccomp-dev pkg-config vim-common libsystemd-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:c225dc19deaf46c645dc1cd36b1ab39585cf42e42657e2ca5cf4dcdc5a2b31a3" [label="/bin/sh -c curl -fSL \"https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:4f0d5b2140ceeaee0451cf391ff19b392beecb10377e728fd9a2e180d37d4daf" [label="sha256:4f0d5b2140ceeaee0451cf391ff19b392beecb10377e728fd9a2e180d37d4daf" shape="plaintext"];
  "sha256:ea4cacd8b3b36ab15ea1dc0cedf64019ef9ff870383b7d234e25b2bb6857e288" -> "sha256:5deb9a5e2d5e20b9add9d75faa32ef79059a07e56c9ddfde06f57475b4eddc4e" [label=""];
  "sha256:5deb9a5e2d5e20b9add9d75faa32ef79059a07e56c9ddfde06f57475b4eddc4e" -> "sha256:c225dc19deaf46c645dc1cd36b1ab39585cf42e42657e2ca5cf4dcdc5a2b31a3" [label=""];
  "sha256:c225dc19deaf46c645dc1cd36b1ab39585cf42e42657e2ca5cf4dcdc5a2b31a3" -> "sha256:4f0d5b2140ceeaee0451cf391ff19b392beecb10377e728fd9a2e180d37d4daf" [label=""];
}

