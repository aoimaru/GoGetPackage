[app/sources/345375046.Dockerfile]
digraph {
  "sha256:0eba0d7132e43e7b9ba1e79ba07ee4a4b62f2f931edc43fddd66f20ec4e3d143" [label="docker-image://docker.io/balenalib/nitrogen6x-debian:sid-run" shape="ellipse"];
  "sha256:2ffa6e450ce60d59b46f79fc5b4c0ecdb1527355871a046a49d4185871cf761e" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:5c7dcc1d3b9bc2568ee997cc0ecc305b706e54483a9edfbe34d8d42d4b56fd1a" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:785a83d101d4b2a24c3def369e811c3c1f2faf8de3b52ab38ad0bbf451dee165" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:ef8602ab960560755b316a5693f1e062d8c167b3c90d7938474901f68473c366" [label="mkdir{path=/go}" shape="note"];
  "sha256:5cd35b35dfe61345dc1ee10c39fd20580f95b079c4d2818e023e0821eabed51c" [label="sha256:5cd35b35dfe61345dc1ee10c39fd20580f95b079c4d2818e023e0821eabed51c" shape="plaintext"];
  "sha256:0eba0d7132e43e7b9ba1e79ba07ee4a4b62f2f931edc43fddd66f20ec4e3d143" -> "sha256:2ffa6e450ce60d59b46f79fc5b4c0ecdb1527355871a046a49d4185871cf761e" [label=""];
  "sha256:2ffa6e450ce60d59b46f79fc5b4c0ecdb1527355871a046a49d4185871cf761e" -> "sha256:5c7dcc1d3b9bc2568ee997cc0ecc305b706e54483a9edfbe34d8d42d4b56fd1a" [label=""];
  "sha256:5c7dcc1d3b9bc2568ee997cc0ecc305b706e54483a9edfbe34d8d42d4b56fd1a" -> "sha256:785a83d101d4b2a24c3def369e811c3c1f2faf8de3b52ab38ad0bbf451dee165" [label=""];
  "sha256:785a83d101d4b2a24c3def369e811c3c1f2faf8de3b52ab38ad0bbf451dee165" -> "sha256:ef8602ab960560755b316a5693f1e062d8c167b3c90d7938474901f68473c366" [label=""];
  "sha256:ef8602ab960560755b316a5693f1e062d8c167b3c90d7938474901f68473c366" -> "sha256:5cd35b35dfe61345dc1ee10c39fd20580f95b079c4d2818e023e0821eabed51c" [label=""];
}

