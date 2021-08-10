[app/sources/345357244.Dockerfile]
digraph {
  "sha256:d4cc56ce9d12bdff56d661e93fcc4fe1648b3f60cdc458fedc6c1fbfba487a46" [label="docker-image://docker.io/balenalib/orangepi-plus2-ubuntu:bionic-run" shape="ellipse"];
  "sha256:58506ea1cad8a96b2b189054b538d52ff322aba7c6601c89a4e75c05b31dfc56" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:fc0bf4676cdfd095ed24826ee86f910be5c6c4aeb006c15bc4a2b1f981a3aba7" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:05e2a6a987f8239093e5cbf61ab80b0a4f43b73a7fbb9f633b446862ec52f3e8" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:8605ab4e266f824d68c590937dac62a8cdcbffb1f8f01e5f3bf3d19c3862d49e" [label="mkdir{path=/go}" shape="note"];
  "sha256:8cd05cc1cb5b5f7e9f9d13175755f01210e7f4b85626303f2e1b75a857288281" [label="sha256:8cd05cc1cb5b5f7e9f9d13175755f01210e7f4b85626303f2e1b75a857288281" shape="plaintext"];
  "sha256:d4cc56ce9d12bdff56d661e93fcc4fe1648b3f60cdc458fedc6c1fbfba487a46" -> "sha256:58506ea1cad8a96b2b189054b538d52ff322aba7c6601c89a4e75c05b31dfc56" [label=""];
  "sha256:58506ea1cad8a96b2b189054b538d52ff322aba7c6601c89a4e75c05b31dfc56" -> "sha256:fc0bf4676cdfd095ed24826ee86f910be5c6c4aeb006c15bc4a2b1f981a3aba7" [label=""];
  "sha256:fc0bf4676cdfd095ed24826ee86f910be5c6c4aeb006c15bc4a2b1f981a3aba7" -> "sha256:05e2a6a987f8239093e5cbf61ab80b0a4f43b73a7fbb9f633b446862ec52f3e8" [label=""];
  "sha256:05e2a6a987f8239093e5cbf61ab80b0a4f43b73a7fbb9f633b446862ec52f3e8" -> "sha256:8605ab4e266f824d68c590937dac62a8cdcbffb1f8f01e5f3bf3d19c3862d49e" [label=""];
  "sha256:8605ab4e266f824d68c590937dac62a8cdcbffb1f8f01e5f3bf3d19c3862d49e" -> "sha256:8cd05cc1cb5b5f7e9f9d13175755f01210e7f4b85626303f2e1b75a857288281" [label=""];
}

