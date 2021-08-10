[app/sources/345373154.Dockerfile]
digraph {
  "sha256:da0c6f85762215a84f05f8e475f0277a438c2404a2c77bdc330864c2401d8ccc" [label="docker-image://docker.io/balenalib/jetson-nano-debian:stretch-run" shape="ellipse"];
  "sha256:f3504e65125833e3c7f122de88ed63510e978fe28f520384a319bfce0f16bee8" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:57a924b5934d0de93aacf250559fc056d4bad362496e1850a7193e5c0dac6e27" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-arm64.tar.gz\" \t&& echo \"6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8  go$GO_VERSION.linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-arm64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-arm64.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:889509ae6241470bd6a87e8ed878c28acb9e84ca13bc32b05f13cf8dda8a9928" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:b62726ff81863f6c7bb9fa813a92ec7c067b27c3c7db810f3d871f353f1e464a" [label="mkdir{path=/go}" shape="note"];
  "sha256:f5065aa9e356f2ee1cd4914932b5f0cbd212ceeb1d6fd6ee5f9173f036add617" [label="sha256:f5065aa9e356f2ee1cd4914932b5f0cbd212ceeb1d6fd6ee5f9173f036add617" shape="plaintext"];
  "sha256:da0c6f85762215a84f05f8e475f0277a438c2404a2c77bdc330864c2401d8ccc" -> "sha256:f3504e65125833e3c7f122de88ed63510e978fe28f520384a319bfce0f16bee8" [label=""];
  "sha256:f3504e65125833e3c7f122de88ed63510e978fe28f520384a319bfce0f16bee8" -> "sha256:57a924b5934d0de93aacf250559fc056d4bad362496e1850a7193e5c0dac6e27" [label=""];
  "sha256:57a924b5934d0de93aacf250559fc056d4bad362496e1850a7193e5c0dac6e27" -> "sha256:889509ae6241470bd6a87e8ed878c28acb9e84ca13bc32b05f13cf8dda8a9928" [label=""];
  "sha256:889509ae6241470bd6a87e8ed878c28acb9e84ca13bc32b05f13cf8dda8a9928" -> "sha256:b62726ff81863f6c7bb9fa813a92ec7c067b27c3c7db810f3d871f353f1e464a" [label=""];
  "sha256:b62726ff81863f6c7bb9fa813a92ec7c067b27c3c7db810f3d871f353f1e464a" -> "sha256:f5065aa9e356f2ee1cd4914932b5f0cbd212ceeb1d6fd6ee5f9173f036add617" [label=""];
}

