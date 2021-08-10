[app/sources/345373740.Dockerfile]
digraph {
  "sha256:62ed6e4379799e1c22090842c43b6fd40ed6e620a31f2ffc25834cd5bdf72a60" [label="docker-image://docker.io/balenalib/n510-tx2-fedora:30-run" shape="ellipse"];
  "sha256:4bb2edb12f79648e18f4a0b872a5c8ab70ed915ecce041fb9621876341ed7b6c" [label="/bin/sh -c dnf install -y \t\tgcc-c++ \t\tgcc \t\tgit \t&& dnf clean all" shape="box"];
  "sha256:3e70653b3c93819e381fb48f7b668ee1764c297df1deb2f6e116108f68647a71" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-aarch64.tar.gz\" \t&& echo \"8b000bee6c8e2512d79182b56b7023d83a9a297bf813a8565ebbee03d8fb2cd7  go$GO_VERSION.linux-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-aarch64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-aarch64.tar.gz" shape="box"];
  "sha256:ed7527cf933714e78700839c03a74361486518bc602d5900bf86dd20dc7660e9" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:11a68e02c16f42739ae7497a9dc8cc2714b9f60a185755c1b738904eae711373" [label="mkdir{path=/go}" shape="note"];
  "sha256:5e85ee35f83c2bb886114b5cd49b51f7933c6793a7e423eacf4c7dac2c869fdc" [label="sha256:5e85ee35f83c2bb886114b5cd49b51f7933c6793a7e423eacf4c7dac2c869fdc" shape="plaintext"];
  "sha256:62ed6e4379799e1c22090842c43b6fd40ed6e620a31f2ffc25834cd5bdf72a60" -> "sha256:4bb2edb12f79648e18f4a0b872a5c8ab70ed915ecce041fb9621876341ed7b6c" [label=""];
  "sha256:4bb2edb12f79648e18f4a0b872a5c8ab70ed915ecce041fb9621876341ed7b6c" -> "sha256:3e70653b3c93819e381fb48f7b668ee1764c297df1deb2f6e116108f68647a71" [label=""];
  "sha256:3e70653b3c93819e381fb48f7b668ee1764c297df1deb2f6e116108f68647a71" -> "sha256:ed7527cf933714e78700839c03a74361486518bc602d5900bf86dd20dc7660e9" [label=""];
  "sha256:ed7527cf933714e78700839c03a74361486518bc602d5900bf86dd20dc7660e9" -> "sha256:11a68e02c16f42739ae7497a9dc8cc2714b9f60a185755c1b738904eae711373" [label=""];
  "sha256:11a68e02c16f42739ae7497a9dc8cc2714b9f60a185755c1b738904eae711373" -> "sha256:5e85ee35f83c2bb886114b5cd49b51f7933c6793a7e423eacf4c7dac2c869fdc" [label=""];
}

