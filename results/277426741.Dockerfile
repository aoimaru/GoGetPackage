[app/sources/277426741.Dockerfile]
digraph {
  "sha256:14c42e6e039b32ee2b0d4102c75c452274af1ce24a8695bd1abfba26f9307a2e" [label="docker-image://docker.io/library/golang:1.11-alpine" shape="ellipse"];
  "sha256:69b274711df0998005c6580b55a1e85941858335d556aca535958a6340fe4d71" [label="/bin/sh -c apk add --update zstd-static zstd-dev make gcc musl-dev git" shape="box"];
  "sha256:0c6fc20c14aeb2b805b6fb0d74378c6f14779de4c756bd3a3e460a130518bca4" [label="/bin/sh -c go get golang.org/x/lint/golint" shape="box"];
  "sha256:92826aaba21b1a7e5d3dcacc3994f0547861ab159ab4628d5fef1aa244178069" [label="/bin/sh -c mkdir -p /go/src/github.com/Vertamedia/chproxy" shape="box"];
  "sha256:471d9d000d980b9bdc6161b24b4c075c371ff805e8b726b2dad1f67fa4b4cfe8" [label="mkdir{path=/go/src/github.com/Vertamedia/chproxy}" shape="note"];
  "sha256:0f2ca2cce95996ade962b5863370aa199d8dbb174950bbd278ebce51827fb578" [label="local://context" shape="ellipse"];
  "sha256:0bf23032d6b340edd78f4fe2947bc3f65160f5319094922ae6509cacc4e562cf" [label="copy{src=/, dest=/go/src/github.com/Vertamedia/chproxy/}" shape="note"];
  "sha256:b586e0031ac4fc0559763e4318653c1ee97a41f5d35f6f72767aa010b91540e8" [label="/bin/sh -c make release-build" shape="box"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:8e30e018b5fe74fb0bd3071438a5e6a0b09e1ddde237f758086c4707fea65cbb" [label="copy{src=/go/src/github.com/Vertamedia/chproxy/chproxy, dest=/chproxy}" shape="note"];
  "sha256:0927584e88d2b9f78b43d0e1a4820b863ff53cdb1821266db1b5adcd0316748f" [label="sha256:0927584e88d2b9f78b43d0e1a4820b863ff53cdb1821266db1b5adcd0316748f" shape="plaintext"];
  "sha256:14c42e6e039b32ee2b0d4102c75c452274af1ce24a8695bd1abfba26f9307a2e" -> "sha256:69b274711df0998005c6580b55a1e85941858335d556aca535958a6340fe4d71" [label=""];
  "sha256:69b274711df0998005c6580b55a1e85941858335d556aca535958a6340fe4d71" -> "sha256:0c6fc20c14aeb2b805b6fb0d74378c6f14779de4c756bd3a3e460a130518bca4" [label=""];
  "sha256:0c6fc20c14aeb2b805b6fb0d74378c6f14779de4c756bd3a3e460a130518bca4" -> "sha256:92826aaba21b1a7e5d3dcacc3994f0547861ab159ab4628d5fef1aa244178069" [label=""];
  "sha256:92826aaba21b1a7e5d3dcacc3994f0547861ab159ab4628d5fef1aa244178069" -> "sha256:471d9d000d980b9bdc6161b24b4c075c371ff805e8b726b2dad1f67fa4b4cfe8" [label=""];
  "sha256:471d9d000d980b9bdc6161b24b4c075c371ff805e8b726b2dad1f67fa4b4cfe8" -> "sha256:0bf23032d6b340edd78f4fe2947bc3f65160f5319094922ae6509cacc4e562cf" [label=""];
  "sha256:0f2ca2cce95996ade962b5863370aa199d8dbb174950bbd278ebce51827fb578" -> "sha256:0bf23032d6b340edd78f4fe2947bc3f65160f5319094922ae6509cacc4e562cf" [label=""];
  "sha256:0bf23032d6b340edd78f4fe2947bc3f65160f5319094922ae6509cacc4e562cf" -> "sha256:b586e0031ac4fc0559763e4318653c1ee97a41f5d35f6f72767aa010b91540e8" [label=""];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:8e30e018b5fe74fb0bd3071438a5e6a0b09e1ddde237f758086c4707fea65cbb" [label=""];
  "sha256:b586e0031ac4fc0559763e4318653c1ee97a41f5d35f6f72767aa010b91540e8" -> "sha256:8e30e018b5fe74fb0bd3071438a5e6a0b09e1ddde237f758086c4707fea65cbb" [label=""];
  "sha256:8e30e018b5fe74fb0bd3071438a5e6a0b09e1ddde237f758086c4707fea65cbb" -> "sha256:0927584e88d2b9f78b43d0e1a4820b863ff53cdb1821266db1b5adcd0316748f" [label=""];
}

