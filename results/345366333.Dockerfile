[app/sources/345366333.Dockerfile]
digraph {
  "sha256:11ea557b8e2e8068f00b2f5b8987726073ed3451cf1e91a6ac93010a5f9afcd2" [label="docker-image://docker.io/balenalib/i386-debian:stretch-run" shape="ellipse"];
  "sha256:97ce419f9a5b97d5b0bde303a5dd20a13ecf1816ff69c5dcd6899afd7c3cce7d" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:7f09cfffcdfac609ade2bb64296568fc0f6168b2d943326db9b740eb6a5ab590" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-386.tar.gz\" \t&& echo \"146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980  go$GO_VERSION.linux-386.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-386.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-386.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:d69ed34a30a15fc5c7d73fb474d229bb75d75c28d9988ae795f2e623be7f3aa8" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:524a8e76952dafcac612c6fda9dd298508c78eb5344ab5a953a46927f6372514" [label="mkdir{path=/go}" shape="note"];
  "sha256:13221098cacb7d82fe60c6dfba10caf24d5a66a8c0acfee2a9683112fc787586" [label="sha256:13221098cacb7d82fe60c6dfba10caf24d5a66a8c0acfee2a9683112fc787586" shape="plaintext"];
  "sha256:11ea557b8e2e8068f00b2f5b8987726073ed3451cf1e91a6ac93010a5f9afcd2" -> "sha256:97ce419f9a5b97d5b0bde303a5dd20a13ecf1816ff69c5dcd6899afd7c3cce7d" [label=""];
  "sha256:97ce419f9a5b97d5b0bde303a5dd20a13ecf1816ff69c5dcd6899afd7c3cce7d" -> "sha256:7f09cfffcdfac609ade2bb64296568fc0f6168b2d943326db9b740eb6a5ab590" [label=""];
  "sha256:7f09cfffcdfac609ade2bb64296568fc0f6168b2d943326db9b740eb6a5ab590" -> "sha256:d69ed34a30a15fc5c7d73fb474d229bb75d75c28d9988ae795f2e623be7f3aa8" [label=""];
  "sha256:d69ed34a30a15fc5c7d73fb474d229bb75d75c28d9988ae795f2e623be7f3aa8" -> "sha256:524a8e76952dafcac612c6fda9dd298508c78eb5344ab5a953a46927f6372514" [label=""];
  "sha256:524a8e76952dafcac612c6fda9dd298508c78eb5344ab5a953a46927f6372514" -> "sha256:13221098cacb7d82fe60c6dfba10caf24d5a66a8c0acfee2a9683112fc787586" [label=""];
}

