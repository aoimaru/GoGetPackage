[app/sources/345357653.Dockerfile]
digraph {
  "sha256:a6ea1d6f6b5ccf657f5c03afceee1f62416d92508bab57401f8feef27793baf7" [label="docker-image://docker.io/balenalib/parallella-ubuntu:artful-run" shape="ellipse"];
  "sha256:a95e42eb36116f2182aea9f8d1e8c7cfc457eef2080c6f800b24bc254024dafd" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:1e8a10c86ad3701093dcbbc3be737bc18890d9546c843a0a83a739451aa5f52f" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:fa8d4e63027cc1d485a51ae40e28b5964ff31682081d35630e59f8a07996ed7b" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:494f0bf1eedc9378239816729cb05b6fc4fbbd0317b16ac731a0c3069521c4fb" [label="mkdir{path=/go}" shape="note"];
  "sha256:0376c964e07bb2554e35f8169c415febe597ab810627d80e474e6fd76c54fc08" [label="sha256:0376c964e07bb2554e35f8169c415febe597ab810627d80e474e6fd76c54fc08" shape="plaintext"];
  "sha256:a6ea1d6f6b5ccf657f5c03afceee1f62416d92508bab57401f8feef27793baf7" -> "sha256:a95e42eb36116f2182aea9f8d1e8c7cfc457eef2080c6f800b24bc254024dafd" [label=""];
  "sha256:a95e42eb36116f2182aea9f8d1e8c7cfc457eef2080c6f800b24bc254024dafd" -> "sha256:1e8a10c86ad3701093dcbbc3be737bc18890d9546c843a0a83a739451aa5f52f" [label=""];
  "sha256:1e8a10c86ad3701093dcbbc3be737bc18890d9546c843a0a83a739451aa5f52f" -> "sha256:fa8d4e63027cc1d485a51ae40e28b5964ff31682081d35630e59f8a07996ed7b" [label=""];
  "sha256:fa8d4e63027cc1d485a51ae40e28b5964ff31682081d35630e59f8a07996ed7b" -> "sha256:494f0bf1eedc9378239816729cb05b6fc4fbbd0317b16ac731a0c3069521c4fb" [label=""];
  "sha256:494f0bf1eedc9378239816729cb05b6fc4fbbd0317b16ac731a0c3069521c4fb" -> "sha256:0376c964e07bb2554e35f8169c415febe597ab810627d80e474e6fd76c54fc08" [label=""];
}

