[app/sources/345365931.Dockerfile]
digraph {
  "sha256:c0bedfb433e46fbb49493ec691bd3950503a374a3ef703c2a8de771119d4d907" [label="docker-image://docker.io/balenalib/generic-aarch64-debian:buster-run" shape="ellipse"];
  "sha256:5f3eb82f591280ffba68cb4fa4b3e38f3d56e345e28be572282c066abdc5284e" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:328f8a119e7ed0222be0a75d7c4e48e6fbe537ab9fe8d6b4c46b0de7638399ef" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-arm64.tar.gz\" \t&& echo \"ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8  go$GO_VERSION.linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-arm64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-arm64.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:12bc384eb2723e5d1abd440de7a5dfba136b435b63a819e76fd6351991de07a5" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:fef76144a50967c74b7f52cf4e1a90220a5cd8a64894d00103377da368ddb7e5" [label="mkdir{path=/go}" shape="note"];
  "sha256:847fc646c8c67746007de7df1fa313fa5f6660eda4c5e12d4844edb05da1b514" [label="sha256:847fc646c8c67746007de7df1fa313fa5f6660eda4c5e12d4844edb05da1b514" shape="plaintext"];
  "sha256:c0bedfb433e46fbb49493ec691bd3950503a374a3ef703c2a8de771119d4d907" -> "sha256:5f3eb82f591280ffba68cb4fa4b3e38f3d56e345e28be572282c066abdc5284e" [label=""];
  "sha256:5f3eb82f591280ffba68cb4fa4b3e38f3d56e345e28be572282c066abdc5284e" -> "sha256:328f8a119e7ed0222be0a75d7c4e48e6fbe537ab9fe8d6b4c46b0de7638399ef" [label=""];
  "sha256:328f8a119e7ed0222be0a75d7c4e48e6fbe537ab9fe8d6b4c46b0de7638399ef" -> "sha256:12bc384eb2723e5d1abd440de7a5dfba136b435b63a819e76fd6351991de07a5" [label=""];
  "sha256:12bc384eb2723e5d1abd440de7a5dfba136b435b63a819e76fd6351991de07a5" -> "sha256:fef76144a50967c74b7f52cf4e1a90220a5cd8a64894d00103377da368ddb7e5" [label=""];
  "sha256:fef76144a50967c74b7f52cf4e1a90220a5cd8a64894d00103377da368ddb7e5" -> "sha256:847fc646c8c67746007de7df1fa313fa5f6660eda4c5e12d4844edb05da1b514" [label=""];
}

