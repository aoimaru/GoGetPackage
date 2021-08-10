[app/sources/345358043.Dockerfile]
digraph {
  "sha256:4f9c7e58fcabfebe8399b9b6e2a499bf5dd4f93a8ac5efa495a63793e2ca7b4d" [label="docker-image://docker.io/balenalib/raspberry-pi2-fedora:29-build" shape="ellipse"];
  "sha256:cc2b7a66d2c4b5511ad9abf74d6030d5d16659b9b57621f0b9d5d8ffa3fddeb9" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:5868e6bf68de4b08d032a586f15786adc0969b7498286b3056d0d8a3a3d7231e" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:49deb860732a9b2d0385d5304b60a83533ce5c6477c344b22b5fddda1e23c0fc" [label="mkdir{path=/go}" shape="note"];
  "sha256:baa245a2aee449276a9e4eda07491dd376f7739c2770e02403b3856ec48e4dfe" [label="sha256:baa245a2aee449276a9e4eda07491dd376f7739c2770e02403b3856ec48e4dfe" shape="plaintext"];
  "sha256:4f9c7e58fcabfebe8399b9b6e2a499bf5dd4f93a8ac5efa495a63793e2ca7b4d" -> "sha256:cc2b7a66d2c4b5511ad9abf74d6030d5d16659b9b57621f0b9d5d8ffa3fddeb9" [label=""];
  "sha256:cc2b7a66d2c4b5511ad9abf74d6030d5d16659b9b57621f0b9d5d8ffa3fddeb9" -> "sha256:5868e6bf68de4b08d032a586f15786adc0969b7498286b3056d0d8a3a3d7231e" [label=""];
  "sha256:5868e6bf68de4b08d032a586f15786adc0969b7498286b3056d0d8a3a3d7231e" -> "sha256:49deb860732a9b2d0385d5304b60a83533ce5c6477c344b22b5fddda1e23c0fc" [label=""];
  "sha256:49deb860732a9b2d0385d5304b60a83533ce5c6477c344b22b5fddda1e23c0fc" -> "sha256:baa245a2aee449276a9e4eda07491dd376f7739c2770e02403b3856ec48e4dfe" [label=""];
}

