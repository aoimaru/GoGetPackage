[app/sources/345375572.Dockerfile]
digraph {
  "sha256:e4980b2d97be67bac77872f0935ab491578f8b2c2ecbd3d7a8814e6762dccaca" [label="docker-image://docker.io/balenalib/orange-pi-lite-alpine:edge-run" shape="ellipse"];
  "sha256:e0099342d56581d968dbb3555e210a1c4f6c06966c4992487edac7c60ad6f863" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:6a7e4de5ca4306b4a06819d864f583f738ef954aab73f868a27a1523ff188f7c" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:21dfac519d453779886ea5fca776b8e809146e7dc4f09eaf0366010040e60b47" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"76be47e1f6979af4fc7c0c06d883a082f78a98b9948cf28359702877a8b2b9b2  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:6ce4040634bc33cc0c8c127f84ec9275bc5c1510dd6346420bc2df89bff9f0fe" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:70c4ed543f9174cff7f15c02fe76f1f18148d6384ea1e0e34f21785965466270" [label="mkdir{path=/go}" shape="note"];
  "sha256:2d950e6846dca6a527c74671495ed72ff532d923aa82013267146d9c05caf305" [label="sha256:2d950e6846dca6a527c74671495ed72ff532d923aa82013267146d9c05caf305" shape="plaintext"];
  "sha256:e4980b2d97be67bac77872f0935ab491578f8b2c2ecbd3d7a8814e6762dccaca" -> "sha256:e0099342d56581d968dbb3555e210a1c4f6c06966c4992487edac7c60ad6f863" [label=""];
  "sha256:e0099342d56581d968dbb3555e210a1c4f6c06966c4992487edac7c60ad6f863" -> "sha256:6a7e4de5ca4306b4a06819d864f583f738ef954aab73f868a27a1523ff188f7c" [label=""];
  "sha256:6a7e4de5ca4306b4a06819d864f583f738ef954aab73f868a27a1523ff188f7c" -> "sha256:21dfac519d453779886ea5fca776b8e809146e7dc4f09eaf0366010040e60b47" [label=""];
  "sha256:21dfac519d453779886ea5fca776b8e809146e7dc4f09eaf0366010040e60b47" -> "sha256:6ce4040634bc33cc0c8c127f84ec9275bc5c1510dd6346420bc2df89bff9f0fe" [label=""];
  "sha256:6ce4040634bc33cc0c8c127f84ec9275bc5c1510dd6346420bc2df89bff9f0fe" -> "sha256:70c4ed543f9174cff7f15c02fe76f1f18148d6384ea1e0e34f21785965466270" [label=""];
  "sha256:70c4ed543f9174cff7f15c02fe76f1f18148d6384ea1e0e34f21785965466270" -> "sha256:2d950e6846dca6a527c74671495ed72ff532d923aa82013267146d9c05caf305" [label=""];
}

