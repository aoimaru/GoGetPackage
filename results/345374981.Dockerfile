[app/sources/345374981.Dockerfile]
digraph {
  "sha256:fd5e7a91a31934c57a608c5208a5a5b67c5b82744b07ba2d023b747ae29f1aa7" [label="docker-image://docker.io/balenalib/nanopi-neo-air-ubuntu:cosmic-build" shape="ellipse"];
  "sha256:fae06996d3fb545d66013ed28bb82547a90b8dfbc9c44f1ae260341259aa5f9c" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f8a06c2832ca01001d0ffc68a44a2d4c569285cd485a0a61ee7169bc87adbb0f  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:321ab739c4ca5c5c25a834295c603c10ec0d95d67de09f975151d69a4667fe01" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:185e4b669d658a534035b36241911a2bc2f673aab4fbafb769fc2fbc404d52f8" [label="mkdir{path=/go}" shape="note"];
  "sha256:28b9542c830004f0733ae43a7134bfd6a4bc13b31f3b22e819094275adcc38e5" [label="sha256:28b9542c830004f0733ae43a7134bfd6a4bc13b31f3b22e819094275adcc38e5" shape="plaintext"];
  "sha256:fd5e7a91a31934c57a608c5208a5a5b67c5b82744b07ba2d023b747ae29f1aa7" -> "sha256:fae06996d3fb545d66013ed28bb82547a90b8dfbc9c44f1ae260341259aa5f9c" [label=""];
  "sha256:fae06996d3fb545d66013ed28bb82547a90b8dfbc9c44f1ae260341259aa5f9c" -> "sha256:321ab739c4ca5c5c25a834295c603c10ec0d95d67de09f975151d69a4667fe01" [label=""];
  "sha256:321ab739c4ca5c5c25a834295c603c10ec0d95d67de09f975151d69a4667fe01" -> "sha256:185e4b669d658a534035b36241911a2bc2f673aab4fbafb769fc2fbc404d52f8" [label=""];
  "sha256:185e4b669d658a534035b36241911a2bc2f673aab4fbafb769fc2fbc404d52f8" -> "sha256:28b9542c830004f0733ae43a7134bfd6a4bc13b31f3b22e819094275adcc38e5" [label=""];
}

