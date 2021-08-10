[app/sources/345366686.Dockerfile]
digraph {
  "sha256:73f875b147f199395f5d5ba42d7810aa082bf49b0b729ffa39a7cc7a2278d648" [label="docker-image://docker.io/balenalib/imx8m-var-dart-ubuntu:trusty-build" shape="ellipse"];
  "sha256:763fb0d87e594f706ec21ccb3ed6176102b600246e9dee0c08daf962e0cd56b7" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-arm64.tar.gz\" \t&& echo \"ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8  go$GO_VERSION.linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-arm64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-arm64.tar.gz" shape="box"];
  "sha256:9df94011d750434b4c31300a93b85948bd7248448b55988146456c24933d53d8" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:8ada5efde47e0384d817717321124bc3a4165dd489a7f5246be0061b2a27cf0c" [label="mkdir{path=/go}" shape="note"];
  "sha256:450a61fd7789b71558c8660c020df4c482c825f5ec368e63bfb3a36ce2ad5c3f" [label="sha256:450a61fd7789b71558c8660c020df4c482c825f5ec368e63bfb3a36ce2ad5c3f" shape="plaintext"];
  "sha256:73f875b147f199395f5d5ba42d7810aa082bf49b0b729ffa39a7cc7a2278d648" -> "sha256:763fb0d87e594f706ec21ccb3ed6176102b600246e9dee0c08daf962e0cd56b7" [label=""];
  "sha256:763fb0d87e594f706ec21ccb3ed6176102b600246e9dee0c08daf962e0cd56b7" -> "sha256:9df94011d750434b4c31300a93b85948bd7248448b55988146456c24933d53d8" [label=""];
  "sha256:9df94011d750434b4c31300a93b85948bd7248448b55988146456c24933d53d8" -> "sha256:8ada5efde47e0384d817717321124bc3a4165dd489a7f5246be0061b2a27cf0c" [label=""];
  "sha256:8ada5efde47e0384d817717321124bc3a4165dd489a7f5246be0061b2a27cf0c" -> "sha256:450a61fd7789b71558c8660c020df4c482c825f5ec368e63bfb3a36ce2ad5c3f" [label=""];
}

