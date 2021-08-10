[app/sources/345371572.Dockerfile]
digraph {
  "sha256:d30fc9bf5996b49271d24ae44b76d722f372cdbb2303940ba8907f2f273cf5c5" [label="docker-image://docker.io/balenalib/colibri-imx6dl-fedora:26-build" shape="ellipse"];
  "sha256:d3fe85e0a3abeda47845ff1128b5b5a1a60f405457cbf57919126e6102c4f6a0" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:28a027106dc45e46af70a891aa7e8ffa4511d907edc0b3e38ea5c467459f44b2" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:3f3481ec75aef944c5c0c38a7c7ac8ab6c2edf191fa0355e11c4afa88d639625" [label="mkdir{path=/go}" shape="note"];
  "sha256:11d27558a2d96f5a0dd163a2ce28ea6aa38f124f99592af2ce384e43a8daf86f" [label="sha256:11d27558a2d96f5a0dd163a2ce28ea6aa38f124f99592af2ce384e43a8daf86f" shape="plaintext"];
  "sha256:d30fc9bf5996b49271d24ae44b76d722f372cdbb2303940ba8907f2f273cf5c5" -> "sha256:d3fe85e0a3abeda47845ff1128b5b5a1a60f405457cbf57919126e6102c4f6a0" [label=""];
  "sha256:d3fe85e0a3abeda47845ff1128b5b5a1a60f405457cbf57919126e6102c4f6a0" -> "sha256:28a027106dc45e46af70a891aa7e8ffa4511d907edc0b3e38ea5c467459f44b2" [label=""];
  "sha256:28a027106dc45e46af70a891aa7e8ffa4511d907edc0b3e38ea5c467459f44b2" -> "sha256:3f3481ec75aef944c5c0c38a7c7ac8ab6c2edf191fa0355e11c4afa88d639625" [label=""];
  "sha256:3f3481ec75aef944c5c0c38a7c7ac8ab6c2edf191fa0355e11c4afa88d639625" -> "sha256:11d27558a2d96f5a0dd163a2ce28ea6aa38f124f99592af2ce384e43a8daf86f" [label=""];
}

