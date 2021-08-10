[app/sources/345357432.Dockerfile]
digraph {
  "sha256:11bb61518139149a4f1d5d3ae405c277d24c6e3dd9c5d266a8ba0b5d77ea7261" [label="docker-image://docker.io/balenalib/orbitty-tx2-ubuntu:artful-build" shape="ellipse"];
  "sha256:06ca738c335919d35a2b9c943a79851ba4a87a40ac48668651ebf24d83a86e4c" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-aarch64.tar.gz\" \t&& echo \"8b000bee6c8e2512d79182b56b7023d83a9a297bf813a8565ebbee03d8fb2cd7  go$GO_VERSION.linux-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-aarch64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-aarch64.tar.gz" shape="box"];
  "sha256:c02a57007d35f2414196ed3affbd6da9a83de9e86cc8d2b33796b776834698f7" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:6af72291f436e8e85e96afcfb42740e623c52057287724e5eb59b2d4fdef1ece" [label="mkdir{path=/go}" shape="note"];
  "sha256:9ad16ac38d7c765dbf4bd8fb2051d3dc6cd5cd081f5472cff8eac125813efbf5" [label="sha256:9ad16ac38d7c765dbf4bd8fb2051d3dc6cd5cd081f5472cff8eac125813efbf5" shape="plaintext"];
  "sha256:11bb61518139149a4f1d5d3ae405c277d24c6e3dd9c5d266a8ba0b5d77ea7261" -> "sha256:06ca738c335919d35a2b9c943a79851ba4a87a40ac48668651ebf24d83a86e4c" [label=""];
  "sha256:06ca738c335919d35a2b9c943a79851ba4a87a40ac48668651ebf24d83a86e4c" -> "sha256:c02a57007d35f2414196ed3affbd6da9a83de9e86cc8d2b33796b776834698f7" [label=""];
  "sha256:c02a57007d35f2414196ed3affbd6da9a83de9e86cc8d2b33796b776834698f7" -> "sha256:6af72291f436e8e85e96afcfb42740e623c52057287724e5eb59b2d4fdef1ece" [label=""];
  "sha256:6af72291f436e8e85e96afcfb42740e623c52057287724e5eb59b2d4fdef1ece" -> "sha256:9ad16ac38d7c765dbf4bd8fb2051d3dc6cd5cd081f5472cff8eac125813efbf5" [label=""];
}

