[app/sources/345373094.Dockerfile]
digraph {
  "sha256:107c3cce5eb3a520f8a29ad5e1ed6e0ce7b537ce922d08c62cd4c2812e396fa2" [label="docker-image://docker.io/balenalib/iot2000-ubuntu:xenial-run" shape="ellipse"];
  "sha256:1d0e5ce750861de7aae30bb493f222f28fe710ea73362f3ef5e98d8aec2c377f" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:7fcb5099df300fea2cd402c91e497886e022f8e43dbb8f257df62355ff7bb9ef" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-i386-nlp.tar.gz\" \t&& echo \"2558e34e8e2aa952ce4505fc97872c3ef9fa8c25bcd8cab15d0026cc2e91ec30  go$GO_VERSION.linux-i386-nlp.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-i386-nlp.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-i386-nlp.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:84c711f6917c79e393195cfbd5e1262190f8b88594991e177bd6ac09736a617b" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:5bd5b3e4d8abfafdd73a08ded96334a8d7737880a300cccc841b986c4d7cdba2" [label="mkdir{path=/go}" shape="note"];
  "sha256:6513c82b2cfceb207ffe1954a3133de69d3fd1281c8069c0a60363ffa18ea143" [label="sha256:6513c82b2cfceb207ffe1954a3133de69d3fd1281c8069c0a60363ffa18ea143" shape="plaintext"];
  "sha256:107c3cce5eb3a520f8a29ad5e1ed6e0ce7b537ce922d08c62cd4c2812e396fa2" -> "sha256:1d0e5ce750861de7aae30bb493f222f28fe710ea73362f3ef5e98d8aec2c377f" [label=""];
  "sha256:1d0e5ce750861de7aae30bb493f222f28fe710ea73362f3ef5e98d8aec2c377f" -> "sha256:7fcb5099df300fea2cd402c91e497886e022f8e43dbb8f257df62355ff7bb9ef" [label=""];
  "sha256:7fcb5099df300fea2cd402c91e497886e022f8e43dbb8f257df62355ff7bb9ef" -> "sha256:84c711f6917c79e393195cfbd5e1262190f8b88594991e177bd6ac09736a617b" [label=""];
  "sha256:84c711f6917c79e393195cfbd5e1262190f8b88594991e177bd6ac09736a617b" -> "sha256:5bd5b3e4d8abfafdd73a08ded96334a8d7737880a300cccc841b986c4d7cdba2" [label=""];
  "sha256:5bd5b3e4d8abfafdd73a08ded96334a8d7737880a300cccc841b986c4d7cdba2" -> "sha256:6513c82b2cfceb207ffe1954a3133de69d3fd1281c8069c0a60363ffa18ea143" [label=""];
}

