[app/sources/345373811.Dockerfile]
digraph {
  "sha256:2dda6a58fa9adaef8fe4d19bb3d20e5687bc78623b28562c1d76a81bf1769d08" [label="docker-image://docker.io/balenalib/nanopc-t4-debian:buster-build" shape="ellipse"];
  "sha256:cada33f516af75740f5592b6b9f1f329d9c16235cbbd34d501f1c2c510a3f56f" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-aarch64.tar.gz\" \t&& echo \"8b000bee6c8e2512d79182b56b7023d83a9a297bf813a8565ebbee03d8fb2cd7  go$GO_VERSION.linux-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-aarch64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-aarch64.tar.gz" shape="box"];
  "sha256:dba46db82b5f9ba700712aca3cf5972854c47597dc3d96443d17627529af35d6" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:b368befdeff26fa9143f7838be88ea091882a28db19ead3529890ac09574f0a0" [label="mkdir{path=/go}" shape="note"];
  "sha256:75bd2b403d06f19be098e399451f7329c2023662da18b775bd71f0bb77f9000a" [label="sha256:75bd2b403d06f19be098e399451f7329c2023662da18b775bd71f0bb77f9000a" shape="plaintext"];
  "sha256:2dda6a58fa9adaef8fe4d19bb3d20e5687bc78623b28562c1d76a81bf1769d08" -> "sha256:cada33f516af75740f5592b6b9f1f329d9c16235cbbd34d501f1c2c510a3f56f" [label=""];
  "sha256:cada33f516af75740f5592b6b9f1f329d9c16235cbbd34d501f1c2c510a3f56f" -> "sha256:dba46db82b5f9ba700712aca3cf5972854c47597dc3d96443d17627529af35d6" [label=""];
  "sha256:dba46db82b5f9ba700712aca3cf5972854c47597dc3d96443d17627529af35d6" -> "sha256:b368befdeff26fa9143f7838be88ea091882a28db19ead3529890ac09574f0a0" [label=""];
  "sha256:b368befdeff26fa9143f7838be88ea091882a28db19ead3529890ac09574f0a0" -> "sha256:75bd2b403d06f19be098e399451f7329c2023662da18b775bd71f0bb77f9000a" [label=""];
}

