[app/sources/345363185.Dockerfile]
digraph {
  "sha256:bd5fc74b201c74c5ea1525c437fe02e49667f81b0845628df826b5cf49ab132e" [label="docker-image://docker.io/balenalib/aarch64-ubuntu:trusty-run@sha256:5deefa4d668810d79ba94b13edf510e835decf30c47618c18b50fd5697f69b96" shape="ellipse"];
  "sha256:777b9f136589b3a3d015fb3641ac2592dd8fa019c8fb9dbb4dac6e2b2312955a" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:bf717d4f505d3b6491fece892ac882953c3136df8213d6e8f3c1c429a90bc6ca" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-aarch64.tar.gz\" \t&& echo \"8b000bee6c8e2512d79182b56b7023d83a9a297bf813a8565ebbee03d8fb2cd7  go$GO_VERSION.linux-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-aarch64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-aarch64.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:a9a40f92609ea96a96b50cab0ade537af87a5a15e27e5b380d39943cf9531625" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:e8140549a4af5431115e24ee052ad2b9d12e63309e7abda1c60bf5cf8bea2072" [label="mkdir{path=/go}" shape="note"];
  "sha256:d4fef2c1cd44593ee5e3c13f9546a28bb170f6b77a53f201a3c773f5c3345a50" [label="sha256:d4fef2c1cd44593ee5e3c13f9546a28bb170f6b77a53f201a3c773f5c3345a50" shape="plaintext"];
  "sha256:bd5fc74b201c74c5ea1525c437fe02e49667f81b0845628df826b5cf49ab132e" -> "sha256:777b9f136589b3a3d015fb3641ac2592dd8fa019c8fb9dbb4dac6e2b2312955a" [label=""];
  "sha256:777b9f136589b3a3d015fb3641ac2592dd8fa019c8fb9dbb4dac6e2b2312955a" -> "sha256:bf717d4f505d3b6491fece892ac882953c3136df8213d6e8f3c1c429a90bc6ca" [label=""];
  "sha256:bf717d4f505d3b6491fece892ac882953c3136df8213d6e8f3c1c429a90bc6ca" -> "sha256:a9a40f92609ea96a96b50cab0ade537af87a5a15e27e5b380d39943cf9531625" [label=""];
  "sha256:a9a40f92609ea96a96b50cab0ade537af87a5a15e27e5b380d39943cf9531625" -> "sha256:e8140549a4af5431115e24ee052ad2b9d12e63309e7abda1c60bf5cf8bea2072" [label=""];
  "sha256:e8140549a4af5431115e24ee052ad2b9d12e63309e7abda1c60bf5cf8bea2072" -> "sha256:d4fef2c1cd44593ee5e3c13f9546a28bb170f6b77a53f201a3c773f5c3345a50" [label=""];
}

