[app/sources/280097052.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:7156115684219992d715d910caa1a89fea8becfe16e4ad29bad6cb66a15151fa" [label="/bin/sh -c apk add --no-cache ca-certificates" shape="box"];
  "sha256:14c42e6e039b32ee2b0d4102c75c452274af1ce24a8695bd1abfba26f9307a2e" [label="docker-image://docker.io/library/golang:1.11-alpine" shape="ellipse"];
  "sha256:e07f869975b988f435bd67760c179f6b07a0b20faf3606cb07682093f620dfef" [label="/bin/sh -c apk add --no-cache make gcc musl-dev linux-headers" shape="box"];
  "sha256:095d8908f4e0f8957a100798ac9f20f528a20f02d9f16078d24f7d8d9c78a5c1" [label="local://context" shape="ellipse"];
  "sha256:d5a5093825e199377e644c7ccb9ddb7f7f502f0c0d353d2884d728560f9974e7" [label="copy{src=/, dest=/go-ethereum}" shape="note"];
  "sha256:8c2b10466fcdac4880bb5a0a13531756070b7fb26141c03ce81ea0961c85cae6" [label="/bin/sh -c cd /go-ethereum && make geth" shape="box"];
  "sha256:09fc90a8a4de73bef97f4e21b1b1baeeb97b5cc2c0d34d884eba591c698005de" [label="copy{src=/go-ethereum/build/bin/geth, dest=/usr/local/bin/}" shape="note"];
  "sha256:b5df6b0e104636333560a35ddf8e9692630ca592db50af8defe9eb941dfcc48b" [label="sha256:b5df6b0e104636333560a35ddf8e9692630ca592db50af8defe9eb941dfcc48b" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:7156115684219992d715d910caa1a89fea8becfe16e4ad29bad6cb66a15151fa" [label=""];
  "sha256:14c42e6e039b32ee2b0d4102c75c452274af1ce24a8695bd1abfba26f9307a2e" -> "sha256:e07f869975b988f435bd67760c179f6b07a0b20faf3606cb07682093f620dfef" [label=""];
  "sha256:e07f869975b988f435bd67760c179f6b07a0b20faf3606cb07682093f620dfef" -> "sha256:d5a5093825e199377e644c7ccb9ddb7f7f502f0c0d353d2884d728560f9974e7" [label=""];
  "sha256:095d8908f4e0f8957a100798ac9f20f528a20f02d9f16078d24f7d8d9c78a5c1" -> "sha256:d5a5093825e199377e644c7ccb9ddb7f7f502f0c0d353d2884d728560f9974e7" [label=""];
  "sha256:d5a5093825e199377e644c7ccb9ddb7f7f502f0c0d353d2884d728560f9974e7" -> "sha256:8c2b10466fcdac4880bb5a0a13531756070b7fb26141c03ce81ea0961c85cae6" [label=""];
  "sha256:7156115684219992d715d910caa1a89fea8becfe16e4ad29bad6cb66a15151fa" -> "sha256:09fc90a8a4de73bef97f4e21b1b1baeeb97b5cc2c0d34d884eba591c698005de" [label=""];
  "sha256:8c2b10466fcdac4880bb5a0a13531756070b7fb26141c03ce81ea0961c85cae6" -> "sha256:09fc90a8a4de73bef97f4e21b1b1baeeb97b5cc2c0d34d884eba591c698005de" [label=""];
  "sha256:09fc90a8a4de73bef97f4e21b1b1baeeb97b5cc2c0d34d884eba591c698005de" -> "sha256:b5df6b0e104636333560a35ddf8e9692630ca592db50af8defe9eb941dfcc48b" [label=""];
}

