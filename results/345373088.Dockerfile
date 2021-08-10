[app/sources/345373088.Dockerfile]
digraph {
  "sha256:a063e9acc5698b8c1735b36840338d631686354c494ce445264eed7c4b91dc4b" [label="docker-image://docker.io/balenalib/iot2000-ubuntu:trusty-run" shape="ellipse"];
  "sha256:9a6f7452ae38e0f028e48e5bf0dd4f9d1f4777b4954470ec954ac7ad6314dceb" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:6108cd58af3445b97859b353b9b7dd78719a30b7ab791da27dac68dc0cf970f4" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-i386-nlp.tar.gz\" \t&& echo \"2558e34e8e2aa952ce4505fc97872c3ef9fa8c25bcd8cab15d0026cc2e91ec30  go$GO_VERSION.linux-i386-nlp.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-i386-nlp.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-i386-nlp.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:52262814858f60db513bda7b93e963a83337f8031b254d34b8c8d655fcae5914" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:ff25d7c0d4ff347a32ef3b2f263b359598bdf3a0b6cb565b38e597f315db8edf" [label="mkdir{path=/go}" shape="note"];
  "sha256:16a34eda510cfbdf02c1a021d6d1f2e57a18713ed8b0cca142cc7fb313ddd584" [label="sha256:16a34eda510cfbdf02c1a021d6d1f2e57a18713ed8b0cca142cc7fb313ddd584" shape="plaintext"];
  "sha256:a063e9acc5698b8c1735b36840338d631686354c494ce445264eed7c4b91dc4b" -> "sha256:9a6f7452ae38e0f028e48e5bf0dd4f9d1f4777b4954470ec954ac7ad6314dceb" [label=""];
  "sha256:9a6f7452ae38e0f028e48e5bf0dd4f9d1f4777b4954470ec954ac7ad6314dceb" -> "sha256:6108cd58af3445b97859b353b9b7dd78719a30b7ab791da27dac68dc0cf970f4" [label=""];
  "sha256:6108cd58af3445b97859b353b9b7dd78719a30b7ab791da27dac68dc0cf970f4" -> "sha256:52262814858f60db513bda7b93e963a83337f8031b254d34b8c8d655fcae5914" [label=""];
  "sha256:52262814858f60db513bda7b93e963a83337f8031b254d34b8c8d655fcae5914" -> "sha256:ff25d7c0d4ff347a32ef3b2f263b359598bdf3a0b6cb565b38e597f315db8edf" [label=""];
  "sha256:ff25d7c0d4ff347a32ef3b2f263b359598bdf3a0b6cb565b38e597f315db8edf" -> "sha256:16a34eda510cfbdf02c1a021d6d1f2e57a18713ed8b0cca142cc7fb313ddd584" [label=""];
}

