[app/sources/345368569.Dockerfile]
digraph {
  "sha256:1f527b0fb701a9e586f7caec0ed090fb1897c55c31e26eb996915e016748f238" [label="docker-image://docker.io/balenalib/beagleboard-xm-debian:buster-run" shape="ellipse"];
  "sha256:4a1575f2afa2e39c4f55467957b666ccee43caeac6df04905815f1b8f97a9dca" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:e8b0b561033f0fcdd3273bc356b22d23da095ff49469b48ddb3a96e03874589d" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:d68cdb49327fca60e739a87d7c53c4a460697655a6a62426d5fbeb2ff3943f7d" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:2a7d306334073baa16705e95266b63377e16159a0866645d9f4ed39ce3ad7085" [label="mkdir{path=/go}" shape="note"];
  "sha256:7fdc595b7b0868b8123ea471bf2656eca3eb9663ec3dc588017446c6614b6283" [label="sha256:7fdc595b7b0868b8123ea471bf2656eca3eb9663ec3dc588017446c6614b6283" shape="plaintext"];
  "sha256:1f527b0fb701a9e586f7caec0ed090fb1897c55c31e26eb996915e016748f238" -> "sha256:4a1575f2afa2e39c4f55467957b666ccee43caeac6df04905815f1b8f97a9dca" [label=""];
  "sha256:4a1575f2afa2e39c4f55467957b666ccee43caeac6df04905815f1b8f97a9dca" -> "sha256:e8b0b561033f0fcdd3273bc356b22d23da095ff49469b48ddb3a96e03874589d" [label=""];
  "sha256:e8b0b561033f0fcdd3273bc356b22d23da095ff49469b48ddb3a96e03874589d" -> "sha256:d68cdb49327fca60e739a87d7c53c4a460697655a6a62426d5fbeb2ff3943f7d" [label=""];
  "sha256:d68cdb49327fca60e739a87d7c53c4a460697655a6a62426d5fbeb2ff3943f7d" -> "sha256:2a7d306334073baa16705e95266b63377e16159a0866645d9f4ed39ce3ad7085" [label=""];
  "sha256:2a7d306334073baa16705e95266b63377e16159a0866645d9f4ed39ce3ad7085" -> "sha256:7fdc595b7b0868b8123ea471bf2656eca3eb9663ec3dc588017446c6614b6283" [label=""];
}

