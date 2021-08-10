[app/sources/345371013.Dockerfile]
digraph {
  "sha256:f69b76ea84839ef4b754e0ed4c37c9df51dfce374a33981618ea91301118647e" [label="docker-image://docker.io/balenalib/beaglebone-green-debian:sid-run" shape="ellipse"];
  "sha256:87d983c563ea60defd59c0410559c72d5c40e92bd032a7ebe80b6f529d006b16" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:ffaeef392c644b582a8aecb339cfcd6b2464a3a807fa39c92419235bb2a52b50" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:b38f356c78396ba698353dec65680fe3c743eed66eb15e12a0b45a2ce5423f84" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:516cf08fb0c48990c03947fe90fb4c24688ddf7426c86c2f837a97ec88766d46" [label="mkdir{path=/go}" shape="note"];
  "sha256:1ca3825dad6ad97472e91eb5b1bd7eececd4ad969b571be863bcfab13a7eb4b8" [label="sha256:1ca3825dad6ad97472e91eb5b1bd7eececd4ad969b571be863bcfab13a7eb4b8" shape="plaintext"];
  "sha256:f69b76ea84839ef4b754e0ed4c37c9df51dfce374a33981618ea91301118647e" -> "sha256:87d983c563ea60defd59c0410559c72d5c40e92bd032a7ebe80b6f529d006b16" [label=""];
  "sha256:87d983c563ea60defd59c0410559c72d5c40e92bd032a7ebe80b6f529d006b16" -> "sha256:ffaeef392c644b582a8aecb339cfcd6b2464a3a807fa39c92419235bb2a52b50" [label=""];
  "sha256:ffaeef392c644b582a8aecb339cfcd6b2464a3a807fa39c92419235bb2a52b50" -> "sha256:b38f356c78396ba698353dec65680fe3c743eed66eb15e12a0b45a2ce5423f84" [label=""];
  "sha256:b38f356c78396ba698353dec65680fe3c743eed66eb15e12a0b45a2ce5423f84" -> "sha256:516cf08fb0c48990c03947fe90fb4c24688ddf7426c86c2f837a97ec88766d46" [label=""];
  "sha256:516cf08fb0c48990c03947fe90fb4c24688ddf7426c86c2f837a97ec88766d46" -> "sha256:1ca3825dad6ad97472e91eb5b1bd7eececd4ad969b571be863bcfab13a7eb4b8" [label=""];
}

