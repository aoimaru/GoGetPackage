[app/sources/345360788.Dockerfile]
digraph {
  "sha256:f547174f33e878980278f6d99fc618bec897bab26d0175682afc55271d2f692f" [label="docker-image://docker.io/balenalib/surface-pro-6-ubuntu:bionic-run" shape="ellipse"];
  "sha256:3d0ca3d992908806e02130971f88d07ef268b53a9747fdfbe4d6b2d31e75545e" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:5610606d02bcbd5a63b6bb342f8809345b0a29b67f1b8772f9ad00b4c9578a6e" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-amd64.tar.gz\" \t&& echo \"aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0  go$GO_VERSION.linux-amd64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-amd64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-amd64.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:541d9cc557a4dbfcbe62f3e04e5f6480c09d6f41c68121464ee281cc4cba18f4" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:be00f44851a2814b71a97b7921755f7d15a5724405c5def9ea3efb7575af46c5" [label="mkdir{path=/go}" shape="note"];
  "sha256:266d01faa6d342611afb146cdff0367390d107fea93d2626d84594c98b03792f" [label="sha256:266d01faa6d342611afb146cdff0367390d107fea93d2626d84594c98b03792f" shape="plaintext"];
  "sha256:f547174f33e878980278f6d99fc618bec897bab26d0175682afc55271d2f692f" -> "sha256:3d0ca3d992908806e02130971f88d07ef268b53a9747fdfbe4d6b2d31e75545e" [label=""];
  "sha256:3d0ca3d992908806e02130971f88d07ef268b53a9747fdfbe4d6b2d31e75545e" -> "sha256:5610606d02bcbd5a63b6bb342f8809345b0a29b67f1b8772f9ad00b4c9578a6e" [label=""];
  "sha256:5610606d02bcbd5a63b6bb342f8809345b0a29b67f1b8772f9ad00b4c9578a6e" -> "sha256:541d9cc557a4dbfcbe62f3e04e5f6480c09d6f41c68121464ee281cc4cba18f4" [label=""];
  "sha256:541d9cc557a4dbfcbe62f3e04e5f6480c09d6f41c68121464ee281cc4cba18f4" -> "sha256:be00f44851a2814b71a97b7921755f7d15a5724405c5def9ea3efb7575af46c5" [label=""];
  "sha256:be00f44851a2814b71a97b7921755f7d15a5724405c5def9ea3efb7575af46c5" -> "sha256:266d01faa6d342611afb146cdff0367390d107fea93d2626d84594c98b03792f" [label=""];
}

