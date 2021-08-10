[app/sources/345366013.Dockerfile]
digraph {
  "sha256:30087a31aff41479391b7e0217f30f943bfa0b08db0cf1f38d7fb07eec54774e" [label="docker-image://docker.io/balenalib/generic-armv7ahf-alpine:3.6-run" shape="ellipse"];
  "sha256:8a96644c716f8a33cf29d3345394db02125cfd50c3480a766f7d23c9be9af560" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:6bc924a6eac77ed7e29ce52e048a6a6889b6713b2efcc23bfed998bc7520cfa7" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:29276a145aafadeb33b7124185b8b982740ab0b0ae2954018a89a359661d5eb3" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"296db57c7981a871e1cee0059a90385d39c73386ffc23002a26bfa9b05f514c4  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:fd64932efb6af041dab0d76b5a116435fd89e5a1ece7e459e226d6782a219b09" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:cdceca972ea1621b3f60bc5d9a391aec531063cc88fee84dfea7761334d3ae69" [label="mkdir{path=/go}" shape="note"];
  "sha256:872db83c1e1b4a700404698eba7c5d828aa959d8f86043c80c8ed782e1efdc75" [label="sha256:872db83c1e1b4a700404698eba7c5d828aa959d8f86043c80c8ed782e1efdc75" shape="plaintext"];
  "sha256:30087a31aff41479391b7e0217f30f943bfa0b08db0cf1f38d7fb07eec54774e" -> "sha256:8a96644c716f8a33cf29d3345394db02125cfd50c3480a766f7d23c9be9af560" [label=""];
  "sha256:8a96644c716f8a33cf29d3345394db02125cfd50c3480a766f7d23c9be9af560" -> "sha256:6bc924a6eac77ed7e29ce52e048a6a6889b6713b2efcc23bfed998bc7520cfa7" [label=""];
  "sha256:6bc924a6eac77ed7e29ce52e048a6a6889b6713b2efcc23bfed998bc7520cfa7" -> "sha256:29276a145aafadeb33b7124185b8b982740ab0b0ae2954018a89a359661d5eb3" [label=""];
  "sha256:29276a145aafadeb33b7124185b8b982740ab0b0ae2954018a89a359661d5eb3" -> "sha256:fd64932efb6af041dab0d76b5a116435fd89e5a1ece7e459e226d6782a219b09" [label=""];
  "sha256:fd64932efb6af041dab0d76b5a116435fd89e5a1ece7e459e226d6782a219b09" -> "sha256:cdceca972ea1621b3f60bc5d9a391aec531063cc88fee84dfea7761334d3ae69" [label=""];
  "sha256:cdceca972ea1621b3f60bc5d9a391aec531063cc88fee84dfea7761334d3ae69" -> "sha256:872db83c1e1b4a700404698eba7c5d828aa959d8f86043c80c8ed782e1efdc75" [label=""];
}

