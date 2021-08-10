[app/sources/345358294.Dockerfile]
digraph {
  "sha256:d5765d58fc88fa32d8600f7ce8fc098abeb4bdd991ab31b86529043719c294a5" [label="docker-image://docker.io/balenalib/raspberrypi3-ubuntu:trusty-run" shape="ellipse"];
  "sha256:a92df38cf1efefeb82f86132386735ae5f00397afa429757fd9d0c84cff8abb5" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:c2cc81af1f6712403a9b0c769bb20cefefbe7ef377f8d15616fb9169d90c14c2" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:c36dbe5943914f0f242734ab0f9741776392a945c83a24997238eac4f201b2c5" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:935941419a9e3ca0bf1d6a70f815cb58d5654219c840748754db3198761ff334" [label="mkdir{path=/go}" shape="note"];
  "sha256:f53fb2409b620ac9066259c251ecc874328815bbf3729fe50aed8f7a9fd2b40c" [label="sha256:f53fb2409b620ac9066259c251ecc874328815bbf3729fe50aed8f7a9fd2b40c" shape="plaintext"];
  "sha256:d5765d58fc88fa32d8600f7ce8fc098abeb4bdd991ab31b86529043719c294a5" -> "sha256:a92df38cf1efefeb82f86132386735ae5f00397afa429757fd9d0c84cff8abb5" [label=""];
  "sha256:a92df38cf1efefeb82f86132386735ae5f00397afa429757fd9d0c84cff8abb5" -> "sha256:c2cc81af1f6712403a9b0c769bb20cefefbe7ef377f8d15616fb9169d90c14c2" [label=""];
  "sha256:c2cc81af1f6712403a9b0c769bb20cefefbe7ef377f8d15616fb9169d90c14c2" -> "sha256:c36dbe5943914f0f242734ab0f9741776392a945c83a24997238eac4f201b2c5" [label=""];
  "sha256:c36dbe5943914f0f242734ab0f9741776392a945c83a24997238eac4f201b2c5" -> "sha256:935941419a9e3ca0bf1d6a70f815cb58d5654219c840748754db3198761ff334" [label=""];
  "sha256:935941419a9e3ca0bf1d6a70f815cb58d5654219c840748754db3198761ff334" -> "sha256:f53fb2409b620ac9066259c251ecc874328815bbf3729fe50aed8f7a9fd2b40c" [label=""];
}

