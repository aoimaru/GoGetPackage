[app/sources/259544371.Dockerfile]
digraph {
  "sha256:b8f043826f09c9b69ff37edc485059b2eac34498e9b363af3aaf74e87950cd60" [label="docker-image://docker.io/aarch64/debian:stretch" shape="ellipse"];
  "sha256:c02a9b8ddd97f3a9631072858c56f233d0a777bae8a902dbbb1bd03033434278" [label="/bin/sh -c apt-get update && apt-get install -y apparmor bash-completion btrfs-tools build-essential cmake curl ca-certificates debhelper dh-apparmor dh-systemd git libapparmor-dev libdevmapper-dev libltdl-dev pkg-config vim-common libsystemd-dev golang-go libseccomp-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:6946c676a32e31068da9e380057f4c352694410cb304e1db9a7fafa8bcd44bc5" [label="/bin/sh -c mkdir /usr/src/go && curl -fsSL https://golang.org/dl/go${GO_VERSION}.src.tar.gz | tar -v -C /usr/src/go -xz --strip-components=1 \t&& cd /usr/src/go/src \t&& GOOS=linux GOARCH=arm64 GOROOT_BOOTSTRAP=\"$(go env GOROOT)\" ./make.bash" shape="box"];
  "sha256:bef8b809c709901a3ee266b601363b43d26cfb40b8cfad233c3b279757ef29c5" [label="sha256:bef8b809c709901a3ee266b601363b43d26cfb40b8cfad233c3b279757ef29c5" shape="plaintext"];
  "sha256:b8f043826f09c9b69ff37edc485059b2eac34498e9b363af3aaf74e87950cd60" -> "sha256:c02a9b8ddd97f3a9631072858c56f233d0a777bae8a902dbbb1bd03033434278" [label=""];
  "sha256:c02a9b8ddd97f3a9631072858c56f233d0a777bae8a902dbbb1bd03033434278" -> "sha256:6946c676a32e31068da9e380057f4c352694410cb304e1db9a7fafa8bcd44bc5" [label=""];
  "sha256:6946c676a32e31068da9e380057f4c352694410cb304e1db9a7fafa8bcd44bc5" -> "sha256:bef8b809c709901a3ee266b601363b43d26cfb40b8cfad233c3b279757ef29c5" [label=""];
}

