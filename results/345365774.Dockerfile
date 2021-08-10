[app/sources/345365774.Dockerfile]
digraph {
  "sha256:cecdf8b0850b6bcb7fa0ae5ae2b28fb89ff6580739005a9d4cd6437d8c2d00eb" [label="docker-image://docker.io/balenalib/dl-pm6x-ubuntu:trusty-build" shape="ellipse"];
  "sha256:73e6121ad93cf82455ddb2c3d89963e4d7852e4be40eeb2b70ed9d65c9016606" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:4499a4a7c921a7cab74d3debc31c81d9484e46c4487699106414f82b38302365" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:29def97339fcbe2cd5891f97002cb431031da5bc286dfab5419e0dfe74c191d5" [label="mkdir{path=/go}" shape="note"];
  "sha256:d74b42233f3c33bf64ddafb0bce3993617db07fab9e2a5bd9c1984fed7d19853" [label="sha256:d74b42233f3c33bf64ddafb0bce3993617db07fab9e2a5bd9c1984fed7d19853" shape="plaintext"];
  "sha256:cecdf8b0850b6bcb7fa0ae5ae2b28fb89ff6580739005a9d4cd6437d8c2d00eb" -> "sha256:73e6121ad93cf82455ddb2c3d89963e4d7852e4be40eeb2b70ed9d65c9016606" [label=""];
  "sha256:73e6121ad93cf82455ddb2c3d89963e4d7852e4be40eeb2b70ed9d65c9016606" -> "sha256:4499a4a7c921a7cab74d3debc31c81d9484e46c4487699106414f82b38302365" [label=""];
  "sha256:4499a4a7c921a7cab74d3debc31c81d9484e46c4487699106414f82b38302365" -> "sha256:29def97339fcbe2cd5891f97002cb431031da5bc286dfab5419e0dfe74c191d5" [label=""];
  "sha256:29def97339fcbe2cd5891f97002cb431031da5bc286dfab5419e0dfe74c191d5" -> "sha256:d74b42233f3c33bf64ddafb0bce3993617db07fab9e2a5bd9c1984fed7d19853" [label=""];
}

