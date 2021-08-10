[app/sources/345368461.Dockerfile]
digraph {
  "sha256:9de78f0df3570305ebfc5c807a912e4225e26e42ed030750e595da9ddfe19b59" [label="docker-image://docker.io/balenalib/bananapi-m1-plus-debian:buster-run" shape="ellipse"];
  "sha256:1934b8d061f6b1919c8439f05c6b664c420df9924962e75f89355f8b9c9d333f" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:a2751b2d6ab7bf7d80c4cfb330f534a1b6cc79dce54857ffe99eaec1575f1c77" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:1203bc1a4f18a22f76a5dd9a91c06ddda1c1924a2388bdde8459549d9ba4a601" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:3ccda494ab32080748bba368eec577c94aac38026f2cffce0d788599f2c8dd6e" [label="mkdir{path=/go}" shape="note"];
  "sha256:ef8e38d144a2713dd997037a859ccdd02755e6286b8b892217a6909820510bf3" [label="sha256:ef8e38d144a2713dd997037a859ccdd02755e6286b8b892217a6909820510bf3" shape="plaintext"];
  "sha256:9de78f0df3570305ebfc5c807a912e4225e26e42ed030750e595da9ddfe19b59" -> "sha256:1934b8d061f6b1919c8439f05c6b664c420df9924962e75f89355f8b9c9d333f" [label=""];
  "sha256:1934b8d061f6b1919c8439f05c6b664c420df9924962e75f89355f8b9c9d333f" -> "sha256:a2751b2d6ab7bf7d80c4cfb330f534a1b6cc79dce54857ffe99eaec1575f1c77" [label=""];
  "sha256:a2751b2d6ab7bf7d80c4cfb330f534a1b6cc79dce54857ffe99eaec1575f1c77" -> "sha256:1203bc1a4f18a22f76a5dd9a91c06ddda1c1924a2388bdde8459549d9ba4a601" [label=""];
  "sha256:1203bc1a4f18a22f76a5dd9a91c06ddda1c1924a2388bdde8459549d9ba4a601" -> "sha256:3ccda494ab32080748bba368eec577c94aac38026f2cffce0d788599f2c8dd6e" [label=""];
  "sha256:3ccda494ab32080748bba368eec577c94aac38026f2cffce0d788599f2c8dd6e" -> "sha256:ef8e38d144a2713dd997037a859ccdd02755e6286b8b892217a6909820510bf3" [label=""];
}

