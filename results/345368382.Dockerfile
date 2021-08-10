[app/sources/345368382.Dockerfile]
digraph {
  "sha256:2ddc77d3ca539d3cda1d996a2b33cc72545edcaf5545e8c4718b8815f08c32d4" [label="docker-image://docker.io/balenalib/asus-tinker-board-fedora:28-build" shape="ellipse"];
  "sha256:1bc748e66fe325687acef1f26d6bc0f26b4fca246c26a1c93ba1169c07f8403a" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:9bf489f4902538bc5e15e6652217f8f9f80d5a976ac1fdf721d1d2c50b191292" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:0e928898d80a818dce6ee7e0bdef27eb6d91ad9a3a0efcdcf999697931aaf578" [label="mkdir{path=/go}" shape="note"];
  "sha256:cf3bdb5ee8abd8fb50a7be3bfd08f2be6e3309e54f778b40649e9ff1a56b6efc" [label="sha256:cf3bdb5ee8abd8fb50a7be3bfd08f2be6e3309e54f778b40649e9ff1a56b6efc" shape="plaintext"];
  "sha256:2ddc77d3ca539d3cda1d996a2b33cc72545edcaf5545e8c4718b8815f08c32d4" -> "sha256:1bc748e66fe325687acef1f26d6bc0f26b4fca246c26a1c93ba1169c07f8403a" [label=""];
  "sha256:1bc748e66fe325687acef1f26d6bc0f26b4fca246c26a1c93ba1169c07f8403a" -> "sha256:9bf489f4902538bc5e15e6652217f8f9f80d5a976ac1fdf721d1d2c50b191292" [label=""];
  "sha256:9bf489f4902538bc5e15e6652217f8f9f80d5a976ac1fdf721d1d2c50b191292" -> "sha256:0e928898d80a818dce6ee7e0bdef27eb6d91ad9a3a0efcdcf999697931aaf578" [label=""];
  "sha256:0e928898d80a818dce6ee7e0bdef27eb6d91ad9a3a0efcdcf999697931aaf578" -> "sha256:cf3bdb5ee8abd8fb50a7be3bfd08f2be6e3309e54f778b40649e9ff1a56b6efc" [label=""];
}

