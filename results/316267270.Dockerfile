[app/sources/316267270.Dockerfile]
digraph {
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:1187ca6ff183a8e7b01b8ad9a9b463a8d0d08e1ca9b09b09f7e39fc31070731f" [label="mkdir{path=/root}" shape="note"];
  "sha256:1ff21c9e1d2fe9da23b45d55706b282cd47e108e9a4908fb98e15292be2dcaf8" [label="local://context" shape="ellipse"];
  "sha256:e125ff4c9e36fddf936125530d26f82c487b9f24bcf0e7a7a490f588e2ae1305" [label="copy{src=/, dest=/go/src/golang.org/x/tools/cmd/getgo}" shape="note"];
  "sha256:f1a00a8ab331aae61bc40daae5fbea0ecbbecc5bb0cceca055147d7c1b1902a9" [label="/bin/sh -c ( \t\tcd /go/src/golang.org/x/tools/cmd/getgo \t\t&& go build \t\t&& mv getgo /usr/local/bin/getgo \t)" shape="box"];
  "sha256:403c25de8db36764e988080417a10215bab3e3c8a940f9d7a530b216d95169a3" [label="/bin/sh -c rm -rf /go /usr/local/go" shape="box"];
  "sha256:9d8bcd1b1b2531d4c5cee448db126ff5943f393f791b8817a8baede829405654" [label="sha256:9d8bcd1b1b2531d4c5cee448db126ff5943f393f791b8817a8baede829405654" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:1187ca6ff183a8e7b01b8ad9a9b463a8d0d08e1ca9b09b09f7e39fc31070731f" [label=""];
  "sha256:1187ca6ff183a8e7b01b8ad9a9b463a8d0d08e1ca9b09b09f7e39fc31070731f" -> "sha256:e125ff4c9e36fddf936125530d26f82c487b9f24bcf0e7a7a490f588e2ae1305" [label=""];
  "sha256:1ff21c9e1d2fe9da23b45d55706b282cd47e108e9a4908fb98e15292be2dcaf8" -> "sha256:e125ff4c9e36fddf936125530d26f82c487b9f24bcf0e7a7a490f588e2ae1305" [label=""];
  "sha256:e125ff4c9e36fddf936125530d26f82c487b9f24bcf0e7a7a490f588e2ae1305" -> "sha256:f1a00a8ab331aae61bc40daae5fbea0ecbbecc5bb0cceca055147d7c1b1902a9" [label=""];
  "sha256:f1a00a8ab331aae61bc40daae5fbea0ecbbecc5bb0cceca055147d7c1b1902a9" -> "sha256:403c25de8db36764e988080417a10215bab3e3c8a940f9d7a530b216d95169a3" [label=""];
  "sha256:403c25de8db36764e988080417a10215bab3e3c8a940f9d7a530b216d95169a3" -> "sha256:9d8bcd1b1b2531d4c5cee448db126ff5943f393f791b8817a8baede829405654" [label=""];
}

