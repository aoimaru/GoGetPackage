[app/sources/345371591.Dockerfile]
digraph {
  "sha256:a2c2beb30b756f6c6c7d80127fd6ceb6e58aa9995e2f69336e02539f0055a129" [label="docker-image://docker.io/balenalib/colibri-imx6dl-ubuntu:artful-run" shape="ellipse"];
  "sha256:92e84f1e72ceb1b31bf7c81867148a4d8a7ab738b8b79366d873d4155a101149" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:3b00feb68b1b5097fedf9d371a4b8112b1fff375373237a895b90c177714d0e0" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:c519e9ca5f0fb809ccffac50ded0b8c80bb8e40beb05a4951ad01698fdc7d95c" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:feae007f89782dcd642b5e260cc3a5794dcaae5cd67f403d6fb5885af7d46a6a" [label="mkdir{path=/go}" shape="note"];
  "sha256:9a79cd37416386a0576a7a442d8265c8a9e92e2541052307e7e033420ccc4c3e" [label="sha256:9a79cd37416386a0576a7a442d8265c8a9e92e2541052307e7e033420ccc4c3e" shape="plaintext"];
  "sha256:a2c2beb30b756f6c6c7d80127fd6ceb6e58aa9995e2f69336e02539f0055a129" -> "sha256:92e84f1e72ceb1b31bf7c81867148a4d8a7ab738b8b79366d873d4155a101149" [label=""];
  "sha256:92e84f1e72ceb1b31bf7c81867148a4d8a7ab738b8b79366d873d4155a101149" -> "sha256:3b00feb68b1b5097fedf9d371a4b8112b1fff375373237a895b90c177714d0e0" [label=""];
  "sha256:3b00feb68b1b5097fedf9d371a4b8112b1fff375373237a895b90c177714d0e0" -> "sha256:c519e9ca5f0fb809ccffac50ded0b8c80bb8e40beb05a4951ad01698fdc7d95c" [label=""];
  "sha256:c519e9ca5f0fb809ccffac50ded0b8c80bb8e40beb05a4951ad01698fdc7d95c" -> "sha256:feae007f89782dcd642b5e260cc3a5794dcaae5cd67f403d6fb5885af7d46a6a" [label=""];
  "sha256:feae007f89782dcd642b5e260cc3a5794dcaae5cd67f403d6fb5885af7d46a6a" -> "sha256:9a79cd37416386a0576a7a442d8265c8a9e92e2541052307e7e033420ccc4c3e" [label=""];
}

