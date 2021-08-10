[app/sources/345368356.Dockerfile]
digraph {
  "sha256:e774fdf81ce296ed8d885760359310c556a5bbe36b250f7f919ece61e58950f9" [label="docker-image://docker.io/balenalib/asus-tinker-board-debian:jessie-build" shape="ellipse"];
  "sha256:ce43f279e8944baa310ba83ae1ca66a404e0bd9eabaab1a817d1378d5c5d3881" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f8a06c2832ca01001d0ffc68a44a2d4c569285cd485a0a61ee7169bc87adbb0f  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:6ffb5ed95828dd7f293b6a60affa14c2fd67bae7ec698c671ab03300d3510bdf" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:5f76c9b5d28f15eddef0944ebd202766b8f201704973be40b13727706c6fbd30" [label="mkdir{path=/go}" shape="note"];
  "sha256:9846dcdf9eb7b9c5d40e2bb77a20c2c3c958f23090b0848d05d1397c88a4745b" [label="sha256:9846dcdf9eb7b9c5d40e2bb77a20c2c3c958f23090b0848d05d1397c88a4745b" shape="plaintext"];
  "sha256:e774fdf81ce296ed8d885760359310c556a5bbe36b250f7f919ece61e58950f9" -> "sha256:ce43f279e8944baa310ba83ae1ca66a404e0bd9eabaab1a817d1378d5c5d3881" [label=""];
  "sha256:ce43f279e8944baa310ba83ae1ca66a404e0bd9eabaab1a817d1378d5c5d3881" -> "sha256:6ffb5ed95828dd7f293b6a60affa14c2fd67bae7ec698c671ab03300d3510bdf" [label=""];
  "sha256:6ffb5ed95828dd7f293b6a60affa14c2fd67bae7ec698c671ab03300d3510bdf" -> "sha256:5f76c9b5d28f15eddef0944ebd202766b8f201704973be40b13727706c6fbd30" [label=""];
  "sha256:5f76c9b5d28f15eddef0944ebd202766b8f201704973be40b13727706c6fbd30" -> "sha256:9846dcdf9eb7b9c5d40e2bb77a20c2c3c958f23090b0848d05d1397c88a4745b" [label=""];
}

