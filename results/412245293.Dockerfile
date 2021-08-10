[app/sources/412245293.Dockerfile]
digraph {
  "sha256:09467ba55ad6c3022b4660cd9c2d9d9df5fa09c8cf5e8117f073c457ee05e0ec" [label="docker-image://docker.io/library/rabbitmq:3.6.9" shape="ellipse"];
  "sha256:ebad10441522ca2ade168aa7ee211d2f85be976267fd9b6e0d8a3a0f869670b5" [label="local://context" shape="ellipse"];
  "sha256:d4a74e89db97cc529730db3b931c01aaf5750385fa3b9fcfda4a68c7beac2b15" [label="copy{src=/rabbitmq.config, dest=/etc/rabbitmq/}" shape="note"];
  "sha256:33aa307aea2eebd396bc3e06ff6498329cfd74dc53d7d33e349ea99309776be1" [label="copy{src=/definitions.json, dest=/etc/rabbitmq/}" shape="note"];
  "sha256:89779f9534316fba648ae0338c667348b4b5b9fdf8a4d1152853d38266cf0b5c" [label="sha256:89779f9534316fba648ae0338c667348b4b5b9fdf8a4d1152853d38266cf0b5c" shape="plaintext"];
  "sha256:09467ba55ad6c3022b4660cd9c2d9d9df5fa09c8cf5e8117f073c457ee05e0ec" -> "sha256:d4a74e89db97cc529730db3b931c01aaf5750385fa3b9fcfda4a68c7beac2b15" [label=""];
  "sha256:ebad10441522ca2ade168aa7ee211d2f85be976267fd9b6e0d8a3a0f869670b5" -> "sha256:d4a74e89db97cc529730db3b931c01aaf5750385fa3b9fcfda4a68c7beac2b15" [label=""];
  "sha256:d4a74e89db97cc529730db3b931c01aaf5750385fa3b9fcfda4a68c7beac2b15" -> "sha256:33aa307aea2eebd396bc3e06ff6498329cfd74dc53d7d33e349ea99309776be1" [label=""];
  "sha256:ebad10441522ca2ade168aa7ee211d2f85be976267fd9b6e0d8a3a0f869670b5" -> "sha256:33aa307aea2eebd396bc3e06ff6498329cfd74dc53d7d33e349ea99309776be1" [label=""];
  "sha256:33aa307aea2eebd396bc3e06ff6498329cfd74dc53d7d33e349ea99309776be1" -> "sha256:89779f9534316fba648ae0338c667348b4b5b9fdf8a4d1152853d38266cf0b5c" [label=""];
}

