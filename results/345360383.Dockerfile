[app/sources/345360383.Dockerfile]
digraph {
  "sha256:101808639ce11e112422ad1d6632e3a5bb453deee317e0cbab2c1260e33173c3" [label="docker-image://docker.io/balenalib/srd3-tx2-ubuntu:artful-run" shape="ellipse"];
  "sha256:ce5240e9b82cc7dcd230d8fbad25c86b38eac1f19950fd9453fe9da7e3f1cd30" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:e9729999eedf7b45d46aaa5db29c6c552cc9568c73b375161d833128c9bfdf40" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-aarch64.tar.gz\" \t&& echo \"8b000bee6c8e2512d79182b56b7023d83a9a297bf813a8565ebbee03d8fb2cd7  go$GO_VERSION.linux-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-aarch64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-aarch64.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:ad551b149faa926e621248f1731b517d710e9aac051718930f06c1f444273586" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:e8bd93e38d5eebc2a4fc4d771811dee1a1ef0fe5e3aa681c44a8651e87ec90e7" [label="mkdir{path=/go}" shape="note"];
  "sha256:38f3bf8ff62e79731656dd4913d2ece747c5410fc20de74463bc33e3290bdd4c" [label="sha256:38f3bf8ff62e79731656dd4913d2ece747c5410fc20de74463bc33e3290bdd4c" shape="plaintext"];
  "sha256:101808639ce11e112422ad1d6632e3a5bb453deee317e0cbab2c1260e33173c3" -> "sha256:ce5240e9b82cc7dcd230d8fbad25c86b38eac1f19950fd9453fe9da7e3f1cd30" [label=""];
  "sha256:ce5240e9b82cc7dcd230d8fbad25c86b38eac1f19950fd9453fe9da7e3f1cd30" -> "sha256:e9729999eedf7b45d46aaa5db29c6c552cc9568c73b375161d833128c9bfdf40" [label=""];
  "sha256:e9729999eedf7b45d46aaa5db29c6c552cc9568c73b375161d833128c9bfdf40" -> "sha256:ad551b149faa926e621248f1731b517d710e9aac051718930f06c1f444273586" [label=""];
  "sha256:ad551b149faa926e621248f1731b517d710e9aac051718930f06c1f444273586" -> "sha256:e8bd93e38d5eebc2a4fc4d771811dee1a1ef0fe5e3aa681c44a8651e87ec90e7" [label=""];
  "sha256:e8bd93e38d5eebc2a4fc4d771811dee1a1ef0fe5e3aa681c44a8651e87ec90e7" -> "sha256:38f3bf8ff62e79731656dd4913d2ece747c5410fc20de74463bc33e3290bdd4c" [label=""];
}

