[app/sources/345360402.Dockerfile]
digraph {
  "sha256:62e8b2b5785c30cb785f94f3ec014e1bb73bfc34a80bf4baf1b0ff48156cb685" [label="docker-image://docker.io/balenalib/srd3-tx2-ubuntu:cosmic-run" shape="ellipse"];
  "sha256:81350ab100e3dcac8a0c81caa5dd9595e0fda65e4a5ac67f1f9fca3f058f0a6b" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:a916a1c956747b36e50b4c6feabeeefdc5b1e0d78d7223cd17ce999939cd7b10" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-arm64.tar.gz\" \t&& echo \"6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8  go$GO_VERSION.linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-arm64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-arm64.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:75d38ce8de943e0626b386c55c713c43479a0f2c5f2269f8c6ae6865e647fff9" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:b0a023f3a77ceaf1a9459f88d55811878484a15aea8b569152cfd89868db174b" [label="mkdir{path=/go}" shape="note"];
  "sha256:d4d6956b78608f79d2503851c45e08cb6ae585bbd82ab40bd6c840c8278231ca" [label="sha256:d4d6956b78608f79d2503851c45e08cb6ae585bbd82ab40bd6c840c8278231ca" shape="plaintext"];
  "sha256:62e8b2b5785c30cb785f94f3ec014e1bb73bfc34a80bf4baf1b0ff48156cb685" -> "sha256:81350ab100e3dcac8a0c81caa5dd9595e0fda65e4a5ac67f1f9fca3f058f0a6b" [label=""];
  "sha256:81350ab100e3dcac8a0c81caa5dd9595e0fda65e4a5ac67f1f9fca3f058f0a6b" -> "sha256:a916a1c956747b36e50b4c6feabeeefdc5b1e0d78d7223cd17ce999939cd7b10" [label=""];
  "sha256:a916a1c956747b36e50b4c6feabeeefdc5b1e0d78d7223cd17ce999939cd7b10" -> "sha256:75d38ce8de943e0626b386c55c713c43479a0f2c5f2269f8c6ae6865e647fff9" [label=""];
  "sha256:75d38ce8de943e0626b386c55c713c43479a0f2c5f2269f8c6ae6865e647fff9" -> "sha256:b0a023f3a77ceaf1a9459f88d55811878484a15aea8b569152cfd89868db174b" [label=""];
  "sha256:b0a023f3a77ceaf1a9459f88d55811878484a15aea8b569152cfd89868db174b" -> "sha256:d4d6956b78608f79d2503851c45e08cb6ae585bbd82ab40bd6c840c8278231ca" [label=""];
}

