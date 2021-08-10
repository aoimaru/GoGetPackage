[app/sources/345375130.Dockerfile]
digraph {
  "sha256:6bed27f70996957cac79adcefcad79c18b9bb070a71751a6b9eec276b67ab191" [label="docker-image://docker.io/balenalib/nitrogen6xq2g-alpine:3.9-run" shape="ellipse"];
  "sha256:1a529aabc9679539d139dea62e8a205772e8dbc30de806d2dea616a2d5e4beda" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:2e28317c432561ecfaab9389964415efd323ccbe8cfb62befa3fc96f4b6b8cb4" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:f0d13aa60dc00c8c38ea01a2318d15aef4efb40796e2f8a4ad063bc15f825ab7" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"92e208c8828ea41fb61e881b49fe883fba12f3730ec72a49b64be0ae74bb486d  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:c99cf66bf12782dbf4ed8d198c2fe0d7275d7b152829952ac04fcbcc7b6ee2c1" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:e81f2bf72cbc62e3621d0ac3ba0343a24db18315436b811bd6b6462a2dd5c502" [label="mkdir{path=/go}" shape="note"];
  "sha256:95f4fa2c70ff9c7f4911ba0c81024685ad33586635c36cdf4cb6facb4262d079" [label="sha256:95f4fa2c70ff9c7f4911ba0c81024685ad33586635c36cdf4cb6facb4262d079" shape="plaintext"];
  "sha256:6bed27f70996957cac79adcefcad79c18b9bb070a71751a6b9eec276b67ab191" -> "sha256:1a529aabc9679539d139dea62e8a205772e8dbc30de806d2dea616a2d5e4beda" [label=""];
  "sha256:1a529aabc9679539d139dea62e8a205772e8dbc30de806d2dea616a2d5e4beda" -> "sha256:2e28317c432561ecfaab9389964415efd323ccbe8cfb62befa3fc96f4b6b8cb4" [label=""];
  "sha256:2e28317c432561ecfaab9389964415efd323ccbe8cfb62befa3fc96f4b6b8cb4" -> "sha256:f0d13aa60dc00c8c38ea01a2318d15aef4efb40796e2f8a4ad063bc15f825ab7" [label=""];
  "sha256:f0d13aa60dc00c8c38ea01a2318d15aef4efb40796e2f8a4ad063bc15f825ab7" -> "sha256:c99cf66bf12782dbf4ed8d198c2fe0d7275d7b152829952ac04fcbcc7b6ee2c1" [label=""];
  "sha256:c99cf66bf12782dbf4ed8d198c2fe0d7275d7b152829952ac04fcbcc7b6ee2c1" -> "sha256:e81f2bf72cbc62e3621d0ac3ba0343a24db18315436b811bd6b6462a2dd5c502" [label=""];
  "sha256:e81f2bf72cbc62e3621d0ac3ba0343a24db18315436b811bd6b6462a2dd5c502" -> "sha256:95f4fa2c70ff9c7f4911ba0c81024685ad33586635c36cdf4cb6facb4262d079" [label=""];
}

