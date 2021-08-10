[app/sources/345371399.Dockerfile]
digraph {
  "sha256:41d3f6819e58fc6e14dd9bfbfe6f404b37cdcf9a091f622fd82d510ae583da89" [label="docker-image://docker.io/balenalib/cl-som-imx8-alpine:3.5-run" shape="ellipse"];
  "sha256:4c6a489934bc69691f1e2f4353bbdaf9ad784e62c749c2767aa3b11d12d43df4" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:a0d7cf6c90fc13665a5c1b5b3fb6eb3c116497094ba57a453ae5f3990df86220" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:a59187ec908d41041a27abfa115a1fbd686b2547406d680a8479abb47995aa6e" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-aarch64.tar.gz\" \t&& echo \"3c8658ee1761b83c05027e1d60d13857d64e3d116efe0ebe9dcce353fa0d1232  go$GO_VERSION.linux-alpine-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-aarch64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-aarch64.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:3afe219b44811d757548fdc85cfef78cc6cf81faf47fa5540671d55e3fa94e4c" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:7b801f555c751cc5716cc5f678482b13008b1727b6e7382ddbec0eab01281375" [label="mkdir{path=/go}" shape="note"];
  "sha256:5e1977db83f47603c87e595ae66cd0c07d554ec93f377709d9cf7c34bab19cf5" [label="sha256:5e1977db83f47603c87e595ae66cd0c07d554ec93f377709d9cf7c34bab19cf5" shape="plaintext"];
  "sha256:41d3f6819e58fc6e14dd9bfbfe6f404b37cdcf9a091f622fd82d510ae583da89" -> "sha256:4c6a489934bc69691f1e2f4353bbdaf9ad784e62c749c2767aa3b11d12d43df4" [label=""];
  "sha256:4c6a489934bc69691f1e2f4353bbdaf9ad784e62c749c2767aa3b11d12d43df4" -> "sha256:a0d7cf6c90fc13665a5c1b5b3fb6eb3c116497094ba57a453ae5f3990df86220" [label=""];
  "sha256:a0d7cf6c90fc13665a5c1b5b3fb6eb3c116497094ba57a453ae5f3990df86220" -> "sha256:a59187ec908d41041a27abfa115a1fbd686b2547406d680a8479abb47995aa6e" [label=""];
  "sha256:a59187ec908d41041a27abfa115a1fbd686b2547406d680a8479abb47995aa6e" -> "sha256:3afe219b44811d757548fdc85cfef78cc6cf81faf47fa5540671d55e3fa94e4c" [label=""];
  "sha256:3afe219b44811d757548fdc85cfef78cc6cf81faf47fa5540671d55e3fa94e4c" -> "sha256:7b801f555c751cc5716cc5f678482b13008b1727b6e7382ddbec0eab01281375" [label=""];
  "sha256:7b801f555c751cc5716cc5f678482b13008b1727b6e7382ddbec0eab01281375" -> "sha256:5e1977db83f47603c87e595ae66cd0c07d554ec93f377709d9cf7c34bab19cf5" [label=""];
}

