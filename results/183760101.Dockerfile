[app/sources/183760101.Dockerfile]
digraph {
  "sha256:2d105d7d1f9dbc50bc49a10733461a59c633766110ba29938de070793db34f23" [label="docker-image://docker.io/aarch64/ubuntu:xenial" shape="ellipse"];
  "sha256:82b4879fa49dfd75374d0b6fafdb9392897d243b0691ec910c3f72f473c32ad1" [label="/bin/sh -c apt-get update && apt-get install -y apparmor bash-completion btrfs-tools build-essential cmake curl ca-certificates debhelper dh-apparmor dh-systemd git libapparmor-dev libdevmapper-dev pkg-config vim-common libsystemd-dev golang-go libseccomp-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:5280b5b99f0759588a6411f7f262c89660e17ea9ee9ebe54735fcad7ba195511" [label="/bin/sh -c mkdir /usr/src/go && curl -fsSL https://golang.org/dl/go${GO_VERSION}.src.tar.gz | tar -v -C /usr/src/go -xz --strip-components=1 \t&& cd /usr/src/go/src \t&& GOOS=linux GOARCH=arm64 GOROOT_BOOTSTRAP=\"$(go env GOROOT)\" ./make.bash" shape="box"];
  "sha256:9a94efc053bb79d52b8e21cf8bd270df2521322270ff3cd44b0536da23d7fbf1" [label="sha256:9a94efc053bb79d52b8e21cf8bd270df2521322270ff3cd44b0536da23d7fbf1" shape="plaintext"];
  "sha256:2d105d7d1f9dbc50bc49a10733461a59c633766110ba29938de070793db34f23" -> "sha256:82b4879fa49dfd75374d0b6fafdb9392897d243b0691ec910c3f72f473c32ad1" [label=""];
  "sha256:82b4879fa49dfd75374d0b6fafdb9392897d243b0691ec910c3f72f473c32ad1" -> "sha256:5280b5b99f0759588a6411f7f262c89660e17ea9ee9ebe54735fcad7ba195511" [label=""];
  "sha256:5280b5b99f0759588a6411f7f262c89660e17ea9ee9ebe54735fcad7ba195511" -> "sha256:9a94efc053bb79d52b8e21cf8bd270df2521322270ff3cd44b0536da23d7fbf1" [label=""];
}

