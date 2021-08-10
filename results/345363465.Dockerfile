[app/sources/345363465.Dockerfile]
digraph {
  "sha256:5037694d6547162d18b13dfae1ac27d281221b30b76bd1f87cf1a4ae5b3716d0" [label="docker-image://docker.io/balenalib/apalis-imx6q-debian:jessie-run" shape="ellipse"];
  "sha256:c89e8a586046abf15760a0c362f8670e64a62b5d057c408c822cf97d9e9e2fe1" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:97fbac29cc8f3c3615b91ae6885cbbb73686eded0877459dc5bb0039179b3722" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:0f96375dd84e318e20a65c03bd15aeb22954ca9cd7533340d23386655315c4eb" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:2ae9fc2387b667543c24907403cff4f84e75d4ca0ccf29b19e3c206458dbf40f" [label="mkdir{path=/go}" shape="note"];
  "sha256:b0e8fd87e0ea66e77c87a99c121e442f7aaa606652a5c163b72ef741b7ce95ac" [label="sha256:b0e8fd87e0ea66e77c87a99c121e442f7aaa606652a5c163b72ef741b7ce95ac" shape="plaintext"];
  "sha256:5037694d6547162d18b13dfae1ac27d281221b30b76bd1f87cf1a4ae5b3716d0" -> "sha256:c89e8a586046abf15760a0c362f8670e64a62b5d057c408c822cf97d9e9e2fe1" [label=""];
  "sha256:c89e8a586046abf15760a0c362f8670e64a62b5d057c408c822cf97d9e9e2fe1" -> "sha256:97fbac29cc8f3c3615b91ae6885cbbb73686eded0877459dc5bb0039179b3722" [label=""];
  "sha256:97fbac29cc8f3c3615b91ae6885cbbb73686eded0877459dc5bb0039179b3722" -> "sha256:0f96375dd84e318e20a65c03bd15aeb22954ca9cd7533340d23386655315c4eb" [label=""];
  "sha256:0f96375dd84e318e20a65c03bd15aeb22954ca9cd7533340d23386655315c4eb" -> "sha256:2ae9fc2387b667543c24907403cff4f84e75d4ca0ccf29b19e3c206458dbf40f" [label=""];
  "sha256:2ae9fc2387b667543c24907403cff4f84e75d4ca0ccf29b19e3c206458dbf40f" -> "sha256:b0e8fd87e0ea66e77c87a99c121e442f7aaa606652a5c163b72ef741b7ce95ac" [label=""];
}

