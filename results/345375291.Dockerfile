[app/sources/345375291.Dockerfile]
digraph {
  "sha256:52f866dbc230a8ea565be466b277cfa564730fe2f2b4243cd80f5e1a39f9a4e3" [label="docker-image://docker.io/balenalib/npe-x500-m3-ubuntu:artful-build" shape="ellipse"];
  "sha256:a39b4afe018f79303d3e9489fe77cecd828ac6333fca2c3936a82c567673d57f" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:92747f6d59bb4a7de1ff128c87be9cb43d1f33557f38add25cadf617b4313920" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:39fc701099e350c2864778f456a49c2d660fa648a88b8697b4c6aefe2f04ebd6" [label="mkdir{path=/go}" shape="note"];
  "sha256:4e1cb652286bea987deea47ae2822fc3c95da489df8eb128ada1404d13aa7657" [label="sha256:4e1cb652286bea987deea47ae2822fc3c95da489df8eb128ada1404d13aa7657" shape="plaintext"];
  "sha256:52f866dbc230a8ea565be466b277cfa564730fe2f2b4243cd80f5e1a39f9a4e3" -> "sha256:a39b4afe018f79303d3e9489fe77cecd828ac6333fca2c3936a82c567673d57f" [label=""];
  "sha256:a39b4afe018f79303d3e9489fe77cecd828ac6333fca2c3936a82c567673d57f" -> "sha256:92747f6d59bb4a7de1ff128c87be9cb43d1f33557f38add25cadf617b4313920" [label=""];
  "sha256:92747f6d59bb4a7de1ff128c87be9cb43d1f33557f38add25cadf617b4313920" -> "sha256:39fc701099e350c2864778f456a49c2d660fa648a88b8697b4c6aefe2f04ebd6" [label=""];
  "sha256:39fc701099e350c2864778f456a49c2d660fa648a88b8697b4c6aefe2f04ebd6" -> "sha256:4e1cb652286bea987deea47ae2822fc3c95da489df8eb128ada1404d13aa7657" [label=""];
}

