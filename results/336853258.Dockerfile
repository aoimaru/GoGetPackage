[app/sources/336853258.Dockerfile]
digraph {
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" [label="docker-image://docker.io/library/alpine:3.8" shape="ellipse"];
  "sha256:d16c031260ae26b377d3a5b3c5eda0e9d0d19577872185e14c110d5be7b7c349" [label="/bin/sh -c apk add --no-cache ca-certificates" shape="box"];
  "sha256:572e785b6f291bec9d572f8576e049db2f4b7dd6325770257fd2c6d3964d3ca1" [label="docker-image://docker.io/library/golang:1.10.0" shape="ellipse"];
  "sha256:f53789fe1f10aada1388fa11855e96a2cfeb85029def92649d961688afe098c3" [label="/bin/sh -c mkdir -p /go/src/github.com/cloudposse/prometheus-to-cloudwatch" shape="box"];
  "sha256:dd4b2e48a9c13692c3997cb42b92744adf2627fb1f97a86479f70beb464a7295" [label="mkdir{path=/go/src/github.com/cloudposse/prometheus-to-cloudwatch}" shape="note"];
  "sha256:51480164ecb07c82fc44cdcb243831a84816ce7835d9f917601ee05fb69c1796" [label="local://context" shape="ellipse"];
  "sha256:1c5116ef4ec75e6397c20c7931da94ff0fc7a65fe4834c2eea0b89fa3450b2ad" [label="copy{src=/, dest=/go/src/github.com/cloudposse/prometheus-to-cloudwatch/}" shape="note"];
  "sha256:b5d8a8fd4401b7dfc47379af9fbd0c5f35ddcc4253507d3b193f3169dc97cda2" [label="/bin/sh -c go get && CGO_ENABLED=0 go build -v -o \"./dist/bin/prometheus-to-cloudwatch\" *.go" shape="box"];
  "sha256:655e325f0e082c6ad2a2bf8f01452b7631800fc73809fb203cfd73bdc42e64e3" [label="copy{src=/go/src/github.com/cloudposse/prometheus-to-cloudwatch/dist/bin/prometheus-to-cloudwatch, dest=/usr/bin/prometheus-to-cloudwatch}" shape="note"];
  "sha256:415d98201c025f37fa91368c674f07be2ef3277fc555e6844015471f0046ae8b" [label="sha256:415d98201c025f37fa91368c674f07be2ef3277fc555e6844015471f0046ae8b" shape="plaintext"];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" -> "sha256:d16c031260ae26b377d3a5b3c5eda0e9d0d19577872185e14c110d5be7b7c349" [label=""];
  "sha256:572e785b6f291bec9d572f8576e049db2f4b7dd6325770257fd2c6d3964d3ca1" -> "sha256:f53789fe1f10aada1388fa11855e96a2cfeb85029def92649d961688afe098c3" [label=""];
  "sha256:f53789fe1f10aada1388fa11855e96a2cfeb85029def92649d961688afe098c3" -> "sha256:dd4b2e48a9c13692c3997cb42b92744adf2627fb1f97a86479f70beb464a7295" [label=""];
  "sha256:dd4b2e48a9c13692c3997cb42b92744adf2627fb1f97a86479f70beb464a7295" -> "sha256:1c5116ef4ec75e6397c20c7931da94ff0fc7a65fe4834c2eea0b89fa3450b2ad" [label=""];
  "sha256:51480164ecb07c82fc44cdcb243831a84816ce7835d9f917601ee05fb69c1796" -> "sha256:1c5116ef4ec75e6397c20c7931da94ff0fc7a65fe4834c2eea0b89fa3450b2ad" [label=""];
  "sha256:1c5116ef4ec75e6397c20c7931da94ff0fc7a65fe4834c2eea0b89fa3450b2ad" -> "sha256:b5d8a8fd4401b7dfc47379af9fbd0c5f35ddcc4253507d3b193f3169dc97cda2" [label=""];
  "sha256:d16c031260ae26b377d3a5b3c5eda0e9d0d19577872185e14c110d5be7b7c349" -> "sha256:655e325f0e082c6ad2a2bf8f01452b7631800fc73809fb203cfd73bdc42e64e3" [label=""];
  "sha256:b5d8a8fd4401b7dfc47379af9fbd0c5f35ddcc4253507d3b193f3169dc97cda2" -> "sha256:655e325f0e082c6ad2a2bf8f01452b7631800fc73809fb203cfd73bdc42e64e3" [label=""];
  "sha256:655e325f0e082c6ad2a2bf8f01452b7631800fc73809fb203cfd73bdc42e64e3" -> "sha256:415d98201c025f37fa91368c674f07be2ef3277fc555e6844015471f0046ae8b" [label=""];
}

