[app/sources/345375686.Dockerfile]
digraph {
  "sha256:a7219ef01c8fcd2b1a5c61ec94e0743da97ddf145ac40fa0bc77270bcbf0111e" [label="docker-image://docker.io/balenalib/orange-pi-one-debian:buster-run" shape="ellipse"];
  "sha256:d05ab90c5c320484880ccc29e216afea146ee5985f253b7dc01e35ca96dc1094" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:ffb4baf35b5589df6722a9e701bc30d1e529dc018fbfa0eda642bc719f690fd8" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:976d72dec067f7a5775c518cfa43a120df6142c4eb35ac9c6fb6c718d6a7fafe" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:da9de361fabdccb75e647c8b749993b1282c5a7f5e8f2397513b0de54cb4b023" [label="mkdir{path=/go}" shape="note"];
  "sha256:52254304ed94a8e7be354b3c5f3d3724376a313bc263db2dfec283cf8d000060" [label="sha256:52254304ed94a8e7be354b3c5f3d3724376a313bc263db2dfec283cf8d000060" shape="plaintext"];
  "sha256:a7219ef01c8fcd2b1a5c61ec94e0743da97ddf145ac40fa0bc77270bcbf0111e" -> "sha256:d05ab90c5c320484880ccc29e216afea146ee5985f253b7dc01e35ca96dc1094" [label=""];
  "sha256:d05ab90c5c320484880ccc29e216afea146ee5985f253b7dc01e35ca96dc1094" -> "sha256:ffb4baf35b5589df6722a9e701bc30d1e529dc018fbfa0eda642bc719f690fd8" [label=""];
  "sha256:ffb4baf35b5589df6722a9e701bc30d1e529dc018fbfa0eda642bc719f690fd8" -> "sha256:976d72dec067f7a5775c518cfa43a120df6142c4eb35ac9c6fb6c718d6a7fafe" [label=""];
  "sha256:976d72dec067f7a5775c518cfa43a120df6142c4eb35ac9c6fb6c718d6a7fafe" -> "sha256:da9de361fabdccb75e647c8b749993b1282c5a7f5e8f2397513b0de54cb4b023" [label=""];
  "sha256:da9de361fabdccb75e647c8b749993b1282c5a7f5e8f2397513b0de54cb4b023" -> "sha256:52254304ed94a8e7be354b3c5f3d3724376a313bc263db2dfec283cf8d000060" [label=""];
}

