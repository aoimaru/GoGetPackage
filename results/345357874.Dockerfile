[app/sources/345357874.Dockerfile]
digraph {
  "sha256:a3818a32c0fe74cafea40d4940a70fd246644c2a1e3a5843ec851d013b40e3ed" [label="docker-image://docker.io/balenalib/qemux86-debian:jessie-run" shape="ellipse"];
  "sha256:89191111c97b3dc3afaa2d8c55bcd85198cb8f9744e668a4e1ffa43493349643" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:a093749c51e01dac0714baf8ead04030d28918d84727ea31bfe2b9851e502c1f" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-386.tar.gz\" \t&& echo \"146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980  go$GO_VERSION.linux-386.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-386.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-386.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:2ef14c866b434c0cc11ca70cd4739879aa0af9ef328fcbbd0e637683b75e0387" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:91176292d2bb4186c27274c56a3b159eb43305758da0599864c8b5a6d37e55a8" [label="mkdir{path=/go}" shape="note"];
  "sha256:49b08582028b45ab6c3d64f46cfbc75493bc83b1b84275054785e8c7a5c2ac77" [label="sha256:49b08582028b45ab6c3d64f46cfbc75493bc83b1b84275054785e8c7a5c2ac77" shape="plaintext"];
  "sha256:a3818a32c0fe74cafea40d4940a70fd246644c2a1e3a5843ec851d013b40e3ed" -> "sha256:89191111c97b3dc3afaa2d8c55bcd85198cb8f9744e668a4e1ffa43493349643" [label=""];
  "sha256:89191111c97b3dc3afaa2d8c55bcd85198cb8f9744e668a4e1ffa43493349643" -> "sha256:a093749c51e01dac0714baf8ead04030d28918d84727ea31bfe2b9851e502c1f" [label=""];
  "sha256:a093749c51e01dac0714baf8ead04030d28918d84727ea31bfe2b9851e502c1f" -> "sha256:2ef14c866b434c0cc11ca70cd4739879aa0af9ef328fcbbd0e637683b75e0387" [label=""];
  "sha256:2ef14c866b434c0cc11ca70cd4739879aa0af9ef328fcbbd0e637683b75e0387" -> "sha256:91176292d2bb4186c27274c56a3b159eb43305758da0599864c8b5a6d37e55a8" [label=""];
  "sha256:91176292d2bb4186c27274c56a3b159eb43305758da0599864c8b5a6d37e55a8" -> "sha256:49b08582028b45ab6c3d64f46cfbc75493bc83b1b84275054785e8c7a5c2ac77" [label=""];
}

