[app/sources/345360722.Dockerfile]
digraph {
  "sha256:eefcd7be0a8079c9810cfe92e30975bb1e04e649b69f2210a36eda3b9adf247e" [label="docker-image://docker.io/balenalib/surface-pro-6-debian:stretch-run" shape="ellipse"];
  "sha256:3b62acd6da36c8ccc02bc080f87d885550ee20319632114870129fe212e8c28e" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:0159a5698bbda6d74ac473d51679eb3afd756a0c9ba92ec9fed5f697eaa98197" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-amd64.tar.gz\" \t&& echo \"d8626fb6f9a3ab397d88c483b576be41fa81eefcec2fd18562c87626dbb3c39e  go$GO_VERSION.linux-amd64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-amd64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-amd64.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:4a4b5c68fc4affd5a4b6cd4937c0c1fa5bad6cdde5bc6e8d6963e5add3223e33" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:dbaf65638c288dfdf84aec065b3fd3bbab13dad9896d86779a4fe613aa86381f" [label="mkdir{path=/go}" shape="note"];
  "sha256:705c8737348832c132883d56c5dd27c17716e464dfbaf7677a7e585d6adce030" [label="sha256:705c8737348832c132883d56c5dd27c17716e464dfbaf7677a7e585d6adce030" shape="plaintext"];
  "sha256:eefcd7be0a8079c9810cfe92e30975bb1e04e649b69f2210a36eda3b9adf247e" -> "sha256:3b62acd6da36c8ccc02bc080f87d885550ee20319632114870129fe212e8c28e" [label=""];
  "sha256:3b62acd6da36c8ccc02bc080f87d885550ee20319632114870129fe212e8c28e" -> "sha256:0159a5698bbda6d74ac473d51679eb3afd756a0c9ba92ec9fed5f697eaa98197" [label=""];
  "sha256:0159a5698bbda6d74ac473d51679eb3afd756a0c9ba92ec9fed5f697eaa98197" -> "sha256:4a4b5c68fc4affd5a4b6cd4937c0c1fa5bad6cdde5bc6e8d6963e5add3223e33" [label=""];
  "sha256:4a4b5c68fc4affd5a4b6cd4937c0c1fa5bad6cdde5bc6e8d6963e5add3223e33" -> "sha256:dbaf65638c288dfdf84aec065b3fd3bbab13dad9896d86779a4fe613aa86381f" [label=""];
  "sha256:dbaf65638c288dfdf84aec065b3fd3bbab13dad9896d86779a4fe613aa86381f" -> "sha256:705c8737348832c132883d56c5dd27c17716e464dfbaf7677a7e585d6adce030" [label=""];
}

