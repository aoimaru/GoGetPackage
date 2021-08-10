[app/sources/280527069.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:3cdb12ab860897adb35e5261b600045f6b8d7d056d1d33fceef94ec04c90c0e8" [label="/bin/sh -c apk --no-cache add ca-certificates" shape="box"];
  "sha256:bfbb035813e9e161add4e401fb8ab58241ef3446bed44f6941bdb255bbe8c3fb" [label="mkdir{path=/root}" shape="note"];
  "sha256:b150da432c7a40066a95bb13c63c745492fdd7212cf68b9867ca367c7b6abf96" [label="docker-image://docker.io/library/golang:1.8" shape="ellipse"];
  "sha256:96c6e48017b59ed0d81f25aa5fbca84721e346dfca3d2d111f41a9d326379a87" [label="mkdir{path=/go/src/github.com/mlabouardy/swaggymnia}" shape="note"];
  "sha256:7abbf8c7bc8b7e7adebd40acdf37d099b3bf8456b58c81b48cd2eac7bf4668b0" [label="local://context" shape="ellipse"];
  "sha256:185b8832b9a82b3b1bf22bec8dfba9b4a921cd5dc7e059258edc2b71eb145e1f" [label="copy{src=/, dest=/go/src/github.com/mlabouardy/swaggymnia/}" shape="note"];
  "sha256:d9f53f8094dfc05a0827f9593c21051f93e0a7faf95fb5f0b9de0ff194a49ae0" [label="/bin/sh -c go get -v" shape="box"];
  "sha256:622dd921e3ae2b39e356e6ef20e8872d0063a8e591c9237ce52522007dd5554b" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o swaggymnia ." shape="box"];
  "sha256:d7b664002b786b36a21d74c349cd48006bbff5f10af7f3a7ea3be8a6c1e5bd6c" [label="copy{src=/go/src/github.com/mlabouardy/swaggymnia/swaggymnia, dest=/root/}" shape="note"];
  "sha256:0163a9b13fd1d3f819f6a208678a5071c835a733633251fb93acebcbc2771d7e" [label="sha256:0163a9b13fd1d3f819f6a208678a5071c835a733633251fb93acebcbc2771d7e" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:3cdb12ab860897adb35e5261b600045f6b8d7d056d1d33fceef94ec04c90c0e8" [label=""];
  "sha256:3cdb12ab860897adb35e5261b600045f6b8d7d056d1d33fceef94ec04c90c0e8" -> "sha256:bfbb035813e9e161add4e401fb8ab58241ef3446bed44f6941bdb255bbe8c3fb" [label=""];
  "sha256:b150da432c7a40066a95bb13c63c745492fdd7212cf68b9867ca367c7b6abf96" -> "sha256:96c6e48017b59ed0d81f25aa5fbca84721e346dfca3d2d111f41a9d326379a87" [label=""];
  "sha256:96c6e48017b59ed0d81f25aa5fbca84721e346dfca3d2d111f41a9d326379a87" -> "sha256:185b8832b9a82b3b1bf22bec8dfba9b4a921cd5dc7e059258edc2b71eb145e1f" [label=""];
  "sha256:7abbf8c7bc8b7e7adebd40acdf37d099b3bf8456b58c81b48cd2eac7bf4668b0" -> "sha256:185b8832b9a82b3b1bf22bec8dfba9b4a921cd5dc7e059258edc2b71eb145e1f" [label=""];
  "sha256:185b8832b9a82b3b1bf22bec8dfba9b4a921cd5dc7e059258edc2b71eb145e1f" -> "sha256:d9f53f8094dfc05a0827f9593c21051f93e0a7faf95fb5f0b9de0ff194a49ae0" [label=""];
  "sha256:d9f53f8094dfc05a0827f9593c21051f93e0a7faf95fb5f0b9de0ff194a49ae0" -> "sha256:622dd921e3ae2b39e356e6ef20e8872d0063a8e591c9237ce52522007dd5554b" [label=""];
  "sha256:bfbb035813e9e161add4e401fb8ab58241ef3446bed44f6941bdb255bbe8c3fb" -> "sha256:d7b664002b786b36a21d74c349cd48006bbff5f10af7f3a7ea3be8a6c1e5bd6c" [label=""];
  "sha256:622dd921e3ae2b39e356e6ef20e8872d0063a8e591c9237ce52522007dd5554b" -> "sha256:d7b664002b786b36a21d74c349cd48006bbff5f10af7f3a7ea3be8a6c1e5bd6c" [label=""];
  "sha256:d7b664002b786b36a21d74c349cd48006bbff5f10af7f3a7ea3be8a6c1e5bd6c" -> "sha256:0163a9b13fd1d3f819f6a208678a5071c835a733633251fb93acebcbc2771d7e" [label=""];
}

