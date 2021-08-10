[app/sources/345357226.Dockerfile]
digraph {
  "sha256:0f336e3ad27d037a91653ce6f9b28041a4e20d65b73b06e3d2645b577e1b8566" [label="docker-image://docker.io/balenalib/orangepi-plus2-fedora:29-run" shape="ellipse"];
  "sha256:a31af7be6d2ae57d9d7213a856d3d4c9e150790d7ca5d21b90eba864d055fc63" [label="/bin/sh -c dnf install -y \t\tgcc-c++ \t\tgcc \t\tgit \t&& dnf clean all" shape="box"];
  "sha256:37783259cfc26d3b67b78882ed22344925ecac218f324af6c0408bcfaaebe355" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:6a1ccee1943f95dbf73f9580f68258ef67fff7952ac5ce98e8daa09e1752b59a" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:1e58f4daade3e8184de2b694ebcc2abd816590ffd6e9cf806b00ff0cc5ac456b" [label="mkdir{path=/go}" shape="note"];
  "sha256:94a60ae7d32f0b6a6e910cb12955aa32f3b7217292274fedd3f5f5d118fd5a9a" [label="sha256:94a60ae7d32f0b6a6e910cb12955aa32f3b7217292274fedd3f5f5d118fd5a9a" shape="plaintext"];
  "sha256:0f336e3ad27d037a91653ce6f9b28041a4e20d65b73b06e3d2645b577e1b8566" -> "sha256:a31af7be6d2ae57d9d7213a856d3d4c9e150790d7ca5d21b90eba864d055fc63" [label=""];
  "sha256:a31af7be6d2ae57d9d7213a856d3d4c9e150790d7ca5d21b90eba864d055fc63" -> "sha256:37783259cfc26d3b67b78882ed22344925ecac218f324af6c0408bcfaaebe355" [label=""];
  "sha256:37783259cfc26d3b67b78882ed22344925ecac218f324af6c0408bcfaaebe355" -> "sha256:6a1ccee1943f95dbf73f9580f68258ef67fff7952ac5ce98e8daa09e1752b59a" [label=""];
  "sha256:6a1ccee1943f95dbf73f9580f68258ef67fff7952ac5ce98e8daa09e1752b59a" -> "sha256:1e58f4daade3e8184de2b694ebcc2abd816590ffd6e9cf806b00ff0cc5ac456b" [label=""];
  "sha256:1e58f4daade3e8184de2b694ebcc2abd816590ffd6e9cf806b00ff0cc5ac456b" -> "sha256:94a60ae7d32f0b6a6e910cb12955aa32f3b7217292274fedd3f5f5d118fd5a9a" [label=""];
}

