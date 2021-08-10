[app/sources/345370955.Dockerfile]
digraph {
  "sha256:c19cb6fb41878efd1fc48a7da16248e4d84982f07ee66d3c2b9c4edef4b5b22d" [label="docker-image://docker.io/balenalib/beaglebone-green-wifi-ubuntu:xenial-run" shape="ellipse"];
  "sha256:818ec1196abe0a677ddeb8478eef2b8cc63cc39906379faaaf73fa92a0e760a8" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:766f18b3688a4f6160fe8e316fcd776778f6797ddb0dc6200769a63dff83f601" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:3c827084cd5f04c9c9c52d2f7ace464706575e4bb9f29e87ffc545a06d814f42" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:7fd28a5c7948bef0b5268dc66d9fa5f70d3e75a77735e6d62ce8e22317d08408" [label="mkdir{path=/go}" shape="note"];
  "sha256:126193c5b45789a85406c8844feac3eaed77135a6fa8510e4894684efe53ac46" [label="sha256:126193c5b45789a85406c8844feac3eaed77135a6fa8510e4894684efe53ac46" shape="plaintext"];
  "sha256:c19cb6fb41878efd1fc48a7da16248e4d84982f07ee66d3c2b9c4edef4b5b22d" -> "sha256:818ec1196abe0a677ddeb8478eef2b8cc63cc39906379faaaf73fa92a0e760a8" [label=""];
  "sha256:818ec1196abe0a677ddeb8478eef2b8cc63cc39906379faaaf73fa92a0e760a8" -> "sha256:766f18b3688a4f6160fe8e316fcd776778f6797ddb0dc6200769a63dff83f601" [label=""];
  "sha256:766f18b3688a4f6160fe8e316fcd776778f6797ddb0dc6200769a63dff83f601" -> "sha256:3c827084cd5f04c9c9c52d2f7ace464706575e4bb9f29e87ffc545a06d814f42" [label=""];
  "sha256:3c827084cd5f04c9c9c52d2f7ace464706575e4bb9f29e87ffc545a06d814f42" -> "sha256:7fd28a5c7948bef0b5268dc66d9fa5f70d3e75a77735e6d62ce8e22317d08408" [label=""];
  "sha256:7fd28a5c7948bef0b5268dc66d9fa5f70d3e75a77735e6d62ce8e22317d08408" -> "sha256:126193c5b45789a85406c8844feac3eaed77135a6fa8510e4894684efe53ac46" [label=""];
}

