[app/sources/286152114.Dockerfile]
digraph {
  "sha256:2d105d7d1f9dbc50bc49a10733461a59c633766110ba29938de070793db34f23" [label="docker-image://docker.io/aarch64/ubuntu:xenial" shape="ellipse"];
  "sha256:16be21d99d5226a9a40d3259026fa5f34fb5fc3f3c21d42fb9d3c3375c4355ab" [label="/bin/sh -c apt-get update && apt-get install -y apparmor bash-completion btrfs-tools build-essential cmake curl ca-certificates debhelper dh-apparmor dh-systemd git libapparmor-dev libdevmapper-dev libltdl-dev libsqlite3-dev pkg-config vim-common libsystemd-dev golang-go libseccomp-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:aeed9953e9641655381c506d174284680a171d4654f69e83c26a8920cb38e4f1" [label="/bin/sh -c mkdir /usr/src/go && curl -fsSL https://golang.org/dl/go${GO_VERSION}.src.tar.gz | tar -v -C /usr/src/go -xz --strip-components=1 \t&& cd /usr/src/go/src \t&& GOOS=linux GOARCH=arm64 GOROOT_BOOTSTRAP=\"$(go env GOROOT)\" ./make.bash" shape="box"];
  "sha256:4a0a0122b53a1e3b918eb05a2d2f22bfc713e53ce66577646b3418f6e20b25e8" [label="sha256:4a0a0122b53a1e3b918eb05a2d2f22bfc713e53ce66577646b3418f6e20b25e8" shape="plaintext"];
  "sha256:2d105d7d1f9dbc50bc49a10733461a59c633766110ba29938de070793db34f23" -> "sha256:16be21d99d5226a9a40d3259026fa5f34fb5fc3f3c21d42fb9d3c3375c4355ab" [label=""];
  "sha256:16be21d99d5226a9a40d3259026fa5f34fb5fc3f3c21d42fb9d3c3375c4355ab" -> "sha256:aeed9953e9641655381c506d174284680a171d4654f69e83c26a8920cb38e4f1" [label=""];
  "sha256:aeed9953e9641655381c506d174284680a171d4654f69e83c26a8920cb38e4f1" -> "sha256:4a0a0122b53a1e3b918eb05a2d2f22bfc713e53ce66577646b3418f6e20b25e8" [label=""];
}

