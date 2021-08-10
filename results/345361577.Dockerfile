[app/sources/345361577.Dockerfile]
digraph {
  "sha256:abbb550c8f8c0e13c154feb58a7f6bc118e602cfe87da3fb138204cc25ce9292" [label="docker-image://docker.io/balenalib/via-vab820-quad-alpine:3.5-run" shape="ellipse"];
  "sha256:42a47d6c705c33bf227d6c674a97e14f92eb04cfd36a4f0a111e4640ad589d08" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:3d1c5f5e3064129a587d213059749d4338fbce0c07adfe1737a094db7a8b2aa1" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:e8235d6743c86e5b6abee58fded89c1b4280d8fb0707350442dfeef0a7e43355" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"76be47e1f6979af4fc7c0c06d883a082f78a98b9948cf28359702877a8b2b9b2  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:5b2a385bb5109ffb069348779837ec1c975b1d72daf4d5300067119fa4466220" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:3ba859fe6b15211dd390c98afecc03ce1e65867de86a5aba9a0ac6771cc0fd79" [label="mkdir{path=/go}" shape="note"];
  "sha256:0d7fd25512d768df07925aa2ea85d6f7e1e661b7daf5e35abc27bf4b33d8800a" [label="sha256:0d7fd25512d768df07925aa2ea85d6f7e1e661b7daf5e35abc27bf4b33d8800a" shape="plaintext"];
  "sha256:abbb550c8f8c0e13c154feb58a7f6bc118e602cfe87da3fb138204cc25ce9292" -> "sha256:42a47d6c705c33bf227d6c674a97e14f92eb04cfd36a4f0a111e4640ad589d08" [label=""];
  "sha256:42a47d6c705c33bf227d6c674a97e14f92eb04cfd36a4f0a111e4640ad589d08" -> "sha256:3d1c5f5e3064129a587d213059749d4338fbce0c07adfe1737a094db7a8b2aa1" [label=""];
  "sha256:3d1c5f5e3064129a587d213059749d4338fbce0c07adfe1737a094db7a8b2aa1" -> "sha256:e8235d6743c86e5b6abee58fded89c1b4280d8fb0707350442dfeef0a7e43355" [label=""];
  "sha256:e8235d6743c86e5b6abee58fded89c1b4280d8fb0707350442dfeef0a7e43355" -> "sha256:5b2a385bb5109ffb069348779837ec1c975b1d72daf4d5300067119fa4466220" [label=""];
  "sha256:5b2a385bb5109ffb069348779837ec1c975b1d72daf4d5300067119fa4466220" -> "sha256:3ba859fe6b15211dd390c98afecc03ce1e65867de86a5aba9a0ac6771cc0fd79" [label=""];
  "sha256:3ba859fe6b15211dd390c98afecc03ce1e65867de86a5aba9a0ac6771cc0fd79" -> "sha256:0d7fd25512d768df07925aa2ea85d6f7e1e661b7daf5e35abc27bf4b33d8800a" [label=""];
}

