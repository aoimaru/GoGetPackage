[app/sources/345375466.Dockerfile]
digraph {
  "sha256:f6ba3e2ff8b6752f23b1c6c6edcc9990378d47ec23f54f636f06fecbdaa77285" [label="docker-image://docker.io/balenalib/odroid-xu4-debian:buster-run" shape="ellipse"];
  "sha256:a6e6d91daba8333453dd918b865d0565f5f0b15b0f063c8923d826b469883562" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:b4cc1db882d87dbf9ef13fce50f77926dfa855076bafe9a5130d5a9dc8d8c0c5" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:dbcd521c69a74a0f2ffd02d6faa4265bb5e7f1b766ed88acf71ccbb68af52901" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:f26808cba18385e1d1fca74cb759e72871a52441a0a70cd2087aa96a29864ea9" [label="mkdir{path=/go}" shape="note"];
  "sha256:fafb244148ff66313d18690127d84d04fde14f4e71a00bc04f7eb4d9ea32de24" [label="sha256:fafb244148ff66313d18690127d84d04fde14f4e71a00bc04f7eb4d9ea32de24" shape="plaintext"];
  "sha256:f6ba3e2ff8b6752f23b1c6c6edcc9990378d47ec23f54f636f06fecbdaa77285" -> "sha256:a6e6d91daba8333453dd918b865d0565f5f0b15b0f063c8923d826b469883562" [label=""];
  "sha256:a6e6d91daba8333453dd918b865d0565f5f0b15b0f063c8923d826b469883562" -> "sha256:b4cc1db882d87dbf9ef13fce50f77926dfa855076bafe9a5130d5a9dc8d8c0c5" [label=""];
  "sha256:b4cc1db882d87dbf9ef13fce50f77926dfa855076bafe9a5130d5a9dc8d8c0c5" -> "sha256:dbcd521c69a74a0f2ffd02d6faa4265bb5e7f1b766ed88acf71ccbb68af52901" [label=""];
  "sha256:dbcd521c69a74a0f2ffd02d6faa4265bb5e7f1b766ed88acf71ccbb68af52901" -> "sha256:f26808cba18385e1d1fca74cb759e72871a52441a0a70cd2087aa96a29864ea9" [label=""];
  "sha256:f26808cba18385e1d1fca74cb759e72871a52441a0a70cd2087aa96a29864ea9" -> "sha256:fafb244148ff66313d18690127d84d04fde14f4e71a00bc04f7eb4d9ea32de24" [label=""];
}

