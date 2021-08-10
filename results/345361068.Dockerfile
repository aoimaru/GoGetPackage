[app/sources/345361068.Dockerfile]
digraph {
  "sha256:c44fd44ff0f536e1d651e4bada3b7f249e51d0880f01aeb8d98c69a80da49905" [label="docker-image://docker.io/balenalib/ts7700-debian:jessie-run" shape="ellipse"];
  "sha256:f554564b711bab8ff3a48d0a2066ef8a36cdf419ad2d91a64b374e3ac7d766e1" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:5b45375fe32ea21f3703fa706216b07b06c9bc4e5678a995d264a7876ae2e4db" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armel.tar.gz\" \t&& echo \"12d319a014b894db07d32792bc4e450f7d408742e1d7bf602777fb375196233e  go$GO_VERSION.linux-armel.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armel.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armel.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:02a8fe20c8324844c22fc49dd8c396052f6fc53ca74aa54e0356a0c3c206daf0" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:4392ef1a45257d4b3c06a77d914eb021c5519e50e4619a6110dd4c8d1454ac77" [label="mkdir{path=/go}" shape="note"];
  "sha256:e7d083713555b256b4dd8ec803e4b0ca9e568bb84e5719ab988ec4b79f0f9888" [label="sha256:e7d083713555b256b4dd8ec803e4b0ca9e568bb84e5719ab988ec4b79f0f9888" shape="plaintext"];
  "sha256:c44fd44ff0f536e1d651e4bada3b7f249e51d0880f01aeb8d98c69a80da49905" -> "sha256:f554564b711bab8ff3a48d0a2066ef8a36cdf419ad2d91a64b374e3ac7d766e1" [label=""];
  "sha256:f554564b711bab8ff3a48d0a2066ef8a36cdf419ad2d91a64b374e3ac7d766e1" -> "sha256:5b45375fe32ea21f3703fa706216b07b06c9bc4e5678a995d264a7876ae2e4db" [label=""];
  "sha256:5b45375fe32ea21f3703fa706216b07b06c9bc4e5678a995d264a7876ae2e4db" -> "sha256:02a8fe20c8324844c22fc49dd8c396052f6fc53ca74aa54e0356a0c3c206daf0" [label=""];
  "sha256:02a8fe20c8324844c22fc49dd8c396052f6fc53ca74aa54e0356a0c3c206daf0" -> "sha256:4392ef1a45257d4b3c06a77d914eb021c5519e50e4619a6110dd4c8d1454ac77" [label=""];
  "sha256:4392ef1a45257d4b3c06a77d914eb021c5519e50e4619a6110dd4c8d1454ac77" -> "sha256:e7d083713555b256b4dd8ec803e4b0ca9e568bb84e5719ab988ec4b79f0f9888" [label=""];
}

