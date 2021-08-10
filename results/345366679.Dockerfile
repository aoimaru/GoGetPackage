[app/sources/345366679.Dockerfile]
digraph {
  "sha256:e0fa4c05da9810809c641a8db5ecada7bc17748afaf03b33393b16faa015cc48" [label="docker-image://docker.io/balenalib/imx8m-var-dart-ubuntu:cosmic-run" shape="ellipse"];
  "sha256:380570adf0840e63d24d4c5183aaa94c95ef2523e19e7269894275d0d85bfc3b" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:1d874cdf94d0185abd8fb6c4f2e4d08e241e1c15734030bce9d7e94c0680054a" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-arm64.tar.gz\" \t&& echo \"6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8  go$GO_VERSION.linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-arm64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-arm64.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:b7287d0748cc0671289ff6d779c0e4cf818de655d831038b2134228f9c1b5b79" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:a8b149f9cb5c8501fb00852ce53e30cab0f63743f126260dc94a32b665bfcb08" [label="mkdir{path=/go}" shape="note"];
  "sha256:57421a591bdd90b4946131c12a6cafbe4d5bf3a1b174e751335d8aa0ff685cc2" [label="sha256:57421a591bdd90b4946131c12a6cafbe4d5bf3a1b174e751335d8aa0ff685cc2" shape="plaintext"];
  "sha256:e0fa4c05da9810809c641a8db5ecada7bc17748afaf03b33393b16faa015cc48" -> "sha256:380570adf0840e63d24d4c5183aaa94c95ef2523e19e7269894275d0d85bfc3b" [label=""];
  "sha256:380570adf0840e63d24d4c5183aaa94c95ef2523e19e7269894275d0d85bfc3b" -> "sha256:1d874cdf94d0185abd8fb6c4f2e4d08e241e1c15734030bce9d7e94c0680054a" [label=""];
  "sha256:1d874cdf94d0185abd8fb6c4f2e4d08e241e1c15734030bce9d7e94c0680054a" -> "sha256:b7287d0748cc0671289ff6d779c0e4cf818de655d831038b2134228f9c1b5b79" [label=""];
  "sha256:b7287d0748cc0671289ff6d779c0e4cf818de655d831038b2134228f9c1b5b79" -> "sha256:a8b149f9cb5c8501fb00852ce53e30cab0f63743f126260dc94a32b665bfcb08" [label=""];
  "sha256:a8b149f9cb5c8501fb00852ce53e30cab0f63743f126260dc94a32b665bfcb08" -> "sha256:57421a591bdd90b4946131c12a6cafbe4d5bf3a1b174e751335d8aa0ff685cc2" [label=""];
}

