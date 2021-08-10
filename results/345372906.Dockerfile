[app/sources/345372906.Dockerfile]
digraph {
  "sha256:269cd502d7f21878721472ba2d29b484b94b113a8be145ae232a74aad7c465d3" [label="docker-image://docker.io/balenalib/intel-edison-ubuntu:bionic-run" shape="ellipse"];
  "sha256:07fededa93c7ce4e24b93654914887fc66e85717fb7c618b6f8a5413787cc36d" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:4f623970ca4408df95e9fec3b2cd07b15d47f41bf1b0776c5dc1cde909c3ae11" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-386.tar.gz\" \t&& echo \"10202da0b7f2a0f2c2ec4dd65375584dd829ce88ccc58e5fe1fa1352e69fecaf  go$GO_VERSION.linux-386.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-386.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-386.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:191e7bdf390c92d3848b8d9dc916ba8fe6674c4f469f40665899a7bcefa93bd4" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:4b0aa8d49ba3a1482f004b0cd35e1b8e41a1e76211466de582341bea2527b8cc" [label="mkdir{path=/go}" shape="note"];
  "sha256:b1a3a2ef28ed0b72c801cd9f9ccffe3c524e68cd86d9ed738801703880945bd7" [label="sha256:b1a3a2ef28ed0b72c801cd9f9ccffe3c524e68cd86d9ed738801703880945bd7" shape="plaintext"];
  "sha256:269cd502d7f21878721472ba2d29b484b94b113a8be145ae232a74aad7c465d3" -> "sha256:07fededa93c7ce4e24b93654914887fc66e85717fb7c618b6f8a5413787cc36d" [label=""];
  "sha256:07fededa93c7ce4e24b93654914887fc66e85717fb7c618b6f8a5413787cc36d" -> "sha256:4f623970ca4408df95e9fec3b2cd07b15d47f41bf1b0776c5dc1cde909c3ae11" [label=""];
  "sha256:4f623970ca4408df95e9fec3b2cd07b15d47f41bf1b0776c5dc1cde909c3ae11" -> "sha256:191e7bdf390c92d3848b8d9dc916ba8fe6674c4f469f40665899a7bcefa93bd4" [label=""];
  "sha256:191e7bdf390c92d3848b8d9dc916ba8fe6674c4f469f40665899a7bcefa93bd4" -> "sha256:4b0aa8d49ba3a1482f004b0cd35e1b8e41a1e76211466de582341bea2527b8cc" [label=""];
  "sha256:4b0aa8d49ba3a1482f004b0cd35e1b8e41a1e76211466de582341bea2527b8cc" -> "sha256:b1a3a2ef28ed0b72c801cd9f9ccffe3c524e68cd86d9ed738801703880945bd7" [label=""];
}

