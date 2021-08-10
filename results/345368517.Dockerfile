[app/sources/345368517.Dockerfile]
digraph {
  "sha256:c90ed342a13b404eb7c0a52e8201d8e5b670a23f48a2509e1a9d5409b9c60a6b" [label="docker-image://docker.io/balenalib/bananapi-m1-plus-ubuntu:trusty-run" shape="ellipse"];
  "sha256:4140247e1c173f9ea47790921716ac15f22fd63df1353ffbd506792fa7006139" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:7a374f4876e7c7e23f7d39f5e7513f0401d11e62082ad6d1c50812349448f9ac" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:a3550e31a1abdea1e38411f999a988755d1c3de0d7ceea0f52eecd3eed9eada0" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:2831c1bfa1736360b6aab7d74f0fbf6db0aae013fa125c33576b9761b2c248db" [label="mkdir{path=/go}" shape="note"];
  "sha256:8631b3c6d4a0c05a005af5224d7ee826484c4d6a4231a840dc46795f540342c0" [label="sha256:8631b3c6d4a0c05a005af5224d7ee826484c4d6a4231a840dc46795f540342c0" shape="plaintext"];
  "sha256:c90ed342a13b404eb7c0a52e8201d8e5b670a23f48a2509e1a9d5409b9c60a6b" -> "sha256:4140247e1c173f9ea47790921716ac15f22fd63df1353ffbd506792fa7006139" [label=""];
  "sha256:4140247e1c173f9ea47790921716ac15f22fd63df1353ffbd506792fa7006139" -> "sha256:7a374f4876e7c7e23f7d39f5e7513f0401d11e62082ad6d1c50812349448f9ac" [label=""];
  "sha256:7a374f4876e7c7e23f7d39f5e7513f0401d11e62082ad6d1c50812349448f9ac" -> "sha256:a3550e31a1abdea1e38411f999a988755d1c3de0d7ceea0f52eecd3eed9eada0" [label=""];
  "sha256:a3550e31a1abdea1e38411f999a988755d1c3de0d7ceea0f52eecd3eed9eada0" -> "sha256:2831c1bfa1736360b6aab7d74f0fbf6db0aae013fa125c33576b9761b2c248db" [label=""];
  "sha256:2831c1bfa1736360b6aab7d74f0fbf6db0aae013fa125c33576b9761b2c248db" -> "sha256:8631b3c6d4a0c05a005af5224d7ee826484c4d6a4231a840dc46795f540342c0" [label=""];
}

