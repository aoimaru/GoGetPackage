[app/sources/345363604.Dockerfile]
digraph {
  "sha256:653883623d934b03626b742595b6fd3f83c1eb7955e53f9e8106d4a0a46f0d18" [label="docker-image://docker.io/balenalib/armv7hf-debian:stretch-build" shape="ellipse"];
  "sha256:ab7a8de84ba3c36599e70a9c68c24375982739dd032a287b273729f36ac6fc99" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:759fce9b15a6b4d36584adc9e56a4e1ab6d25eb7db649168569f76283f99e601" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:3be888a8f2c7fae5d96b21dbeedc3e6abac3394ee7b5cf218cc3c1a4d20c56df" [label="mkdir{path=/go}" shape="note"];
  "sha256:e3b07671908b376b673aaf8c1b5effd6707c3d3cb28f04dc5c5fc68f59f76602" [label="sha256:e3b07671908b376b673aaf8c1b5effd6707c3d3cb28f04dc5c5fc68f59f76602" shape="plaintext"];
  "sha256:653883623d934b03626b742595b6fd3f83c1eb7955e53f9e8106d4a0a46f0d18" -> "sha256:ab7a8de84ba3c36599e70a9c68c24375982739dd032a287b273729f36ac6fc99" [label=""];
  "sha256:ab7a8de84ba3c36599e70a9c68c24375982739dd032a287b273729f36ac6fc99" -> "sha256:759fce9b15a6b4d36584adc9e56a4e1ab6d25eb7db649168569f76283f99e601" [label=""];
  "sha256:759fce9b15a6b4d36584adc9e56a4e1ab6d25eb7db649168569f76283f99e601" -> "sha256:3be888a8f2c7fae5d96b21dbeedc3e6abac3394ee7b5cf218cc3c1a4d20c56df" [label=""];
  "sha256:3be888a8f2c7fae5d96b21dbeedc3e6abac3394ee7b5cf218cc3c1a4d20c56df" -> "sha256:e3b07671908b376b673aaf8c1b5effd6707c3d3cb28f04dc5c5fc68f59f76602" [label=""];
}

