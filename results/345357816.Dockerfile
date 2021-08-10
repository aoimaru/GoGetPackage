[app/sources/345357816.Dockerfile]
digraph {
  "sha256:365cb231276fd133d6caf056221a7e4c5de9afda687c675dfd1e8884786246b8" [label="docker-image://docker.io/balenalib/qemux86-64-ubuntu:trusty-run" shape="ellipse"];
  "sha256:5e07e68d3c91f78aee7b0aa80b24e9fb8f7368f238f9fbac0bd3f0a570499312" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:da2547423aad0c3f77737d2e140b9f3ab5591c1ff47595d9d54bae22819f4686" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-amd64.tar.gz\" \t&& echo \"d8626fb6f9a3ab397d88c483b576be41fa81eefcec2fd18562c87626dbb3c39e  go$GO_VERSION.linux-amd64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-amd64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-amd64.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:9368399ac7c6bc8ca03bdfa3660bc34a3199e7acbece4196a2b956658929f7eb" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:e05e8f3e1a3998c58db5824b2aacf1a9b318e663b444dccc281c418994b394dd" [label="mkdir{path=/go}" shape="note"];
  "sha256:22da57f47562bdd5f899eaf3d8030af5c4378300d09f1f55d9f069b6991455bf" [label="sha256:22da57f47562bdd5f899eaf3d8030af5c4378300d09f1f55d9f069b6991455bf" shape="plaintext"];
  "sha256:365cb231276fd133d6caf056221a7e4c5de9afda687c675dfd1e8884786246b8" -> "sha256:5e07e68d3c91f78aee7b0aa80b24e9fb8f7368f238f9fbac0bd3f0a570499312" [label=""];
  "sha256:5e07e68d3c91f78aee7b0aa80b24e9fb8f7368f238f9fbac0bd3f0a570499312" -> "sha256:da2547423aad0c3f77737d2e140b9f3ab5591c1ff47595d9d54bae22819f4686" [label=""];
  "sha256:da2547423aad0c3f77737d2e140b9f3ab5591c1ff47595d9d54bae22819f4686" -> "sha256:9368399ac7c6bc8ca03bdfa3660bc34a3199e7acbece4196a2b956658929f7eb" [label=""];
  "sha256:9368399ac7c6bc8ca03bdfa3660bc34a3199e7acbece4196a2b956658929f7eb" -> "sha256:e05e8f3e1a3998c58db5824b2aacf1a9b318e663b444dccc281c418994b394dd" [label=""];
  "sha256:e05e8f3e1a3998c58db5824b2aacf1a9b318e663b444dccc281c418994b394dd" -> "sha256:22da57f47562bdd5f899eaf3d8030af5c4378300d09f1f55d9f069b6991455bf" [label=""];
}

