[app/sources/345368482.Dockerfile]
digraph {
  "sha256:fa77a54d337d86364273ab607935b02034157f84d2778ce03cfd85996d0335f5" [label="docker-image://docker.io/balenalib/bananapi-m1-plus-fedora:26-build" shape="ellipse"];
  "sha256:6d4203c3309e7d41bc91e081b528b1ef2c665bcbf937f3f86b140dfb5684bf1a" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f8a06c2832ca01001d0ffc68a44a2d4c569285cd485a0a61ee7169bc87adbb0f  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:ebaac68649aa9bcebfb42c0194ba253715f9023ddc3f62b7f7e378c50e286e45" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:65129f5825295d6ac1e46af8c195a8d77a90db341739c8310adf28880ebcd7b4" [label="mkdir{path=/go}" shape="note"];
  "sha256:ac1db88c720c9d37bf48b0d6fda1cc2cd4541071962837eb2e887de3dea06528" [label="sha256:ac1db88c720c9d37bf48b0d6fda1cc2cd4541071962837eb2e887de3dea06528" shape="plaintext"];
  "sha256:fa77a54d337d86364273ab607935b02034157f84d2778ce03cfd85996d0335f5" -> "sha256:6d4203c3309e7d41bc91e081b528b1ef2c665bcbf937f3f86b140dfb5684bf1a" [label=""];
  "sha256:6d4203c3309e7d41bc91e081b528b1ef2c665bcbf937f3f86b140dfb5684bf1a" -> "sha256:ebaac68649aa9bcebfb42c0194ba253715f9023ddc3f62b7f7e378c50e286e45" [label=""];
  "sha256:ebaac68649aa9bcebfb42c0194ba253715f9023ddc3f62b7f7e378c50e286e45" -> "sha256:65129f5825295d6ac1e46af8c195a8d77a90db341739c8310adf28880ebcd7b4" [label=""];
  "sha256:65129f5825295d6ac1e46af8c195a8d77a90db341739c8310adf28880ebcd7b4" -> "sha256:ac1db88c720c9d37bf48b0d6fda1cc2cd4541071962837eb2e887de3dea06528" [label=""];
}

