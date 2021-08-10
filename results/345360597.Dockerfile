[app/sources/345360597.Dockerfile]
digraph {
  "sha256:5746f61525f9d0b87573f684bb0935e5680029a3f5aee282c32bd3177c6a150b" [label="docker-image://docker.io/balenalib/stem-x86-32-ubuntu:xenial-run" shape="ellipse"];
  "sha256:d9b8830a389e8e288e03875d6a07413bd1e4199a268ac40c44020275b2252a75" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:a4a01b653b7edd441672b21793f8ef3f010f902078cb76e3d1975d7c340a390b" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-386.tar.gz\" \t&& echo \"10202da0b7f2a0f2c2ec4dd65375584dd829ce88ccc58e5fe1fa1352e69fecaf  go$GO_VERSION.linux-386.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-386.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-386.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:1d753a1da06eae49e715418a7e9580d2bbbf94ec3c86d722c786ccfccf4f71f1" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:16b8c6971c794730c0481b4fdfe21971e27d0ea3d0371883f350100b0e8fc6bb" [label="mkdir{path=/go}" shape="note"];
  "sha256:3e4d434dcb59c7ef82b40d7b4221b8256445ab0af074014b5e784d6739efa69c" [label="sha256:3e4d434dcb59c7ef82b40d7b4221b8256445ab0af074014b5e784d6739efa69c" shape="plaintext"];
  "sha256:5746f61525f9d0b87573f684bb0935e5680029a3f5aee282c32bd3177c6a150b" -> "sha256:d9b8830a389e8e288e03875d6a07413bd1e4199a268ac40c44020275b2252a75" [label=""];
  "sha256:d9b8830a389e8e288e03875d6a07413bd1e4199a268ac40c44020275b2252a75" -> "sha256:a4a01b653b7edd441672b21793f8ef3f010f902078cb76e3d1975d7c340a390b" [label=""];
  "sha256:a4a01b653b7edd441672b21793f8ef3f010f902078cb76e3d1975d7c340a390b" -> "sha256:1d753a1da06eae49e715418a7e9580d2bbbf94ec3c86d722c786ccfccf4f71f1" [label=""];
  "sha256:1d753a1da06eae49e715418a7e9580d2bbbf94ec3c86d722c786ccfccf4f71f1" -> "sha256:16b8c6971c794730c0481b4fdfe21971e27d0ea3d0371883f350100b0e8fc6bb" [label=""];
  "sha256:16b8c6971c794730c0481b4fdfe21971e27d0ea3d0371883f350100b0e8fc6bb" -> "sha256:3e4d434dcb59c7ef82b40d7b4221b8256445ab0af074014b5e784d6739efa69c" [label=""];
}

