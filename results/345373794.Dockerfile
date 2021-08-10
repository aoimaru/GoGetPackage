[app/sources/345373794.Dockerfile]
digraph {
  "sha256:d77e4b4691e6fa7d6732cd523f35bceec70d358bfc9e1b70fcb66867bda3a7b5" [label="docker-image://docker.io/balenalib/nanopc-t4-alpine:3.8-run" shape="ellipse"];
  "sha256:f9d171d71f09ac72225cb3a6095aeec09f9810058e2509b6ee5862b5c75c48b6" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:38a7fb7c3207152bc83d337ede1095fa70bdddd6065306aa221c50a8a036943b" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:7fee1df17d76d38870cdca25709f317e6b67d5851e1612204e7970473d631595" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-aarch64.tar.gz\" \t&& echo \"3c8658ee1761b83c05027e1d60d13857d64e3d116efe0ebe9dcce353fa0d1232  go$GO_VERSION.linux-alpine-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-aarch64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-aarch64.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:4282f0b83b8cd0ddfe01059f45dd73c01f30bd82ede95b8f3dd178a21bc57bd3" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:e7d6262c3914beb00b4368047e9a5e07eda849dfb3f75d0abf4622ae53879bf0" [label="mkdir{path=/go}" shape="note"];
  "sha256:802cd2cb1fc99682a1680c3be9035ce8a2bf8ef65dcd2243f8c89f23fb68a403" [label="sha256:802cd2cb1fc99682a1680c3be9035ce8a2bf8ef65dcd2243f8c89f23fb68a403" shape="plaintext"];
  "sha256:d77e4b4691e6fa7d6732cd523f35bceec70d358bfc9e1b70fcb66867bda3a7b5" -> "sha256:f9d171d71f09ac72225cb3a6095aeec09f9810058e2509b6ee5862b5c75c48b6" [label=""];
  "sha256:f9d171d71f09ac72225cb3a6095aeec09f9810058e2509b6ee5862b5c75c48b6" -> "sha256:38a7fb7c3207152bc83d337ede1095fa70bdddd6065306aa221c50a8a036943b" [label=""];
  "sha256:38a7fb7c3207152bc83d337ede1095fa70bdddd6065306aa221c50a8a036943b" -> "sha256:7fee1df17d76d38870cdca25709f317e6b67d5851e1612204e7970473d631595" [label=""];
  "sha256:7fee1df17d76d38870cdca25709f317e6b67d5851e1612204e7970473d631595" -> "sha256:4282f0b83b8cd0ddfe01059f45dd73c01f30bd82ede95b8f3dd178a21bc57bd3" [label=""];
  "sha256:4282f0b83b8cd0ddfe01059f45dd73c01f30bd82ede95b8f3dd178a21bc57bd3" -> "sha256:e7d6262c3914beb00b4368047e9a5e07eda849dfb3f75d0abf4622ae53879bf0" [label=""];
  "sha256:e7d6262c3914beb00b4368047e9a5e07eda849dfb3f75d0abf4622ae53879bf0" -> "sha256:802cd2cb1fc99682a1680c3be9035ce8a2bf8ef65dcd2243f8c89f23fb68a403" [label=""];
}

