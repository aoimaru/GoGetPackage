[app/sources/345375152.Dockerfile]
digraph {
  "sha256:afc34c1f8c7ff664de3251f725a8d9d586304b7e8f3153b239fc972a80f722f8" [label="docker-image://docker.io/balenalib/nitrogen6xq2g-debian:jessie-run" shape="ellipse"];
  "sha256:d13a89fdb1f51f15e4d553b11007788c3638835f9659b1c3edb2ac0c8a3a9894" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:7dd94c1f993080002f2120baf34b47e48f5f3a8aa23f8ccbba1d2b07901a3abf" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:1916003e49ccef0c058586d84e5799692d41c54108243872018dfc93d8260bf1" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:16f98442fdba8646a53fc99f487f20ed62e1f37ecac46a3f1d0f0e5c8d1722e0" [label="mkdir{path=/go}" shape="note"];
  "sha256:08c80512aaf9d40009615e27f8b4e23b6b28732d0bdc31c680894fb8c93d904a" [label="sha256:08c80512aaf9d40009615e27f8b4e23b6b28732d0bdc31c680894fb8c93d904a" shape="plaintext"];
  "sha256:afc34c1f8c7ff664de3251f725a8d9d586304b7e8f3153b239fc972a80f722f8" -> "sha256:d13a89fdb1f51f15e4d553b11007788c3638835f9659b1c3edb2ac0c8a3a9894" [label=""];
  "sha256:d13a89fdb1f51f15e4d553b11007788c3638835f9659b1c3edb2ac0c8a3a9894" -> "sha256:7dd94c1f993080002f2120baf34b47e48f5f3a8aa23f8ccbba1d2b07901a3abf" [label=""];
  "sha256:7dd94c1f993080002f2120baf34b47e48f5f3a8aa23f8ccbba1d2b07901a3abf" -> "sha256:1916003e49ccef0c058586d84e5799692d41c54108243872018dfc93d8260bf1" [label=""];
  "sha256:1916003e49ccef0c058586d84e5799692d41c54108243872018dfc93d8260bf1" -> "sha256:16f98442fdba8646a53fc99f487f20ed62e1f37ecac46a3f1d0f0e5c8d1722e0" [label=""];
  "sha256:16f98442fdba8646a53fc99f487f20ed62e1f37ecac46a3f1d0f0e5c8d1722e0" -> "sha256:08c80512aaf9d40009615e27f8b4e23b6b28732d0bdc31c680894fb8c93d904a" [label=""];
}

