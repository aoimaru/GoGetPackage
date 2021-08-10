[app/sources/345366545.Dockerfile]
digraph {
  "sha256:2c4ba1b496ff8710c5041aa93931fe13bf5112ec6a71a32f0704c83aa8396f82" [label="docker-image://docker.io/balenalib/imx7-var-som-fedora:29-run" shape="ellipse"];
  "sha256:5e93eace8fd73c33fab4b3c9d60b6b0fbc52a1c4913502aa0e4b5546fef3e2ef" [label="/bin/sh -c dnf install -y \t\tgcc-c++ \t\tgcc \t\tgit \t&& dnf clean all" shape="box"];
  "sha256:b548784d0ac488ab16ed342d87013ae3e49f991e0787473a99ef0286347fd5f4" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:8263aa61d774c6ee0243be70bc5c5ec33d7c151279e50432bf135dc2761bee90" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:8aa5cb07e939e712210561f92c6f112752366e1ec0cdf1b5b9703f8d4b03a394" [label="mkdir{path=/go}" shape="note"];
  "sha256:39ce9d9824bc0a63a9c1138a7cff5cf2b77582902825b35227ad8c7c0edc9637" [label="sha256:39ce9d9824bc0a63a9c1138a7cff5cf2b77582902825b35227ad8c7c0edc9637" shape="plaintext"];
  "sha256:2c4ba1b496ff8710c5041aa93931fe13bf5112ec6a71a32f0704c83aa8396f82" -> "sha256:5e93eace8fd73c33fab4b3c9d60b6b0fbc52a1c4913502aa0e4b5546fef3e2ef" [label=""];
  "sha256:5e93eace8fd73c33fab4b3c9d60b6b0fbc52a1c4913502aa0e4b5546fef3e2ef" -> "sha256:b548784d0ac488ab16ed342d87013ae3e49f991e0787473a99ef0286347fd5f4" [label=""];
  "sha256:b548784d0ac488ab16ed342d87013ae3e49f991e0787473a99ef0286347fd5f4" -> "sha256:8263aa61d774c6ee0243be70bc5c5ec33d7c151279e50432bf135dc2761bee90" [label=""];
  "sha256:8263aa61d774c6ee0243be70bc5c5ec33d7c151279e50432bf135dc2761bee90" -> "sha256:8aa5cb07e939e712210561f92c6f112752366e1ec0cdf1b5b9703f8d4b03a394" [label=""];
  "sha256:8aa5cb07e939e712210561f92c6f112752366e1ec0cdf1b5b9703f8d4b03a394" -> "sha256:39ce9d9824bc0a63a9c1138a7cff5cf2b77582902825b35227ad8c7c0edc9637" [label=""];
}

