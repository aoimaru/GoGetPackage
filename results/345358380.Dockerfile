[app/sources/345358380.Dockerfile]
digraph {
  "sha256:0cca82c4bb0fc54423bd27589af131f322d993999f2bfe4100ae4d6b88a3ed04" [label="docker-image://docker.io/balenalib/revpi-core-3-ubuntu:artful-run" shape="ellipse"];
  "sha256:d737a14162eed4f7c2b101fc34b53398bf521ae053362d71c256ae91aa550d15" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:24f0fc0d42cddea184352b07d0eec8186b677093c18bebd77d3cc473c5ed8b79" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:607adb9b2f138c00798f0a0c4ed5a0faf5efd0f5f712be9f1abcc316997cedc9" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:cd49b4bdf13788a17339e0da4c43cbf833e9268c5de1d378a15957420c758a78" [label="mkdir{path=/go}" shape="note"];
  "sha256:956ef8e42765976d3e644db35f4968e7cb238e5f110fe6b802bdcd959e3734f7" [label="sha256:956ef8e42765976d3e644db35f4968e7cb238e5f110fe6b802bdcd959e3734f7" shape="plaintext"];
  "sha256:0cca82c4bb0fc54423bd27589af131f322d993999f2bfe4100ae4d6b88a3ed04" -> "sha256:d737a14162eed4f7c2b101fc34b53398bf521ae053362d71c256ae91aa550d15" [label=""];
  "sha256:d737a14162eed4f7c2b101fc34b53398bf521ae053362d71c256ae91aa550d15" -> "sha256:24f0fc0d42cddea184352b07d0eec8186b677093c18bebd77d3cc473c5ed8b79" [label=""];
  "sha256:24f0fc0d42cddea184352b07d0eec8186b677093c18bebd77d3cc473c5ed8b79" -> "sha256:607adb9b2f138c00798f0a0c4ed5a0faf5efd0f5f712be9f1abcc316997cedc9" [label=""];
  "sha256:607adb9b2f138c00798f0a0c4ed5a0faf5efd0f5f712be9f1abcc316997cedc9" -> "sha256:cd49b4bdf13788a17339e0da4c43cbf833e9268c5de1d378a15957420c758a78" [label=""];
  "sha256:cd49b4bdf13788a17339e0da4c43cbf833e9268c5de1d378a15957420c758a78" -> "sha256:956ef8e42765976d3e644db35f4968e7cb238e5f110fe6b802bdcd959e3734f7" [label=""];
}

