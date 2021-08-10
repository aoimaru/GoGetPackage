[app/sources/139153029.Dockerfile]
digraph {
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" [label="docker-image://docker.io/library/busybox:latest" shape="ellipse"];
  "sha256:b534bde3131e0ed1df088aa96c4b25f8d8416a6cd670c629dbfa4a70d7be46ac" [label="local://context" shape="ellipse"];
  "sha256:b157f395fc786b2e4b009d10ad5c87a7b29637d392931ab55dd023b9fb016c26" [label="docker-image://docker.io/library/golang:1.10.3-alpine3.8" shape="ellipse"];
  "sha256:a2d3ad2e47428871ab6c2a803980bc71705e04a800b8b420a1f1e8bcffcdc7db" [label="/bin/sh -c apk update   && apk add --no-cache git   && go get -u github.com/golang/dep/cmd/dep" shape="box"];
  "sha256:644fc1101a623d7ad3aec2cee9f1d992322a108acd49d0ffc997d089a09f18dd" [label="mkdir{path=/go/src/github.com/ynqa/wego}" shape="note"];
  "sha256:c3f24f197a5bf6977e16c9eb930fd280b33fd16c54c9816360ab6dc5d957157b" [label="copy{src=/, dest=/go/src/github.com/ynqa/wego/}" shape="note"];
  "sha256:09c96f5aed45cc5000ad0004a9a991c77486c5da9668b44d65226d8bd664d802" [label="/bin/sh -c dep ensure -v -vendor-only" shape="box"];
  "sha256:0b7955d8d17b255ba6bb45a08c0a89473f019e674bc227a43aeeb30124de40bd" [label="/bin/sh -c go build -v -o wego ." shape="box"];
  "sha256:d5033775cb024871310f8a816a2e04f228d324a11fdbe914e90e3a1a59a15f3b" [label="copy{src=/go/src/github.com/ynqa/wego/wego, dest=/usr/local/bin/wego}" shape="note"];
  "sha256:e508e484227eccf9e96292fe62849f8c9c9032381809a86371a5855439d3b901" [label="sha256:e508e484227eccf9e96292fe62849f8c9c9032381809a86371a5855439d3b901" shape="plaintext"];
  "sha256:b157f395fc786b2e4b009d10ad5c87a7b29637d392931ab55dd023b9fb016c26" -> "sha256:a2d3ad2e47428871ab6c2a803980bc71705e04a800b8b420a1f1e8bcffcdc7db" [label=""];
  "sha256:a2d3ad2e47428871ab6c2a803980bc71705e04a800b8b420a1f1e8bcffcdc7db" -> "sha256:644fc1101a623d7ad3aec2cee9f1d992322a108acd49d0ffc997d089a09f18dd" [label=""];
  "sha256:644fc1101a623d7ad3aec2cee9f1d992322a108acd49d0ffc997d089a09f18dd" -> "sha256:c3f24f197a5bf6977e16c9eb930fd280b33fd16c54c9816360ab6dc5d957157b" [label=""];
  "sha256:b534bde3131e0ed1df088aa96c4b25f8d8416a6cd670c629dbfa4a70d7be46ac" -> "sha256:c3f24f197a5bf6977e16c9eb930fd280b33fd16c54c9816360ab6dc5d957157b" [label=""];
  "sha256:c3f24f197a5bf6977e16c9eb930fd280b33fd16c54c9816360ab6dc5d957157b" -> "sha256:09c96f5aed45cc5000ad0004a9a991c77486c5da9668b44d65226d8bd664d802" [label=""];
  "sha256:09c96f5aed45cc5000ad0004a9a991c77486c5da9668b44d65226d8bd664d802" -> "sha256:0b7955d8d17b255ba6bb45a08c0a89473f019e674bc227a43aeeb30124de40bd" [label=""];
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" -> "sha256:d5033775cb024871310f8a816a2e04f228d324a11fdbe914e90e3a1a59a15f3b" [label=""];
  "sha256:0b7955d8d17b255ba6bb45a08c0a89473f019e674bc227a43aeeb30124de40bd" -> "sha256:d5033775cb024871310f8a816a2e04f228d324a11fdbe914e90e3a1a59a15f3b" [label=""];
  "sha256:d5033775cb024871310f8a816a2e04f228d324a11fdbe914e90e3a1a59a15f3b" -> "sha256:e508e484227eccf9e96292fe62849f8c9c9032381809a86371a5855439d3b901" [label=""];
}

