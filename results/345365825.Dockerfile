[app/sources/345365825.Dockerfile]
digraph {
  "sha256:75c829c31556e97664a6d4611c7fdb6383ee74901de2da957fb0a005ddccef91" [label="docker-image://docker.io/balenalib/fincm3-debian:jessie-run" shape="ellipse"];
  "sha256:7728d7f5bcfe8c69414b60f266060734ff124f03dc4ee4113e2c181a4e95a104" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:07cc5caf5717e0356b82e220c82596700e884b23dfa4aac71e4fadafc0ed7a42" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:1ad99a76eb92af6bcde831953840aaea7a1a41802dbbb5ccf1ac7102b186b483" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:4869222c1eda0d1db1ff17cfd3a5fad073c3dd10f0ca11479dd6a19bf2f0f162" [label="mkdir{path=/go}" shape="note"];
  "sha256:f91713c2ffe80817225e955799e73ec03d11ccb11b489df42e3ebeb9281aff73" [label="sha256:f91713c2ffe80817225e955799e73ec03d11ccb11b489df42e3ebeb9281aff73" shape="plaintext"];
  "sha256:75c829c31556e97664a6d4611c7fdb6383ee74901de2da957fb0a005ddccef91" -> "sha256:7728d7f5bcfe8c69414b60f266060734ff124f03dc4ee4113e2c181a4e95a104" [label=""];
  "sha256:7728d7f5bcfe8c69414b60f266060734ff124f03dc4ee4113e2c181a4e95a104" -> "sha256:07cc5caf5717e0356b82e220c82596700e884b23dfa4aac71e4fadafc0ed7a42" [label=""];
  "sha256:07cc5caf5717e0356b82e220c82596700e884b23dfa4aac71e4fadafc0ed7a42" -> "sha256:1ad99a76eb92af6bcde831953840aaea7a1a41802dbbb5ccf1ac7102b186b483" [label=""];
  "sha256:1ad99a76eb92af6bcde831953840aaea7a1a41802dbbb5ccf1ac7102b186b483" -> "sha256:4869222c1eda0d1db1ff17cfd3a5fad073c3dd10f0ca11479dd6a19bf2f0f162" [label=""];
  "sha256:4869222c1eda0d1db1ff17cfd3a5fad073c3dd10f0ca11479dd6a19bf2f0f162" -> "sha256:f91713c2ffe80817225e955799e73ec03d11ccb11b489df42e3ebeb9281aff73" [label=""];
}

