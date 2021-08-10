[app/sources/345373163.Dockerfile]
digraph {
  "sha256:83374017d62a6a28ed1c847a199744cece890063817b13ae04dd049b08772994" [label="docker-image://docker.io/balenalib/jetson-nano-fedora:28-build" shape="ellipse"];
  "sha256:c40c4af92e1563db36b6e5ef485dde74849541f9f2d58d9a6d10030027c3d9e6" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-aarch64.tar.gz\" \t&& echo \"8b000bee6c8e2512d79182b56b7023d83a9a297bf813a8565ebbee03d8fb2cd7  go$GO_VERSION.linux-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-aarch64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-aarch64.tar.gz" shape="box"];
  "sha256:800573360eed55f4543c21633f6d8e419a2fdac81225e39611d6acfeca995371" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:9a58b1c78e67b9ed99af540b60fc46302569a6c17d0011b6877d5230ea5b49a2" [label="mkdir{path=/go}" shape="note"];
  "sha256:205c47182a8f2fef6891c50f47d5d24f70f5794a2201371245118c34fbcd894c" [label="sha256:205c47182a8f2fef6891c50f47d5d24f70f5794a2201371245118c34fbcd894c" shape="plaintext"];
  "sha256:83374017d62a6a28ed1c847a199744cece890063817b13ae04dd049b08772994" -> "sha256:c40c4af92e1563db36b6e5ef485dde74849541f9f2d58d9a6d10030027c3d9e6" [label=""];
  "sha256:c40c4af92e1563db36b6e5ef485dde74849541f9f2d58d9a6d10030027c3d9e6" -> "sha256:800573360eed55f4543c21633f6d8e419a2fdac81225e39611d6acfeca995371" [label=""];
  "sha256:800573360eed55f4543c21633f6d8e419a2fdac81225e39611d6acfeca995371" -> "sha256:9a58b1c78e67b9ed99af540b60fc46302569a6c17d0011b6877d5230ea5b49a2" [label=""];
  "sha256:9a58b1c78e67b9ed99af540b60fc46302569a6c17d0011b6877d5230ea5b49a2" -> "sha256:205c47182a8f2fef6891c50f47d5d24f70f5794a2201371245118c34fbcd894c" [label=""];
}

