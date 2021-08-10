[app/sources/345358288.Dockerfile]
digraph {
  "sha256:81270ba761fb4420ee3b6e5dc003eb8f41cc8d0f8ed49625483114b8b55964b4" [label="docker-image://docker.io/balenalib/raspberrypi3-ubuntu:cosmic-run" shape="ellipse"];
  "sha256:82889286a86d4acb79e00ad286eadb4cc4337540393792c04c2437a108a31e80" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:06e7fabf27adfa8cafc1dbee32efe5b753a74cc50eade7f130bd9127dfcc37ef" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:2614c4259d5f00ed09169b5814d54832db90eb0c3137c9193b2b9b8897eadfc2" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:f70c636ab08638e0e7f5dadae87dce4d04ed82205b743d25c3c5082f2d1ba5eb" [label="mkdir{path=/go}" shape="note"];
  "sha256:fb331141c7803d2c09986a2219d9f97738ea57f596eb84f868f716ddbd2a47ff" [label="sha256:fb331141c7803d2c09986a2219d9f97738ea57f596eb84f868f716ddbd2a47ff" shape="plaintext"];
  "sha256:81270ba761fb4420ee3b6e5dc003eb8f41cc8d0f8ed49625483114b8b55964b4" -> "sha256:82889286a86d4acb79e00ad286eadb4cc4337540393792c04c2437a108a31e80" [label=""];
  "sha256:82889286a86d4acb79e00ad286eadb4cc4337540393792c04c2437a108a31e80" -> "sha256:06e7fabf27adfa8cafc1dbee32efe5b753a74cc50eade7f130bd9127dfcc37ef" [label=""];
  "sha256:06e7fabf27adfa8cafc1dbee32efe5b753a74cc50eade7f130bd9127dfcc37ef" -> "sha256:2614c4259d5f00ed09169b5814d54832db90eb0c3137c9193b2b9b8897eadfc2" [label=""];
  "sha256:2614c4259d5f00ed09169b5814d54832db90eb0c3137c9193b2b9b8897eadfc2" -> "sha256:f70c636ab08638e0e7f5dadae87dce4d04ed82205b743d25c3c5082f2d1ba5eb" [label=""];
  "sha256:f70c636ab08638e0e7f5dadae87dce4d04ed82205b743d25c3c5082f2d1ba5eb" -> "sha256:fb331141c7803d2c09986a2219d9f97738ea57f596eb84f868f716ddbd2a47ff" [label=""];
}

