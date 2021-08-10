[app/sources/345375746.Dockerfile]
digraph {
  "sha256:9dc8eda45c9f05186c654a6c2950cbdbf2b2b0cc3ab1bc3fcb4b6e65beaeb0da" [label="docker-image://docker.io/balenalib/orange-pi-one-ubuntu:trusty-run@sha256:ed763c95fdc70543d9b8c7972529e12080f23480736612df360d59024422f7c4" shape="ellipse"];
  "sha256:343700346528473cb2fbd2762ded8ced04cc4886f5f5b71999a2c3868d6d9eb9" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:6a84db5d6a4a31f9175b038ef5894cbaac15f303f387517d6d02332c176f31fa" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:772b10428fbf3dbd72cc07d63680441de76766736102507ecdca42b130fd9025" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:33ca95d730cf65bf155ef107f2d0ba0daa8aa324877c8f5c23f31e5e59d3099e" [label="mkdir{path=/go}" shape="note"];
  "sha256:b35bd6c39b5ad7aeae7c698c60aaa7527a1f5da5d20f9cc41f9aea4c8fbf4fae" [label="sha256:b35bd6c39b5ad7aeae7c698c60aaa7527a1f5da5d20f9cc41f9aea4c8fbf4fae" shape="plaintext"];
  "sha256:9dc8eda45c9f05186c654a6c2950cbdbf2b2b0cc3ab1bc3fcb4b6e65beaeb0da" -> "sha256:343700346528473cb2fbd2762ded8ced04cc4886f5f5b71999a2c3868d6d9eb9" [label=""];
  "sha256:343700346528473cb2fbd2762ded8ced04cc4886f5f5b71999a2c3868d6d9eb9" -> "sha256:6a84db5d6a4a31f9175b038ef5894cbaac15f303f387517d6d02332c176f31fa" [label=""];
  "sha256:6a84db5d6a4a31f9175b038ef5894cbaac15f303f387517d6d02332c176f31fa" -> "sha256:772b10428fbf3dbd72cc07d63680441de76766736102507ecdca42b130fd9025" [label=""];
  "sha256:772b10428fbf3dbd72cc07d63680441de76766736102507ecdca42b130fd9025" -> "sha256:33ca95d730cf65bf155ef107f2d0ba0daa8aa324877c8f5c23f31e5e59d3099e" [label=""];
  "sha256:33ca95d730cf65bf155ef107f2d0ba0daa8aa324877c8f5c23f31e5e59d3099e" -> "sha256:b35bd6c39b5ad7aeae7c698c60aaa7527a1f5da5d20f9cc41f9aea4c8fbf4fae" [label=""];
}

