[app/sources/345361288.Dockerfile]
digraph {
  "sha256:6d55dc5c15a838e56ed5c4e042651852cb04fb182cfdbc51f6487a064b77c132" [label="docker-image://docker.io/balenalib/up-board-ubuntu:artful-run" shape="ellipse"];
  "sha256:96518ecaa0f8e62eccf9aff79275f378b28451d0c106b20f05e6f83ee6d63f3e" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:fe50947fc9b9d5079172c1022dabcdb9115876e6942b89fdfedfeb65f129e6ff" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-amd64.tar.gz\" \t&& echo \"d8626fb6f9a3ab397d88c483b576be41fa81eefcec2fd18562c87626dbb3c39e  go$GO_VERSION.linux-amd64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-amd64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-amd64.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:6a417dd9f4574f55a82cefa87903ab34e9f8ba401d367e325c1af7568e54f46f" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:02b981dddaa03454c4b291d85aa04c151bf7855c93475d6fed3d6617af5f19bb" [label="mkdir{path=/go}" shape="note"];
  "sha256:99633e1e82565ad325d6fefca8b806fe04287442f566d76620cf55f7312bd194" [label="sha256:99633e1e82565ad325d6fefca8b806fe04287442f566d76620cf55f7312bd194" shape="plaintext"];
  "sha256:6d55dc5c15a838e56ed5c4e042651852cb04fb182cfdbc51f6487a064b77c132" -> "sha256:96518ecaa0f8e62eccf9aff79275f378b28451d0c106b20f05e6f83ee6d63f3e" [label=""];
  "sha256:96518ecaa0f8e62eccf9aff79275f378b28451d0c106b20f05e6f83ee6d63f3e" -> "sha256:fe50947fc9b9d5079172c1022dabcdb9115876e6942b89fdfedfeb65f129e6ff" [label=""];
  "sha256:fe50947fc9b9d5079172c1022dabcdb9115876e6942b89fdfedfeb65f129e6ff" -> "sha256:6a417dd9f4574f55a82cefa87903ab34e9f8ba401d367e325c1af7568e54f46f" [label=""];
  "sha256:6a417dd9f4574f55a82cefa87903ab34e9f8ba401d367e325c1af7568e54f46f" -> "sha256:02b981dddaa03454c4b291d85aa04c151bf7855c93475d6fed3d6617af5f19bb" [label=""];
  "sha256:02b981dddaa03454c4b291d85aa04c151bf7855c93475d6fed3d6617af5f19bb" -> "sha256:99633e1e82565ad325d6fefca8b806fe04287442f566d76620cf55f7312bd194" [label=""];
}

