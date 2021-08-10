[app/sources/345368100.Dockerfile]
digraph {
  "sha256:53123beeb9d8ea7f3b20458e370994ce21551f242d778dbf2c86c2688f74b3bd" [label="docker-image://docker.io/balenalib/artik710-alpine:3.6-build" shape="ellipse"];
  "sha256:323b406dc95e4da63f1720e752aaf3e626010d7d064f39089ce3831410024609" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:e818b15df27b77342edff541e85d60ffdc155be3eec2d1e7f7fe2609b3f06f8c" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-aarch64.tar.gz\" \t&& echo \"983d78e68083b3ebaf918cdc3be8fa448b1e158d4a184090e8e07a2a250c3bee  go$GO_VERSION.linux-alpine-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-aarch64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-aarch64.tar.gz" shape="box"];
  "sha256:d2cc9663ee31b041d7db3bb71101cba724556a6f057694474db6d56695874652" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:12d48e9f1036c9fe831b32b46cc8fe25c5cbc281ce936e5c5e1efcf1efe6f5ac" [label="mkdir{path=/go}" shape="note"];
  "sha256:a3dc70d6025ae65d0bea68e75ddb68469605910dd0a5d7a0cf8733058dbddedb" [label="sha256:a3dc70d6025ae65d0bea68e75ddb68469605910dd0a5d7a0cf8733058dbddedb" shape="plaintext"];
  "sha256:53123beeb9d8ea7f3b20458e370994ce21551f242d778dbf2c86c2688f74b3bd" -> "sha256:323b406dc95e4da63f1720e752aaf3e626010d7d064f39089ce3831410024609" [label=""];
  "sha256:323b406dc95e4da63f1720e752aaf3e626010d7d064f39089ce3831410024609" -> "sha256:e818b15df27b77342edff541e85d60ffdc155be3eec2d1e7f7fe2609b3f06f8c" [label=""];
  "sha256:e818b15df27b77342edff541e85d60ffdc155be3eec2d1e7f7fe2609b3f06f8c" -> "sha256:d2cc9663ee31b041d7db3bb71101cba724556a6f057694474db6d56695874652" [label=""];
  "sha256:d2cc9663ee31b041d7db3bb71101cba724556a6f057694474db6d56695874652" -> "sha256:12d48e9f1036c9fe831b32b46cc8fe25c5cbc281ce936e5c5e1efcf1efe6f5ac" [label=""];
  "sha256:12d48e9f1036c9fe831b32b46cc8fe25c5cbc281ce936e5c5e1efcf1efe6f5ac" -> "sha256:a3dc70d6025ae65d0bea68e75ddb68469605910dd0a5d7a0cf8733058dbddedb" [label=""];
}

