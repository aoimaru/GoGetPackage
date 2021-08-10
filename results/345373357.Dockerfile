[app/sources/345373357.Dockerfile]
digraph {
  "sha256:03d46114381a938e2720078bf0eaa4b4b8fd39feca16d2203bfe146c10722b0d" [label="docker-image://docker.io/balenalib/jetson-tx2-alpine:edge-build" shape="ellipse"];
  "sha256:66a3ed9106b28fd878feebc015cdad603fe43b4d81063f2f8493501a451ee824" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:ffb05d17e7661b34f5b3f40ed79b38b384eba4c1bfc5e6ac7d7e29340df89411" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-aarch64.tar.gz\" \t&& echo \"03fee34f3aad11399ce846dbab0fb24e2f17f425eb5d7f52af67642e09c0ed28  go$GO_VERSION.linux-alpine-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-aarch64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-aarch64.tar.gz" shape="box"];
  "sha256:6d53833e1a46078207f517f04de4748e7e541919c7b8f3abf4ffec30ba880608" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:b55be9906f6665a76734eac833cd3c768918ff567d99aac83ec27bd311e4c911" [label="mkdir{path=/go}" shape="note"];
  "sha256:51f697936128520f3b1b01ae324e6a5cd18e07618ebf67bb052e84e0f2be425f" [label="sha256:51f697936128520f3b1b01ae324e6a5cd18e07618ebf67bb052e84e0f2be425f" shape="plaintext"];
  "sha256:03d46114381a938e2720078bf0eaa4b4b8fd39feca16d2203bfe146c10722b0d" -> "sha256:66a3ed9106b28fd878feebc015cdad603fe43b4d81063f2f8493501a451ee824" [label=""];
  "sha256:66a3ed9106b28fd878feebc015cdad603fe43b4d81063f2f8493501a451ee824" -> "sha256:ffb05d17e7661b34f5b3f40ed79b38b384eba4c1bfc5e6ac7d7e29340df89411" [label=""];
  "sha256:ffb05d17e7661b34f5b3f40ed79b38b384eba4c1bfc5e6ac7d7e29340df89411" -> "sha256:6d53833e1a46078207f517f04de4748e7e541919c7b8f3abf4ffec30ba880608" [label=""];
  "sha256:6d53833e1a46078207f517f04de4748e7e541919c7b8f3abf4ffec30ba880608" -> "sha256:b55be9906f6665a76734eac833cd3c768918ff567d99aac83ec27bd311e4c911" [label=""];
  "sha256:b55be9906f6665a76734eac833cd3c768918ff567d99aac83ec27bd311e4c911" -> "sha256:51f697936128520f3b1b01ae324e6a5cd18e07618ebf67bb052e84e0f2be425f" [label=""];
}

