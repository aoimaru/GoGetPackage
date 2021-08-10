[app/sources/345357273.Dockerfile]
digraph {
  "sha256:78c2278caa98e797e0e8d6c0ed8bb0f607a7a2e26abde19faaeed8f6d81921dd" [label="docker-image://docker.io/balenalib/orbitty-tx2-alpine:3.5-run" shape="ellipse"];
  "sha256:dc9225ec87d9fb1b56db10135ba0d114bcd00f6cdb37ac370f74e9f9716afb69" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:6187e4ef458046b507ed5cbfe5914ecf94f8156f0b120121895f67bae898e2c6" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:9f82f66ba9501c18afcdebb5b59562f006106625818d9b75d129201602e1319a" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-aarch64.tar.gz\" \t&& echo \"3c8658ee1761b83c05027e1d60d13857d64e3d116efe0ebe9dcce353fa0d1232  go$GO_VERSION.linux-alpine-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-aarch64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-aarch64.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:c69c1541975bf95a555312574533ae29b92b56c0456bebd715e3e73c55659f1f" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:080caa605dd94139d344b08f1d4f4dd6d35fd09a11d749d84ad28f78c58241ea" [label="mkdir{path=/go}" shape="note"];
  "sha256:466909db37e809163563853c11f36130225168a5f5da8a780be2c2ce4bc2f7a0" [label="sha256:466909db37e809163563853c11f36130225168a5f5da8a780be2c2ce4bc2f7a0" shape="plaintext"];
  "sha256:78c2278caa98e797e0e8d6c0ed8bb0f607a7a2e26abde19faaeed8f6d81921dd" -> "sha256:dc9225ec87d9fb1b56db10135ba0d114bcd00f6cdb37ac370f74e9f9716afb69" [label=""];
  "sha256:dc9225ec87d9fb1b56db10135ba0d114bcd00f6cdb37ac370f74e9f9716afb69" -> "sha256:6187e4ef458046b507ed5cbfe5914ecf94f8156f0b120121895f67bae898e2c6" [label=""];
  "sha256:6187e4ef458046b507ed5cbfe5914ecf94f8156f0b120121895f67bae898e2c6" -> "sha256:9f82f66ba9501c18afcdebb5b59562f006106625818d9b75d129201602e1319a" [label=""];
  "sha256:9f82f66ba9501c18afcdebb5b59562f006106625818d9b75d129201602e1319a" -> "sha256:c69c1541975bf95a555312574533ae29b92b56c0456bebd715e3e73c55659f1f" [label=""];
  "sha256:c69c1541975bf95a555312574533ae29b92b56c0456bebd715e3e73c55659f1f" -> "sha256:080caa605dd94139d344b08f1d4f4dd6d35fd09a11d749d84ad28f78c58241ea" [label=""];
  "sha256:080caa605dd94139d344b08f1d4f4dd6d35fd09a11d749d84ad28f78c58241ea" -> "sha256:466909db37e809163563853c11f36130225168a5f5da8a780be2c2ce4bc2f7a0" [label=""];
}

