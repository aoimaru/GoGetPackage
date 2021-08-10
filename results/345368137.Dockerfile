[app/sources/345368137.Dockerfile]
digraph {
  "sha256:39cbd19cedc591d3f47a7ccf97448c76ae39540671601ce606f7b4b3d8928518" [label="docker-image://docker.io/balenalib/artik710-debian:jessie-run" shape="ellipse"];
  "sha256:a4aa5aa1c8c1e346a87bdbcf26d401fbbde6f9d4e18f8bde47d67c38abb34f46" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:135a2816d45b5d24d19c6e8e897a2e6e9f7af42fba271c1f497c64f8083c0e06" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-arm64.tar.gz\" \t&& echo \"ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8  go$GO_VERSION.linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-arm64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-arm64.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:74fe61c1bec89e23fa6b274dcb3198121d5be39debad77fe03be8106f588e198" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:989624e8bae082fa970650e131444e3d0428b6a7a532a7539f541fc454f531f2" [label="mkdir{path=/go}" shape="note"];
  "sha256:e44248258459bfa0b65c356aae69b991c80fc2c9336bdd767deec2e2455e3a90" [label="sha256:e44248258459bfa0b65c356aae69b991c80fc2c9336bdd767deec2e2455e3a90" shape="plaintext"];
  "sha256:39cbd19cedc591d3f47a7ccf97448c76ae39540671601ce606f7b4b3d8928518" -> "sha256:a4aa5aa1c8c1e346a87bdbcf26d401fbbde6f9d4e18f8bde47d67c38abb34f46" [label=""];
  "sha256:a4aa5aa1c8c1e346a87bdbcf26d401fbbde6f9d4e18f8bde47d67c38abb34f46" -> "sha256:135a2816d45b5d24d19c6e8e897a2e6e9f7af42fba271c1f497c64f8083c0e06" [label=""];
  "sha256:135a2816d45b5d24d19c6e8e897a2e6e9f7af42fba271c1f497c64f8083c0e06" -> "sha256:74fe61c1bec89e23fa6b274dcb3198121d5be39debad77fe03be8106f588e198" [label=""];
  "sha256:74fe61c1bec89e23fa6b274dcb3198121d5be39debad77fe03be8106f588e198" -> "sha256:989624e8bae082fa970650e131444e3d0428b6a7a532a7539f541fc454f531f2" [label=""];
  "sha256:989624e8bae082fa970650e131444e3d0428b6a7a532a7539f541fc454f531f2" -> "sha256:e44248258459bfa0b65c356aae69b991c80fc2c9336bdd767deec2e2455e3a90" [label=""];
}

