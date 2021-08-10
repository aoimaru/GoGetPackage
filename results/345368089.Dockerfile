[app/sources/345368089.Dockerfile]
digraph {
  "sha256:a170d932eba0b37e911d2a696991b31ebcdb63dfafcc10977285ef9298bddd16" [label="docker-image://docker.io/balenalib/artik533s-ubuntu:xenial-run" shape="ellipse"];
  "sha256:7d047c1d71e2f7f4aa7767a1fbb119875b3c4d3da00c3474db73d62c7c3d880b" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:05b174de013065a0418ed9ee9e24aff014db9836f994cf4ce046e9a2e7f62d34" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:5df1488806d9c68d07b5a5bedf80f5c7a5d84410d349cff451232810a91eab02" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:3d73304c6184ed011e2517fe29f5a345fa944bab266d8cedb549398939b4fafc" [label="mkdir{path=/go}" shape="note"];
  "sha256:8e5d4d2668d045168289bef34619abd08fd14e758d6a16b3d51486fb794083c2" [label="sha256:8e5d4d2668d045168289bef34619abd08fd14e758d6a16b3d51486fb794083c2" shape="plaintext"];
  "sha256:a170d932eba0b37e911d2a696991b31ebcdb63dfafcc10977285ef9298bddd16" -> "sha256:7d047c1d71e2f7f4aa7767a1fbb119875b3c4d3da00c3474db73d62c7c3d880b" [label=""];
  "sha256:7d047c1d71e2f7f4aa7767a1fbb119875b3c4d3da00c3474db73d62c7c3d880b" -> "sha256:05b174de013065a0418ed9ee9e24aff014db9836f994cf4ce046e9a2e7f62d34" [label=""];
  "sha256:05b174de013065a0418ed9ee9e24aff014db9836f994cf4ce046e9a2e7f62d34" -> "sha256:5df1488806d9c68d07b5a5bedf80f5c7a5d84410d349cff451232810a91eab02" [label=""];
  "sha256:5df1488806d9c68d07b5a5bedf80f5c7a5d84410d349cff451232810a91eab02" -> "sha256:3d73304c6184ed011e2517fe29f5a345fa944bab266d8cedb549398939b4fafc" [label=""];
  "sha256:3d73304c6184ed011e2517fe29f5a345fa944bab266d8cedb549398939b4fafc" -> "sha256:8e5d4d2668d045168289bef34619abd08fd14e758d6a16b3d51486fb794083c2" [label=""];
}

