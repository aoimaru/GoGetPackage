[app/sources/345357606.Dockerfile]
digraph {
  "sha256:bd6ccde2c2ad50ec15a3c8f71d7f3f99cd3b96f9446c7a23d9b56d5f1dc26d77" [label="docker-image://docker.io/balenalib/parallella-debian:stretch-build" shape="ellipse"];
  "sha256:4da28488c573cb4e65a2212d89f1582be7a76b323bf50d4b4ba66f87032a7622" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:fe0b13dca7ae377ab1717ef7b12ed9c945979978c7272abd9de654488265fe7d" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:cc6060172245304d64f9556a113f4bf36f237cf112aa158bfd5aac88725ba9fe" [label="mkdir{path=/go}" shape="note"];
  "sha256:07e8c5d01de41ad3fcd33e1d8295b9414fb3fef6cfd5e53aced3f89f5bd95116" [label="sha256:07e8c5d01de41ad3fcd33e1d8295b9414fb3fef6cfd5e53aced3f89f5bd95116" shape="plaintext"];
  "sha256:bd6ccde2c2ad50ec15a3c8f71d7f3f99cd3b96f9446c7a23d9b56d5f1dc26d77" -> "sha256:4da28488c573cb4e65a2212d89f1582be7a76b323bf50d4b4ba66f87032a7622" [label=""];
  "sha256:4da28488c573cb4e65a2212d89f1582be7a76b323bf50d4b4ba66f87032a7622" -> "sha256:fe0b13dca7ae377ab1717ef7b12ed9c945979978c7272abd9de654488265fe7d" [label=""];
  "sha256:fe0b13dca7ae377ab1717ef7b12ed9c945979978c7272abd9de654488265fe7d" -> "sha256:cc6060172245304d64f9556a113f4bf36f237cf112aa158bfd5aac88725ba9fe" [label=""];
  "sha256:cc6060172245304d64f9556a113f4bf36f237cf112aa158bfd5aac88725ba9fe" -> "sha256:07e8c5d01de41ad3fcd33e1d8295b9414fb3fef6cfd5e53aced3f89f5bd95116" [label=""];
}

