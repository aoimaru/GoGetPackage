[app/sources/345368162.Dockerfile]
digraph {
  "sha256:53a0f8b7d66faed13396fcf82d76cab9c9eb0a2256519552353d30c05ed8d0ab" [label="docker-image://docker.io/balenalib/artik710-fedora:29-build" shape="ellipse"];
  "sha256:2aa34fec849a83eb05f2541b5eeac9d25463f483889386c287b8459895f615fb" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-aarch64.tar.gz\" \t&& echo \"8b000bee6c8e2512d79182b56b7023d83a9a297bf813a8565ebbee03d8fb2cd7  go$GO_VERSION.linux-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-aarch64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-aarch64.tar.gz" shape="box"];
  "sha256:fb6ed56ec6ec845d95610b2f6327b2a7a71358c46ff9fa144a5cc5a18fa267fd" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:1e6f1c769bf1a69dde8b3ab47aff037576f6bd54b14fc0b92dec2c871832e195" [label="mkdir{path=/go}" shape="note"];
  "sha256:26b2ae53ad7b594f95ef3be91fc4e9e9a6c04ec4616fdb8ff0a8f1ab448b0851" [label="sha256:26b2ae53ad7b594f95ef3be91fc4e9e9a6c04ec4616fdb8ff0a8f1ab448b0851" shape="plaintext"];
  "sha256:53a0f8b7d66faed13396fcf82d76cab9c9eb0a2256519552353d30c05ed8d0ab" -> "sha256:2aa34fec849a83eb05f2541b5eeac9d25463f483889386c287b8459895f615fb" [label=""];
  "sha256:2aa34fec849a83eb05f2541b5eeac9d25463f483889386c287b8459895f615fb" -> "sha256:fb6ed56ec6ec845d95610b2f6327b2a7a71358c46ff9fa144a5cc5a18fa267fd" [label=""];
  "sha256:fb6ed56ec6ec845d95610b2f6327b2a7a71358c46ff9fa144a5cc5a18fa267fd" -> "sha256:1e6f1c769bf1a69dde8b3ab47aff037576f6bd54b14fc0b92dec2c871832e195" [label=""];
  "sha256:1e6f1c769bf1a69dde8b3ab47aff037576f6bd54b14fc0b92dec2c871832e195" -> "sha256:26b2ae53ad7b594f95ef3be91fc4e9e9a6c04ec4616fdb8ff0a8f1ab448b0851" [label=""];
}

