[app/sources/345357467.Dockerfile]
digraph {
  "sha256:42d879175afe0bf3ecb6e5dc18c727f2df5f8dc7e970dafe4ea8f8852fc8b59d" [label="docker-image://docker.io/balenalib/orbitty-tx2-ubuntu:cosmic-run" shape="ellipse"];
  "sha256:7dd10189e2a85fa4329925b5cec41ac84e826e31202d069cf850349e69900c29" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:c62932ce3fab6003f3458e0fb4c97981007a79519497e03d83f55d1192e14821" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-arm64.tar.gz\" \t&& echo \"ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8  go$GO_VERSION.linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-arm64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-arm64.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:0ef3a7fad2ee882b375ca87fb674466665221ef8ed93e2c9d05c140cdf30df83" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:597d3f379a91ccc6dc391aba68eaf475cba40bc016983b764ae0154a668a4109" [label="mkdir{path=/go}" shape="note"];
  "sha256:8af6d66fe57cbd2390fffba41e0733ec36a8b1c559e89fff059223972b6e28b4" [label="sha256:8af6d66fe57cbd2390fffba41e0733ec36a8b1c559e89fff059223972b6e28b4" shape="plaintext"];
  "sha256:42d879175afe0bf3ecb6e5dc18c727f2df5f8dc7e970dafe4ea8f8852fc8b59d" -> "sha256:7dd10189e2a85fa4329925b5cec41ac84e826e31202d069cf850349e69900c29" [label=""];
  "sha256:7dd10189e2a85fa4329925b5cec41ac84e826e31202d069cf850349e69900c29" -> "sha256:c62932ce3fab6003f3458e0fb4c97981007a79519497e03d83f55d1192e14821" [label=""];
  "sha256:c62932ce3fab6003f3458e0fb4c97981007a79519497e03d83f55d1192e14821" -> "sha256:0ef3a7fad2ee882b375ca87fb674466665221ef8ed93e2c9d05c140cdf30df83" [label=""];
  "sha256:0ef3a7fad2ee882b375ca87fb674466665221ef8ed93e2c9d05c140cdf30df83" -> "sha256:597d3f379a91ccc6dc391aba68eaf475cba40bc016983b764ae0154a668a4109" [label=""];
  "sha256:597d3f379a91ccc6dc391aba68eaf475cba40bc016983b764ae0154a668a4109" -> "sha256:8af6d66fe57cbd2390fffba41e0733ec36a8b1c559e89fff059223972b6e28b4" [label=""];
}

