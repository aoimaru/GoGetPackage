[app/sources/345365839.Dockerfile]
digraph {
  "sha256:d15d38c01fa45448ab81524160175373e86a3860a811f65a5e4889f0ce2a625f" [label="docker-image://docker.io/balenalib/fincm3-debian:stretch-run" shape="ellipse"];
  "sha256:3c02dfd2868ed0483b4c27941c9886973b0622da370a74d8176b2729f209f2d4" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:437ce425dc7e7e506a8ffece6f300c8793c71c75b3e6c1fa85f3835117871d46" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f8a06c2832ca01001d0ffc68a44a2d4c569285cd485a0a61ee7169bc87adbb0f  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:477e6d62b1523aa94793877034b7835ea8b3667eb916a3881d12b6a6d5dfe412" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:a4040707024454489c7876177887a4be172aa6126f6d7a4224a3c882ff604f67" [label="mkdir{path=/go}" shape="note"];
  "sha256:6526968f4678bbf9d29fd10f8299c3f273cb562a731ca45690b929b95dc6d499" [label="sha256:6526968f4678bbf9d29fd10f8299c3f273cb562a731ca45690b929b95dc6d499" shape="plaintext"];
  "sha256:d15d38c01fa45448ab81524160175373e86a3860a811f65a5e4889f0ce2a625f" -> "sha256:3c02dfd2868ed0483b4c27941c9886973b0622da370a74d8176b2729f209f2d4" [label=""];
  "sha256:3c02dfd2868ed0483b4c27941c9886973b0622da370a74d8176b2729f209f2d4" -> "sha256:437ce425dc7e7e506a8ffece6f300c8793c71c75b3e6c1fa85f3835117871d46" [label=""];
  "sha256:437ce425dc7e7e506a8ffece6f300c8793c71c75b3e6c1fa85f3835117871d46" -> "sha256:477e6d62b1523aa94793877034b7835ea8b3667eb916a3881d12b6a6d5dfe412" [label=""];
  "sha256:477e6d62b1523aa94793877034b7835ea8b3667eb916a3881d12b6a6d5dfe412" -> "sha256:a4040707024454489c7876177887a4be172aa6126f6d7a4224a3c882ff604f67" [label=""];
  "sha256:a4040707024454489c7876177887a4be172aa6126f6d7a4224a3c882ff604f67" -> "sha256:6526968f4678bbf9d29fd10f8299c3f273cb562a731ca45690b929b95dc6d499" [label=""];
}

