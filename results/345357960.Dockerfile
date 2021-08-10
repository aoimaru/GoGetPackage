[app/sources/345357960.Dockerfile]
digraph {
  "sha256:adca4ab28b2a2c1064ad5eab8fc5b0befe2cdeceab697bc48c95da5108126151" [label="docker-image://docker.io/balenalib/raspberry-pi-debian:jessie-run" shape="ellipse"];
  "sha256:49f0358d2331680b46ed51fe8583b56fd1a2fce9cf9d67e019c25652a990e617" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:a172f218145df919911329c4770f4da2bbad0b1932576f735097734054902c14" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv6hf.tar.gz\" \t&& echo \"dddffd0d15eabf507c60a0c8ccad6c480f2ea441a9c3fb2733f1b3854ff77024  go$GO_VERSION.linux-armv6hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv6hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv6hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:d4f1685bda178b1a07f338fa007e11c5e043c3356f33ec67c53f584952b6e935" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:ca3e53708344800c326769bbbd0ee1bc11989148bdfbf25812e9a962a9258a51" [label="mkdir{path=/go}" shape="note"];
  "sha256:180b586f2dcb197ce1d335df1d6ade23a09772ca973edcadc4a0d61b3b0a4729" [label="sha256:180b586f2dcb197ce1d335df1d6ade23a09772ca973edcadc4a0d61b3b0a4729" shape="plaintext"];
  "sha256:adca4ab28b2a2c1064ad5eab8fc5b0befe2cdeceab697bc48c95da5108126151" -> "sha256:49f0358d2331680b46ed51fe8583b56fd1a2fce9cf9d67e019c25652a990e617" [label=""];
  "sha256:49f0358d2331680b46ed51fe8583b56fd1a2fce9cf9d67e019c25652a990e617" -> "sha256:a172f218145df919911329c4770f4da2bbad0b1932576f735097734054902c14" [label=""];
  "sha256:a172f218145df919911329c4770f4da2bbad0b1932576f735097734054902c14" -> "sha256:d4f1685bda178b1a07f338fa007e11c5e043c3356f33ec67c53f584952b6e935" [label=""];
  "sha256:d4f1685bda178b1a07f338fa007e11c5e043c3356f33ec67c53f584952b6e935" -> "sha256:ca3e53708344800c326769bbbd0ee1bc11989148bdfbf25812e9a962a9258a51" [label=""];
  "sha256:ca3e53708344800c326769bbbd0ee1bc11989148bdfbf25812e9a962a9258a51" -> "sha256:180b586f2dcb197ce1d335df1d6ade23a09772ca973edcadc4a0d61b3b0a4729" [label=""];
}

