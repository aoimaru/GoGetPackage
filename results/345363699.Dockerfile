[app/sources/345363699.Dockerfile]
digraph {
  "sha256:5c41bec6ed720386c574b37d293db457f066a881eac6aaef8904429ce19c5e3b" [label="docker-image://docker.io/balenalib/artik10-debian:buster-run" shape="ellipse"];
  "sha256:e85d704efc5ec8f4907b0843964cbecd7e406c5651f609bbf89d0c5ee0565c5b" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:cd55445516a4ce3aadf8367190f3cf891119889f4e628a6e3593e3491f82370c" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:4e0be277f27a235784494231fcbaae81d991bc5d8b82df6679223d3806932b23" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:8e5c907ebe61dcdaf9ec8ca1f5ff07000e654eef829eda438f1118f132ab5fdd" [label="mkdir{path=/go}" shape="note"];
  "sha256:613a29a28bad5378632301291e332a41e3a42bc5fb6ecf9e982be011c052bd1e" [label="sha256:613a29a28bad5378632301291e332a41e3a42bc5fb6ecf9e982be011c052bd1e" shape="plaintext"];
  "sha256:5c41bec6ed720386c574b37d293db457f066a881eac6aaef8904429ce19c5e3b" -> "sha256:e85d704efc5ec8f4907b0843964cbecd7e406c5651f609bbf89d0c5ee0565c5b" [label=""];
  "sha256:e85d704efc5ec8f4907b0843964cbecd7e406c5651f609bbf89d0c5ee0565c5b" -> "sha256:cd55445516a4ce3aadf8367190f3cf891119889f4e628a6e3593e3491f82370c" [label=""];
  "sha256:cd55445516a4ce3aadf8367190f3cf891119889f4e628a6e3593e3491f82370c" -> "sha256:4e0be277f27a235784494231fcbaae81d991bc5d8b82df6679223d3806932b23" [label=""];
  "sha256:4e0be277f27a235784494231fcbaae81d991bc5d8b82df6679223d3806932b23" -> "sha256:8e5c907ebe61dcdaf9ec8ca1f5ff07000e654eef829eda438f1118f132ab5fdd" [label=""];
  "sha256:8e5c907ebe61dcdaf9ec8ca1f5ff07000e654eef829eda438f1118f132ab5fdd" -> "sha256:613a29a28bad5378632301291e332a41e3a42bc5fb6ecf9e982be011c052bd1e" [label=""];
}

