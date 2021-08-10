[app/sources/345375304.Dockerfile]
digraph {
  "sha256:891e2fb39f2f650a70a47e5bf965cce04079405a5c8e8173fa2b46fc84e43a97" [label="docker-image://docker.io/balenalib/npe-x500-m3-ubuntu:cosmic-run" shape="ellipse"];
  "sha256:76b5c68c779cbe6a62f2206b64512dff2939bafa45cc3351920728004254a622" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:96e9521e1d5f37c2f24ea3655892ce82929ce2f75112cc56f5953ed831d77ce2" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:2c802e60487c4bddb0d89078cfade011eeb2f08320627390c4b875589fc6a8de" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:b961eabd95a38357caae3f758bfb6a52f71bb5de767f0e9e5d9a1cb4ccb1f2eb" [label="mkdir{path=/go}" shape="note"];
  "sha256:ed9c9d3f37d4f1a4c6db8d22fd9fde460c9e288949c8692a29714c2142ba9c2e" [label="sha256:ed9c9d3f37d4f1a4c6db8d22fd9fde460c9e288949c8692a29714c2142ba9c2e" shape="plaintext"];
  "sha256:891e2fb39f2f650a70a47e5bf965cce04079405a5c8e8173fa2b46fc84e43a97" -> "sha256:76b5c68c779cbe6a62f2206b64512dff2939bafa45cc3351920728004254a622" [label=""];
  "sha256:76b5c68c779cbe6a62f2206b64512dff2939bafa45cc3351920728004254a622" -> "sha256:96e9521e1d5f37c2f24ea3655892ce82929ce2f75112cc56f5953ed831d77ce2" [label=""];
  "sha256:96e9521e1d5f37c2f24ea3655892ce82929ce2f75112cc56f5953ed831d77ce2" -> "sha256:2c802e60487c4bddb0d89078cfade011eeb2f08320627390c4b875589fc6a8de" [label=""];
  "sha256:2c802e60487c4bddb0d89078cfade011eeb2f08320627390c4b875589fc6a8de" -> "sha256:b961eabd95a38357caae3f758bfb6a52f71bb5de767f0e9e5d9a1cb4ccb1f2eb" [label=""];
  "sha256:b961eabd95a38357caae3f758bfb6a52f71bb5de767f0e9e5d9a1cb4ccb1f2eb" -> "sha256:ed9c9d3f37d4f1a4c6db8d22fd9fde460c9e288949c8692a29714c2142ba9c2e" [label=""];
}

