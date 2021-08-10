[app/sources/332295677.Dockerfile]
digraph {
  "sha256:341431261c8559bb25441fabd833436958a824aaf48a40cfd69877edbe4402ce" [label="docker-image://docker.io/library/golang:1.10.3" shape="ellipse"];
  "sha256:49df6d59ed202c6dec6150a14319e0c5032d98e59d914c86093c247836bca0fd" [label="/bin/sh -c mkdir -p /go/src/github.com/aristanetworks/goarista/cmd" shape="box"];
  "sha256:29f12758d7667f4f662434a1166473a363314879a0d37d720bb4558aaf46feb1" [label="mkdir{path=/go/src/github.com/aristanetworks/goarista}" shape="note"];
  "sha256:9fdb157b8c7c1c8b8b0af2302ae9d7a0be7a7af61d46af8df9ccdfe762a8fc6f" [label="local://context" shape="ellipse"];
  "sha256:dee9b92071be95f3a1d42b5f0c8bf87d8a6673a9d48470d74adbb28364f1ed85" [label="copy{src=/, dest=/go/src/github.com/aristanetworks/goarista/}" shape="note"];
  "sha256:064761979b2f0ecb2d487c6fc5c83dcfa4a3964367104d3c9c9a885c525e7763" [label="/bin/sh -c go get -d ./cmd/ockafka/...   && go install ./cmd/ockafka" shape="box"];
  "sha256:7924cf007d5faddfa6d468fd8a4ca07b4b0a6dbb8fbb939a2b0a2c0f513eb28d" [label="sha256:7924cf007d5faddfa6d468fd8a4ca07b4b0a6dbb8fbb939a2b0a2c0f513eb28d" shape="plaintext"];
  "sha256:341431261c8559bb25441fabd833436958a824aaf48a40cfd69877edbe4402ce" -> "sha256:49df6d59ed202c6dec6150a14319e0c5032d98e59d914c86093c247836bca0fd" [label=""];
  "sha256:49df6d59ed202c6dec6150a14319e0c5032d98e59d914c86093c247836bca0fd" -> "sha256:29f12758d7667f4f662434a1166473a363314879a0d37d720bb4558aaf46feb1" [label=""];
  "sha256:29f12758d7667f4f662434a1166473a363314879a0d37d720bb4558aaf46feb1" -> "sha256:dee9b92071be95f3a1d42b5f0c8bf87d8a6673a9d48470d74adbb28364f1ed85" [label=""];
  "sha256:9fdb157b8c7c1c8b8b0af2302ae9d7a0be7a7af61d46af8df9ccdfe762a8fc6f" -> "sha256:dee9b92071be95f3a1d42b5f0c8bf87d8a6673a9d48470d74adbb28364f1ed85" [label=""];
  "sha256:dee9b92071be95f3a1d42b5f0c8bf87d8a6673a9d48470d74adbb28364f1ed85" -> "sha256:064761979b2f0ecb2d487c6fc5c83dcfa4a3964367104d3c9c9a885c525e7763" [label=""];
  "sha256:064761979b2f0ecb2d487c6fc5c83dcfa4a3964367104d3c9c9a885c525e7763" -> "sha256:7924cf007d5faddfa6d468fd8a4ca07b4b0a6dbb8fbb939a2b0a2c0f513eb28d" [label=""];
}

