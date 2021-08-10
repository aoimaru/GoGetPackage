[app/sources/345370791.Dockerfile]
digraph {
  "sha256:0d6e0614a0aac94b1b0749dbd7cde680d2c76bd4903116ebcd3389dd40a188e2" [label="docker-image://docker.io/balenalib/beaglebone-fastenal-debian:jessie-run" shape="ellipse"];
  "sha256:c2b06c33c34009222ec230317db22b6ee4e0751ae282e730402c35215a312b79" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:8b96be06725dcf31becb7a0dfce1a22308f2abc6b10ae114ce12de5dfaaac394" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:7c0addf876915a135801f13f619f140ec55303d42b798fd20775df711f641e6c" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:6c90af33c5435f01800ed2a043320ae04137c2262e4724cc3e9dc9466cce794c" [label="mkdir{path=/go}" shape="note"];
  "sha256:798c0c052730765885cfa29d28b62260b19022965f15195203b5aef9d2ef32ed" [label="sha256:798c0c052730765885cfa29d28b62260b19022965f15195203b5aef9d2ef32ed" shape="plaintext"];
  "sha256:0d6e0614a0aac94b1b0749dbd7cde680d2c76bd4903116ebcd3389dd40a188e2" -> "sha256:c2b06c33c34009222ec230317db22b6ee4e0751ae282e730402c35215a312b79" [label=""];
  "sha256:c2b06c33c34009222ec230317db22b6ee4e0751ae282e730402c35215a312b79" -> "sha256:8b96be06725dcf31becb7a0dfce1a22308f2abc6b10ae114ce12de5dfaaac394" [label=""];
  "sha256:8b96be06725dcf31becb7a0dfce1a22308f2abc6b10ae114ce12de5dfaaac394" -> "sha256:7c0addf876915a135801f13f619f140ec55303d42b798fd20775df711f641e6c" [label=""];
  "sha256:7c0addf876915a135801f13f619f140ec55303d42b798fd20775df711f641e6c" -> "sha256:6c90af33c5435f01800ed2a043320ae04137c2262e4724cc3e9dc9466cce794c" [label=""];
  "sha256:6c90af33c5435f01800ed2a043320ae04137c2262e4724cc3e9dc9466cce794c" -> "sha256:798c0c052730765885cfa29d28b62260b19022965f15195203b5aef9d2ef32ed" [label=""];
}

