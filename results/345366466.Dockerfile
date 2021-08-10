[app/sources/345366466.Dockerfile]
digraph {
  "sha256:f63beaa24d494af653103c49bf95e693bef758f22ffeb5b0ef4709517c8ea339" [label="docker-image://docker.io/balenalib/imx6ul-var-dart-ubuntu:xenial-build" shape="ellipse"];
  "sha256:ba285002d45f1e3a7ca7c03e9cf665a985a4f0da530ea58e80ee9156deee75e0" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:344fea66cbbe6954ec8231d9e0eb60824bc6945f32848855b7856f26e20d0d39" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:ee6a827711921d0cbf5dde75b2c179f4c81f7526bb77ad18bdbef45c6db5d420" [label="mkdir{path=/go}" shape="note"];
  "sha256:ec8b11586854436547bcae812e92192b263df34ae7736b6c588a0d5e69205937" [label="sha256:ec8b11586854436547bcae812e92192b263df34ae7736b6c588a0d5e69205937" shape="plaintext"];
  "sha256:f63beaa24d494af653103c49bf95e693bef758f22ffeb5b0ef4709517c8ea339" -> "sha256:ba285002d45f1e3a7ca7c03e9cf665a985a4f0da530ea58e80ee9156deee75e0" [label=""];
  "sha256:ba285002d45f1e3a7ca7c03e9cf665a985a4f0da530ea58e80ee9156deee75e0" -> "sha256:344fea66cbbe6954ec8231d9e0eb60824bc6945f32848855b7856f26e20d0d39" [label=""];
  "sha256:344fea66cbbe6954ec8231d9e0eb60824bc6945f32848855b7856f26e20d0d39" -> "sha256:ee6a827711921d0cbf5dde75b2c179f4c81f7526bb77ad18bdbef45c6db5d420" [label=""];
  "sha256:ee6a827711921d0cbf5dde75b2c179f4c81f7526bb77ad18bdbef45c6db5d420" -> "sha256:ec8b11586854436547bcae812e92192b263df34ae7736b6c588a0d5e69205937" [label=""];
}

