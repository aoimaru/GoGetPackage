[app/sources/345373483.Dockerfile]
digraph {
  "sha256:8d927edf33ed56d5794b198a9bbf6a7535cac04aeeb541732aafea880adddd67" [label="docker-image://docker.io/balenalib/kitra520-debian:jessie-build" shape="ellipse"];
  "sha256:2e61e736721cfbf784c19cc0ec7d97adbca3c5e90b5a4f3acd36fe5075a10b7d" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f8a06c2832ca01001d0ffc68a44a2d4c569285cd485a0a61ee7169bc87adbb0f  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:dbe74ae6ade06c96a5e0ca5d80effacb9f06c7d18f5399970adf077eca8c7166" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:35d30dd261519ed72afbb0cd0883e78ea9673b6510739505ecadd79af6c46d32" [label="mkdir{path=/go}" shape="note"];
  "sha256:c4ab43fc56e6f3583f4e4cfdc877605d2a958da2e58c17fc5c35c0e788e06439" [label="sha256:c4ab43fc56e6f3583f4e4cfdc877605d2a958da2e58c17fc5c35c0e788e06439" shape="plaintext"];
  "sha256:8d927edf33ed56d5794b198a9bbf6a7535cac04aeeb541732aafea880adddd67" -> "sha256:2e61e736721cfbf784c19cc0ec7d97adbca3c5e90b5a4f3acd36fe5075a10b7d" [label=""];
  "sha256:2e61e736721cfbf784c19cc0ec7d97adbca3c5e90b5a4f3acd36fe5075a10b7d" -> "sha256:dbe74ae6ade06c96a5e0ca5d80effacb9f06c7d18f5399970adf077eca8c7166" [label=""];
  "sha256:dbe74ae6ade06c96a5e0ca5d80effacb9f06c7d18f5399970adf077eca8c7166" -> "sha256:35d30dd261519ed72afbb0cd0883e78ea9673b6510739505ecadd79af6c46d32" [label=""];
  "sha256:35d30dd261519ed72afbb0cd0883e78ea9673b6510739505ecadd79af6c46d32" -> "sha256:c4ab43fc56e6f3583f4e4cfdc877605d2a958da2e58c17fc5c35c0e788e06439" [label=""];
}

