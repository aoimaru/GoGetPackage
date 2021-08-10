[app/sources/345371499.Dockerfile]
digraph {
  "sha256:3044dea6314a70871025ee2b24b22063a2ba86b7891979139b4b2609cc942411" [label="docker-image://docker.io/balenalib/cl-som-imx8-ubuntu:cosmic-run" shape="ellipse"];
  "sha256:73730d313a75c267db10a201d769931528a5cd36e16deebc7850d01429d5199d" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:a1ad8af66db6ae1381fa840a6df67b795d98b9089e5c093f961c367c841c6223" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-arm64.tar.gz\" \t&& echo \"ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8  go$GO_VERSION.linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-arm64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-arm64.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:36c5a965ba0ff9242ebb3ef75279968363a0f092cda045a287a0f8f5ef079b77" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:d08fe1d02f2f8c45c2e185a0abaa891310f92edfb203c8ad916b2fa8a215e7b1" [label="mkdir{path=/go}" shape="note"];
  "sha256:d83062945dc46d74971dd07e642a6eeb007e19d3d510080d4e770fec5a910c8e" [label="sha256:d83062945dc46d74971dd07e642a6eeb007e19d3d510080d4e770fec5a910c8e" shape="plaintext"];
  "sha256:3044dea6314a70871025ee2b24b22063a2ba86b7891979139b4b2609cc942411" -> "sha256:73730d313a75c267db10a201d769931528a5cd36e16deebc7850d01429d5199d" [label=""];
  "sha256:73730d313a75c267db10a201d769931528a5cd36e16deebc7850d01429d5199d" -> "sha256:a1ad8af66db6ae1381fa840a6df67b795d98b9089e5c093f961c367c841c6223" [label=""];
  "sha256:a1ad8af66db6ae1381fa840a6df67b795d98b9089e5c093f961c367c841c6223" -> "sha256:36c5a965ba0ff9242ebb3ef75279968363a0f092cda045a287a0f8f5ef079b77" [label=""];
  "sha256:36c5a965ba0ff9242ebb3ef75279968363a0f092cda045a287a0f8f5ef079b77" -> "sha256:d08fe1d02f2f8c45c2e185a0abaa891310f92edfb203c8ad916b2fa8a215e7b1" [label=""];
  "sha256:d08fe1d02f2f8c45c2e185a0abaa891310f92edfb203c8ad916b2fa8a215e7b1" -> "sha256:d83062945dc46d74971dd07e642a6eeb007e19d3d510080d4e770fec5a910c8e" [label=""];
}

