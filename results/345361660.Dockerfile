[app/sources/345361660.Dockerfile]
digraph {
  "sha256:103cbb4b2254eded84ab834564cfb3582ae838f7f078627c6ed53080f142e86b" [label="docker-image://docker.io/balenalib/via-vab820-quad-ubuntu:artful-build" shape="ellipse"];
  "sha256:03b5f4511139c5c7ece665507feb4344c607d4e932fe7adb74fd7caf9360d706" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:ccf241271ce1e712f808736702de11bc14c2eae27a8923ceb164ebb020a3e0d5" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:ef7f97af4384d8203f063a45c0867a9812ac5e3b98d4d411c70da987f771766a" [label="mkdir{path=/go}" shape="note"];
  "sha256:9fbd2c2da01960dd74158aafabbaa96176bf55eb3c23e2befa42a11d5bf88fa6" [label="sha256:9fbd2c2da01960dd74158aafabbaa96176bf55eb3c23e2befa42a11d5bf88fa6" shape="plaintext"];
  "sha256:103cbb4b2254eded84ab834564cfb3582ae838f7f078627c6ed53080f142e86b" -> "sha256:03b5f4511139c5c7ece665507feb4344c607d4e932fe7adb74fd7caf9360d706" [label=""];
  "sha256:03b5f4511139c5c7ece665507feb4344c607d4e932fe7adb74fd7caf9360d706" -> "sha256:ccf241271ce1e712f808736702de11bc14c2eae27a8923ceb164ebb020a3e0d5" [label=""];
  "sha256:ccf241271ce1e712f808736702de11bc14c2eae27a8923ceb164ebb020a3e0d5" -> "sha256:ef7f97af4384d8203f063a45c0867a9812ac5e3b98d4d411c70da987f771766a" [label=""];
  "sha256:ef7f97af4384d8203f063a45c0867a9812ac5e3b98d4d411c70da987f771766a" -> "sha256:9fbd2c2da01960dd74158aafabbaa96176bf55eb3c23e2befa42a11d5bf88fa6" [label=""];
}

