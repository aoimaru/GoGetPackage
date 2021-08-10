[app/sources/345366165.Dockerfile]
digraph {
  "sha256:6e4cd4cf53f98debf68f49e80ab963d57233cdb39ad95f33ed36cfce1e5d670e" [label="docker-image://docker.io/balenalib/hummingboard-debian:sid-run" shape="ellipse"];
  "sha256:a532530ef4c4b2b93f4762719668978042b7a182bf13dbf39528f6dcd34eb017" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:f113ae074c0b1912561d9195ef96f7d978f5c1ecb612e84380f5ab18fb2e52da" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:6404973b05eb66fd70afa5e147cddf17bb02edd5935122746fb168e3e2faee4b" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:9b6c7cf6435ee328cbf2380991c4cfed89c76823d9ea7a9481ae7f7a1a7a510f" [label="mkdir{path=/go}" shape="note"];
  "sha256:fd03936ed90023e0dc60d4f07675d929a2c5609db016d2a515198ecc87a23a9b" [label="sha256:fd03936ed90023e0dc60d4f07675d929a2c5609db016d2a515198ecc87a23a9b" shape="plaintext"];
  "sha256:6e4cd4cf53f98debf68f49e80ab963d57233cdb39ad95f33ed36cfce1e5d670e" -> "sha256:a532530ef4c4b2b93f4762719668978042b7a182bf13dbf39528f6dcd34eb017" [label=""];
  "sha256:a532530ef4c4b2b93f4762719668978042b7a182bf13dbf39528f6dcd34eb017" -> "sha256:f113ae074c0b1912561d9195ef96f7d978f5c1ecb612e84380f5ab18fb2e52da" [label=""];
  "sha256:f113ae074c0b1912561d9195ef96f7d978f5c1ecb612e84380f5ab18fb2e52da" -> "sha256:6404973b05eb66fd70afa5e147cddf17bb02edd5935122746fb168e3e2faee4b" [label=""];
  "sha256:6404973b05eb66fd70afa5e147cddf17bb02edd5935122746fb168e3e2faee4b" -> "sha256:9b6c7cf6435ee328cbf2380991c4cfed89c76823d9ea7a9481ae7f7a1a7a510f" [label=""];
  "sha256:9b6c7cf6435ee328cbf2380991c4cfed89c76823d9ea7a9481ae7f7a1a7a510f" -> "sha256:fd03936ed90023e0dc60d4f07675d929a2c5609db016d2a515198ecc87a23a9b" [label=""];
}

