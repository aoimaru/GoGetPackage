[app/sources/345378478.Dockerfile]
digraph {
  "sha256:f7cffe008036096fb5d82fb4047b4735ea9d94caf6a976e710b900ab0bd663ad" [label="docker-image://docker.io/balenalib/zc702-zynq7-debian:buster-build" shape="ellipse"];
  "sha256:0577b186e5554c92655b0e0233a423ea9f30a8bcb45a506d408e1768d410b5c9" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:54a3c28496944cef007c8a7b8a042267e7d699dae315d8ef36cbe32d5b0f3140" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:20c6162da73f02671d487985f5dc384ab53d0b0a3cfeea1308983cabfa5c1c24" [label="mkdir{path=/go}" shape="note"];
  "sha256:363e9de51346a1154af1ed8efdc947a9a997e5a6084548558f5cca55fa15e166" [label="sha256:363e9de51346a1154af1ed8efdc947a9a997e5a6084548558f5cca55fa15e166" shape="plaintext"];
  "sha256:f7cffe008036096fb5d82fb4047b4735ea9d94caf6a976e710b900ab0bd663ad" -> "sha256:0577b186e5554c92655b0e0233a423ea9f30a8bcb45a506d408e1768d410b5c9" [label=""];
  "sha256:0577b186e5554c92655b0e0233a423ea9f30a8bcb45a506d408e1768d410b5c9" -> "sha256:54a3c28496944cef007c8a7b8a042267e7d699dae315d8ef36cbe32d5b0f3140" [label=""];
  "sha256:54a3c28496944cef007c8a7b8a042267e7d699dae315d8ef36cbe32d5b0f3140" -> "sha256:20c6162da73f02671d487985f5dc384ab53d0b0a3cfeea1308983cabfa5c1c24" [label=""];
  "sha256:20c6162da73f02671d487985f5dc384ab53d0b0a3cfeea1308983cabfa5c1c24" -> "sha256:363e9de51346a1154af1ed8efdc947a9a997e5a6084548558f5cca55fa15e166" [label=""];
}

