[app/sources/345359984.Dockerfile]
digraph {
  "sha256:07f56656928b275ea4bbd8bd5674a1b1c9ccf7870ab2c75a4e19e07c2c926e22" [label="docker-image://docker.io/balenalib/rpi-debian:stretch-build" shape="ellipse"];
  "sha256:4dc939e98992d7adabdfa329f3eb16bf8a3cb2a4809d4b80f46cdd7c5790adaf" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-armv6l.tar.gz\" \t&& echo \"29812e3443c469de6b976e4e44b5e6402d55f6358a544278addc22446a0abe8b  go$GO_VERSION.linux-armv6l.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv6l.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv6l.tar.gz" shape="box"];
  "sha256:93caec10cba6f12a3d10024a6513c9713369a3a5590fbcdd0152b72d80a7d2eb" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:2e9e1a9c12a94231e8c0b281c1cc9559f42c0b00cdb8b9d4e342d1e9d77f279f" [label="mkdir{path=/go}" shape="note"];
  "sha256:f6e72459874311ee9b8bd4ee9f1d8f825a208199f2d914071649c8a4898ea6f4" [label="sha256:f6e72459874311ee9b8bd4ee9f1d8f825a208199f2d914071649c8a4898ea6f4" shape="plaintext"];
  "sha256:07f56656928b275ea4bbd8bd5674a1b1c9ccf7870ab2c75a4e19e07c2c926e22" -> "sha256:4dc939e98992d7adabdfa329f3eb16bf8a3cb2a4809d4b80f46cdd7c5790adaf" [label=""];
  "sha256:4dc939e98992d7adabdfa329f3eb16bf8a3cb2a4809d4b80f46cdd7c5790adaf" -> "sha256:93caec10cba6f12a3d10024a6513c9713369a3a5590fbcdd0152b72d80a7d2eb" [label=""];
  "sha256:93caec10cba6f12a3d10024a6513c9713369a3a5590fbcdd0152b72d80a7d2eb" -> "sha256:2e9e1a9c12a94231e8c0b281c1cc9559f42c0b00cdb8b9d4e342d1e9d77f279f" [label=""];
  "sha256:2e9e1a9c12a94231e8c0b281c1cc9559f42c0b00cdb8b9d4e342d1e9d77f279f" -> "sha256:f6e72459874311ee9b8bd4ee9f1d8f825a208199f2d914071649c8a4898ea6f4" [label=""];
}

