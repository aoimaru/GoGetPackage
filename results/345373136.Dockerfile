[app/sources/345373136.Dockerfile]
digraph {
  "sha256:41bb750ab4cc9608d2b4a26e82203e6d2b586679c157fcf17f9e23036f009b80" [label="docker-image://docker.io/balenalib/jetson-nano-debian:buster-run" shape="ellipse"];
  "sha256:b6d3200c71730c8baa9175cfeec64aa83f837d0321e6a2a86c8f759c4ad4ce99" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:e7238c9555a0bb4da726404f48772c1342828a85b00c8ef998e4d42e55298a2a" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-arm64.tar.gz\" \t&& echo \"6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8  go$GO_VERSION.linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-arm64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-arm64.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:ea20d7742750b377e9fba271bd74c257cc60c00aac590612dfa472d40bc9ec79" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:2556b5884ca37c66ad862f44cedd46c4c6eb91c66d3ed6762ed95e8747c25160" [label="mkdir{path=/go}" shape="note"];
  "sha256:8ba91172f60af42080261d52bcfdf9c55e95bfaedd27a0289b2f98d813ed54f6" [label="sha256:8ba91172f60af42080261d52bcfdf9c55e95bfaedd27a0289b2f98d813ed54f6" shape="plaintext"];
  "sha256:41bb750ab4cc9608d2b4a26e82203e6d2b586679c157fcf17f9e23036f009b80" -> "sha256:b6d3200c71730c8baa9175cfeec64aa83f837d0321e6a2a86c8f759c4ad4ce99" [label=""];
  "sha256:b6d3200c71730c8baa9175cfeec64aa83f837d0321e6a2a86c8f759c4ad4ce99" -> "sha256:e7238c9555a0bb4da726404f48772c1342828a85b00c8ef998e4d42e55298a2a" [label=""];
  "sha256:e7238c9555a0bb4da726404f48772c1342828a85b00c8ef998e4d42e55298a2a" -> "sha256:ea20d7742750b377e9fba271bd74c257cc60c00aac590612dfa472d40bc9ec79" [label=""];
  "sha256:ea20d7742750b377e9fba271bd74c257cc60c00aac590612dfa472d40bc9ec79" -> "sha256:2556b5884ca37c66ad862f44cedd46c4c6eb91c66d3ed6762ed95e8747c25160" [label=""];
  "sha256:2556b5884ca37c66ad862f44cedd46c4c6eb91c66d3ed6762ed95e8747c25160" -> "sha256:8ba91172f60af42080261d52bcfdf9c55e95bfaedd27a0289b2f98d813ed54f6" [label=""];
}

