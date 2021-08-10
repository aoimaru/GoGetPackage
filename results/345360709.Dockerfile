[app/sources/345360709.Dockerfile]
digraph {
  "sha256:24acadcfbe463714e9f24459f3a75e6afbb241ae8fbfe1ffc789ac72096113ab" [label="docker-image://docker.io/balenalib/surface-pro-6-debian:sid-run" shape="ellipse"];
  "sha256:ab00fd79d8aa8b02537b6220834d52980e513d98a637b6e066998a0ac7d1b4fc" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:514757802f3bc27f33af644ea6b683a468bc30d7304412a2ada586909cf312b3" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-amd64.tar.gz\" \t&& echo \"d8626fb6f9a3ab397d88c483b576be41fa81eefcec2fd18562c87626dbb3c39e  go$GO_VERSION.linux-amd64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-amd64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-amd64.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:76d6fd52b1905bd392b44927f46670cfe692f11d3c93bf624febc33cf0a8d518" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:f53f65bed796012b6f30c156305ca3db0059def5bc7c4f2bf9feb0961dd16a0e" [label="mkdir{path=/go}" shape="note"];
  "sha256:f3cd56eda21b53b3462cc9eb1bde50fc4a0a16c39fea99c0fa4bc95fdbd03705" [label="sha256:f3cd56eda21b53b3462cc9eb1bde50fc4a0a16c39fea99c0fa4bc95fdbd03705" shape="plaintext"];
  "sha256:24acadcfbe463714e9f24459f3a75e6afbb241ae8fbfe1ffc789ac72096113ab" -> "sha256:ab00fd79d8aa8b02537b6220834d52980e513d98a637b6e066998a0ac7d1b4fc" [label=""];
  "sha256:ab00fd79d8aa8b02537b6220834d52980e513d98a637b6e066998a0ac7d1b4fc" -> "sha256:514757802f3bc27f33af644ea6b683a468bc30d7304412a2ada586909cf312b3" [label=""];
  "sha256:514757802f3bc27f33af644ea6b683a468bc30d7304412a2ada586909cf312b3" -> "sha256:76d6fd52b1905bd392b44927f46670cfe692f11d3c93bf624febc33cf0a8d518" [label=""];
  "sha256:76d6fd52b1905bd392b44927f46670cfe692f11d3c93bf624febc33cf0a8d518" -> "sha256:f53f65bed796012b6f30c156305ca3db0059def5bc7c4f2bf9feb0961dd16a0e" [label=""];
  "sha256:f53f65bed796012b6f30c156305ca3db0059def5bc7c4f2bf9feb0961dd16a0e" -> "sha256:f3cd56eda21b53b3462cc9eb1bde50fc4a0a16c39fea99c0fa4bc95fdbd03705" [label=""];
}

