[app/sources/470704486.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:7156115684219992d715d910caa1a89fea8becfe16e4ad29bad6cb66a15151fa" [label="/bin/sh -c apk add --no-cache ca-certificates" shape="box"];
  "sha256:70458f1ba33251020a20232472588685ceff7a78e8ba6f0f755bc53a822ba531" [label="docker-image://docker.io/library/golang:1.11" shape="ellipse"];
  "sha256:73f53a55e2018fa5c79c057a98c9c19b9125bd5d49e68daf808760d4e80047d0" [label="mkdir{path=/app}" shape="note"];
  "sha256:0a880abee07706ef2967b21d30b9caa010e0a054c18e1fdb755dbc2a5d20d942" [label="local://context" shape="ellipse"];
  "sha256:7dab1318e500367480952fc8b6d159b6d54d99957597ff314f348c06d364d042" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:257afc86011ba162f08d0feb7d6211ea5990dc2578a3b317abbbd7d50701c0ab" [label="/bin/sh -c go get ./..." shape="box"];
  "sha256:5fe2b70d229bda8e1d44647f8b03c071de9b0f0d3c6d40531f1554c3bfa8958b" [label="/bin/sh -c mkdir /out && CGO_ENABLED=0 GOOS=linux go build -a -tags netgo -ldflags '-w' -o /out/kms-operator ./cmd/kms-operator/main.go" shape="box"];
  "sha256:ad7ce1b33cd9f869d3cee7865b0f5c73a3b3948eda612d5526299e84d6a135e6" [label="copy{src=/out/kms-operator, dest=/app/kms-operator}" shape="note"];
  "sha256:0abc9587f522dab5ed6c72330a3cb18f2f0ec83f92112878a75f3514641e00de" [label="sha256:0abc9587f522dab5ed6c72330a3cb18f2f0ec83f92112878a75f3514641e00de" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:7156115684219992d715d910caa1a89fea8becfe16e4ad29bad6cb66a15151fa" [label=""];
  "sha256:70458f1ba33251020a20232472588685ceff7a78e8ba6f0f755bc53a822ba531" -> "sha256:73f53a55e2018fa5c79c057a98c9c19b9125bd5d49e68daf808760d4e80047d0" [label=""];
  "sha256:73f53a55e2018fa5c79c057a98c9c19b9125bd5d49e68daf808760d4e80047d0" -> "sha256:7dab1318e500367480952fc8b6d159b6d54d99957597ff314f348c06d364d042" [label=""];
  "sha256:0a880abee07706ef2967b21d30b9caa010e0a054c18e1fdb755dbc2a5d20d942" -> "sha256:7dab1318e500367480952fc8b6d159b6d54d99957597ff314f348c06d364d042" [label=""];
  "sha256:7dab1318e500367480952fc8b6d159b6d54d99957597ff314f348c06d364d042" -> "sha256:257afc86011ba162f08d0feb7d6211ea5990dc2578a3b317abbbd7d50701c0ab" [label=""];
  "sha256:257afc86011ba162f08d0feb7d6211ea5990dc2578a3b317abbbd7d50701c0ab" -> "sha256:5fe2b70d229bda8e1d44647f8b03c071de9b0f0d3c6d40531f1554c3bfa8958b" [label=""];
  "sha256:7156115684219992d715d910caa1a89fea8becfe16e4ad29bad6cb66a15151fa" -> "sha256:ad7ce1b33cd9f869d3cee7865b0f5c73a3b3948eda612d5526299e84d6a135e6" [label=""];
  "sha256:5fe2b70d229bda8e1d44647f8b03c071de9b0f0d3c6d40531f1554c3bfa8958b" -> "sha256:ad7ce1b33cd9f869d3cee7865b0f5c73a3b3948eda612d5526299e84d6a135e6" [label=""];
  "sha256:ad7ce1b33cd9f869d3cee7865b0f5c73a3b3948eda612d5526299e84d6a135e6" -> "sha256:0abc9587f522dab5ed6c72330a3cb18f2f0ec83f92112878a75f3514641e00de" [label=""];
}

