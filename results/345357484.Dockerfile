[app/sources/345357484.Dockerfile]
digraph {
  "sha256:43e3363ccedf231f30a741eb56f24b1a5ce4876af83ba59315e4f08700e53d46" [label="docker-image://docker.io/balenalib/orbitty-tx2-ubuntu:xenial-build" shape="ellipse"];
  "sha256:7c72bd4770d8098a2f7d6c3d5bc31f2170923e66750d9454df996783c6ff18fa" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-arm64.tar.gz\" \t&& echo \"6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8  go$GO_VERSION.linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-arm64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-arm64.tar.gz" shape="box"];
  "sha256:0e15db85718d2ff93c91f40929263cc3d39562a3600185b5b79bb823da40a9ca" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:729193fa01d785b042c97bbb485aa653ae125ba996b860fc9c707281e3c40eb8" [label="mkdir{path=/go}" shape="note"];
  "sha256:dec03518c9cef7625e27b2031916df16d9f14bbb74a8bde338bde21cbe0b9564" [label="sha256:dec03518c9cef7625e27b2031916df16d9f14bbb74a8bde338bde21cbe0b9564" shape="plaintext"];
  "sha256:43e3363ccedf231f30a741eb56f24b1a5ce4876af83ba59315e4f08700e53d46" -> "sha256:7c72bd4770d8098a2f7d6c3d5bc31f2170923e66750d9454df996783c6ff18fa" [label=""];
  "sha256:7c72bd4770d8098a2f7d6c3d5bc31f2170923e66750d9454df996783c6ff18fa" -> "sha256:0e15db85718d2ff93c91f40929263cc3d39562a3600185b5b79bb823da40a9ca" [label=""];
  "sha256:0e15db85718d2ff93c91f40929263cc3d39562a3600185b5b79bb823da40a9ca" -> "sha256:729193fa01d785b042c97bbb485aa653ae125ba996b860fc9c707281e3c40eb8" [label=""];
  "sha256:729193fa01d785b042c97bbb485aa653ae125ba996b860fc9c707281e3c40eb8" -> "sha256:dec03518c9cef7625e27b2031916df16d9f14bbb74a8bde338bde21cbe0b9564" [label=""];
}

