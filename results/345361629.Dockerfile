[app/sources/345361629.Dockerfile]
digraph {
  "sha256:4e0bf480a651821058702948da17229caff0063988ee13bf0b0aebea01b25670" [label="docker-image://docker.io/balenalib/via-vab820-quad-debian:jessie-run" shape="ellipse"];
  "sha256:de122e2c4cfa98d2e88d9826db51679abfa05aa1d08a2b3bd5e6dee0b5ab6bca" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:fb1ea8a01f1822f07ec70e09da8e2f2163b11f75eddbeaf77f5838aa49867126" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:7d1113e7be23e9033732157fb30d25f768092f8c81df414281b2f7a701cfa19e" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:7cad370441bde280330d1a24d8b988d29a3c6bc8ec054cd83b510b93c9d93257" [label="mkdir{path=/go}" shape="note"];
  "sha256:73db73f45bad77a55b92c0d71feea98236035ae0eecf6168bb98f9862f63c846" [label="sha256:73db73f45bad77a55b92c0d71feea98236035ae0eecf6168bb98f9862f63c846" shape="plaintext"];
  "sha256:4e0bf480a651821058702948da17229caff0063988ee13bf0b0aebea01b25670" -> "sha256:de122e2c4cfa98d2e88d9826db51679abfa05aa1d08a2b3bd5e6dee0b5ab6bca" [label=""];
  "sha256:de122e2c4cfa98d2e88d9826db51679abfa05aa1d08a2b3bd5e6dee0b5ab6bca" -> "sha256:fb1ea8a01f1822f07ec70e09da8e2f2163b11f75eddbeaf77f5838aa49867126" [label=""];
  "sha256:fb1ea8a01f1822f07ec70e09da8e2f2163b11f75eddbeaf77f5838aa49867126" -> "sha256:7d1113e7be23e9033732157fb30d25f768092f8c81df414281b2f7a701cfa19e" [label=""];
  "sha256:7d1113e7be23e9033732157fb30d25f768092f8c81df414281b2f7a701cfa19e" -> "sha256:7cad370441bde280330d1a24d8b988d29a3c6bc8ec054cd83b510b93c9d93257" [label=""];
  "sha256:7cad370441bde280330d1a24d8b988d29a3c6bc8ec054cd83b510b93c9d93257" -> "sha256:73db73f45bad77a55b92c0d71feea98236035ae0eecf6168bb98f9862f63c846" [label=""];
}

