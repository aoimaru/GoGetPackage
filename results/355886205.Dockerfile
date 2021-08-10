[app/sources/355886205.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" [label="docker-image://docker.io/library/golang:alpine" shape="ellipse"];
  "sha256:8a5166c7d9d619a3df3a0702a5179c135d82fdb5720459c328f88790c357de5d" [label="/bin/sh -c apk add git && go get github.com/mkevac/goduplicator" shape="box"];
  "sha256:023a239b5cfb6662ff44550dc6190e6d0f82d226787d9228f91c3e774be7fce0" [label="copy{src=/go/bin/goduplicator, dest=/usr/local/bin/goduplicator}" shape="note"];
  "sha256:545f461ba293d30bacccf6062634dddf8854c55fe3f615565a1af5d860bb5314" [label="sha256:545f461ba293d30bacccf6062634dddf8854c55fe3f615565a1af5d860bb5314" shape="plaintext"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" -> "sha256:8a5166c7d9d619a3df3a0702a5179c135d82fdb5720459c328f88790c357de5d" [label=""];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:023a239b5cfb6662ff44550dc6190e6d0f82d226787d9228f91c3e774be7fce0" [label=""];
  "sha256:8a5166c7d9d619a3df3a0702a5179c135d82fdb5720459c328f88790c357de5d" -> "sha256:023a239b5cfb6662ff44550dc6190e6d0f82d226787d9228f91c3e774be7fce0" [label=""];
  "sha256:023a239b5cfb6662ff44550dc6190e6d0f82d226787d9228f91c3e774be7fce0" -> "sha256:545f461ba293d30bacccf6062634dddf8854c55fe3f615565a1af5d860bb5314" [label=""];
}

