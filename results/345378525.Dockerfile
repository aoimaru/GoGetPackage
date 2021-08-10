[app/sources/345378525.Dockerfile]
digraph {
  "sha256:678726a76421e4a20e4e5dcd27fb66de0c4f14dce094403e9f00c17866291170" [label="docker-image://docker.io/balenalib/zc702-zynq7-ubuntu:artful-run" shape="ellipse"];
  "sha256:1670f4fd0676c46cf4de58a76f7768ac151c456338bb5929f94e669759f09d75" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:1502c10efbaec1adeedb947174846e04cfe923b7c0a4b0c28a972dac2c2ebb90" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:f021cd12d1ebf01d8ae914a187aaa429a0c559c25eac20f9ee557c1319537517" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:fc11c8c1e70845586ea57f127e1b8faa6e86bc05e51db8b0cae9ac84f77baa5c" [label="mkdir{path=/go}" shape="note"];
  "sha256:a13d1e4e0898f35d19e3438cb9cdb3a00fdddb4db0233b009913a62b0f4c582d" [label="sha256:a13d1e4e0898f35d19e3438cb9cdb3a00fdddb4db0233b009913a62b0f4c582d" shape="plaintext"];
  "sha256:678726a76421e4a20e4e5dcd27fb66de0c4f14dce094403e9f00c17866291170" -> "sha256:1670f4fd0676c46cf4de58a76f7768ac151c456338bb5929f94e669759f09d75" [label=""];
  "sha256:1670f4fd0676c46cf4de58a76f7768ac151c456338bb5929f94e669759f09d75" -> "sha256:1502c10efbaec1adeedb947174846e04cfe923b7c0a4b0c28a972dac2c2ebb90" [label=""];
  "sha256:1502c10efbaec1adeedb947174846e04cfe923b7c0a4b0c28a972dac2c2ebb90" -> "sha256:f021cd12d1ebf01d8ae914a187aaa429a0c559c25eac20f9ee557c1319537517" [label=""];
  "sha256:f021cd12d1ebf01d8ae914a187aaa429a0c559c25eac20f9ee557c1319537517" -> "sha256:fc11c8c1e70845586ea57f127e1b8faa6e86bc05e51db8b0cae9ac84f77baa5c" [label=""];
  "sha256:fc11c8c1e70845586ea57f127e1b8faa6e86bc05e51db8b0cae9ac84f77baa5c" -> "sha256:a13d1e4e0898f35d19e3438cb9cdb3a00fdddb4db0233b009913a62b0f4c582d" [label=""];
}

