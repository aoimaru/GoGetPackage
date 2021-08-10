[app/sources/345357897.Dockerfile]
digraph {
  "sha256:3a213e55f7c9559bce632f0f1e4a79ef7b034168206e0d7261f4721f63db38de" [label="docker-image://docker.io/balenalib/qemux86-ubuntu:bionic-build" shape="ellipse"];
  "sha256:c2a66d1c9c5f96e4a89c019990f89e65e827941d446ea9f775dbd2d3cbaa9ca9" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-386.tar.gz\" \t&& echo \"146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980  go$GO_VERSION.linux-386.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-386.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-386.tar.gz" shape="box"];
  "sha256:f86d6780b162e0c68e428ec890a70409d2fa5099ce4dc264b462b6ba21672dd5" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:0f9fd2bbef1da4675c84a51e189d8ce99edd2486e958b4bccbc5d300d9330c69" [label="mkdir{path=/go}" shape="note"];
  "sha256:0515d7b36c02796dc9214f786eb49c8f1f5e004ffa0f0e1dfad0138469e768b6" [label="sha256:0515d7b36c02796dc9214f786eb49c8f1f5e004ffa0f0e1dfad0138469e768b6" shape="plaintext"];
  "sha256:3a213e55f7c9559bce632f0f1e4a79ef7b034168206e0d7261f4721f63db38de" -> "sha256:c2a66d1c9c5f96e4a89c019990f89e65e827941d446ea9f775dbd2d3cbaa9ca9" [label=""];
  "sha256:c2a66d1c9c5f96e4a89c019990f89e65e827941d446ea9f775dbd2d3cbaa9ca9" -> "sha256:f86d6780b162e0c68e428ec890a70409d2fa5099ce4dc264b462b6ba21672dd5" [label=""];
  "sha256:f86d6780b162e0c68e428ec890a70409d2fa5099ce4dc264b462b6ba21672dd5" -> "sha256:0f9fd2bbef1da4675c84a51e189d8ce99edd2486e958b4bccbc5d300d9330c69" [label=""];
  "sha256:0f9fd2bbef1da4675c84a51e189d8ce99edd2486e958b4bccbc5d300d9330c69" -> "sha256:0515d7b36c02796dc9214f786eb49c8f1f5e004ffa0f0e1dfad0138469e768b6" [label=""];
}

