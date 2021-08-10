[app/sources/345363633.Dockerfile]
digraph {
  "sha256:ef64fcdc182dcb9dbb43c4f4ef26de92d36bc6f9d66ecdb1a61eb41c6154a42d" [label="docker-image://docker.io/balenalib/armv7hf-ubuntu:artful-run" shape="ellipse"];
  "sha256:b7b5a5c6d26af79baa3cdc99a1e669f937909eae6763f7ada668d88ae8af0fae" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:783c0eb59b937e8efbac306db2c0812913a0059135c937d5a7b7ec8b1f28cdb9" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:6561b0c86aa94628a429d53db7788dd712772088207b116cb858a8c133e6bf42" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:acc30b4d069aeef9473b7eaac62e17281deaea238f5b39a10015c271f182feac" [label="mkdir{path=/go}" shape="note"];
  "sha256:3b08ed7f96d6261a07751627151f9ef5508a6064a5265cc614de1fd5bc146a5f" [label="sha256:3b08ed7f96d6261a07751627151f9ef5508a6064a5265cc614de1fd5bc146a5f" shape="plaintext"];
  "sha256:ef64fcdc182dcb9dbb43c4f4ef26de92d36bc6f9d66ecdb1a61eb41c6154a42d" -> "sha256:b7b5a5c6d26af79baa3cdc99a1e669f937909eae6763f7ada668d88ae8af0fae" [label=""];
  "sha256:b7b5a5c6d26af79baa3cdc99a1e669f937909eae6763f7ada668d88ae8af0fae" -> "sha256:783c0eb59b937e8efbac306db2c0812913a0059135c937d5a7b7ec8b1f28cdb9" [label=""];
  "sha256:783c0eb59b937e8efbac306db2c0812913a0059135c937d5a7b7ec8b1f28cdb9" -> "sha256:6561b0c86aa94628a429d53db7788dd712772088207b116cb858a8c133e6bf42" [label=""];
  "sha256:6561b0c86aa94628a429d53db7788dd712772088207b116cb858a8c133e6bf42" -> "sha256:acc30b4d069aeef9473b7eaac62e17281deaea238f5b39a10015c271f182feac" [label=""];
  "sha256:acc30b4d069aeef9473b7eaac62e17281deaea238f5b39a10015c271f182feac" -> "sha256:3b08ed7f96d6261a07751627151f9ef5508a6064a5265cc614de1fd5bc146a5f" [label=""];
}

