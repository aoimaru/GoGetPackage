[app/sources/345368681.Dockerfile]
digraph {
  "sha256:c6ea352471662511dbd6cd5288d17ee4e71f8723b4ed9a32477ae490bcad8f69" [label="docker-image://docker.io/balenalib/beaglebone-black-debian:jessie-run" shape="ellipse"];
  "sha256:b8038084a3b9b5eee4ff5485d3475b2dc292e581fe8faa746b063902617408ea" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:d72dcb84bcfbff44d4cd27b6b4bb75561ccd5efa5c87c024323fe1c87e594e87" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f8a06c2832ca01001d0ffc68a44a2d4c569285cd485a0a61ee7169bc87adbb0f  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:e76eab4aa802517495b8b5dc55a0b1577750023eb8bbf20a6ca790da7e3bcb08" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:79739c1fc0cbf6ba8cf2e743924c3ec09a5244777d0a92e5d1d6cff88a5fdfeb" [label="mkdir{path=/go}" shape="note"];
  "sha256:f81a1f9d2639422a2e5d3a06b7c4bedb1c659cfd807bfa522f8799c761111c3f" [label="sha256:f81a1f9d2639422a2e5d3a06b7c4bedb1c659cfd807bfa522f8799c761111c3f" shape="plaintext"];
  "sha256:c6ea352471662511dbd6cd5288d17ee4e71f8723b4ed9a32477ae490bcad8f69" -> "sha256:b8038084a3b9b5eee4ff5485d3475b2dc292e581fe8faa746b063902617408ea" [label=""];
  "sha256:b8038084a3b9b5eee4ff5485d3475b2dc292e581fe8faa746b063902617408ea" -> "sha256:d72dcb84bcfbff44d4cd27b6b4bb75561ccd5efa5c87c024323fe1c87e594e87" [label=""];
  "sha256:d72dcb84bcfbff44d4cd27b6b4bb75561ccd5efa5c87c024323fe1c87e594e87" -> "sha256:e76eab4aa802517495b8b5dc55a0b1577750023eb8bbf20a6ca790da7e3bcb08" [label=""];
  "sha256:e76eab4aa802517495b8b5dc55a0b1577750023eb8bbf20a6ca790da7e3bcb08" -> "sha256:79739c1fc0cbf6ba8cf2e743924c3ec09a5244777d0a92e5d1d6cff88a5fdfeb" [label=""];
  "sha256:79739c1fc0cbf6ba8cf2e743924c3ec09a5244777d0a92e5d1d6cff88a5fdfeb" -> "sha256:f81a1f9d2639422a2e5d3a06b7c4bedb1c659cfd807bfa522f8799c761111c3f" [label=""];
}

