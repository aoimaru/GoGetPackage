[app/sources/345373221.Dockerfile]
digraph {
  "sha256:9265f70aab93d63e5d7368ce1d2f57acf0adaae3240c6fe3cb487b9f5575db8e" [label="docker-image://docker.io/balenalib/jetson-tx1-alpine:3.6-build" shape="ellipse"];
  "sha256:b35d6f4eac0719615358ff14560b825bbc17f8a1e0befc702c4f569944e66517" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:b31d54f4ed3a5b37231f2e66925d4a51e7433dd188966f10c9a622438fe1acb6" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-aarch64.tar.gz\" \t&& echo \"983d78e68083b3ebaf918cdc3be8fa448b1e158d4a184090e8e07a2a250c3bee  go$GO_VERSION.linux-alpine-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-aarch64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-aarch64.tar.gz" shape="box"];
  "sha256:b69017156ba5d98c9ac16966c3770f16994449298508851550f3d10f5983f45c" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:540dbec4557113a804881feaf831be91c3f78c9656e780fa172adc3b0780b96c" [label="mkdir{path=/go}" shape="note"];
  "sha256:d3437b0a3a14687927789c92f3984387b425012d3cfe699ca498bf2c5e6ba7e5" [label="sha256:d3437b0a3a14687927789c92f3984387b425012d3cfe699ca498bf2c5e6ba7e5" shape="plaintext"];
  "sha256:9265f70aab93d63e5d7368ce1d2f57acf0adaae3240c6fe3cb487b9f5575db8e" -> "sha256:b35d6f4eac0719615358ff14560b825bbc17f8a1e0befc702c4f569944e66517" [label=""];
  "sha256:b35d6f4eac0719615358ff14560b825bbc17f8a1e0befc702c4f569944e66517" -> "sha256:b31d54f4ed3a5b37231f2e66925d4a51e7433dd188966f10c9a622438fe1acb6" [label=""];
  "sha256:b31d54f4ed3a5b37231f2e66925d4a51e7433dd188966f10c9a622438fe1acb6" -> "sha256:b69017156ba5d98c9ac16966c3770f16994449298508851550f3d10f5983f45c" [label=""];
  "sha256:b69017156ba5d98c9ac16966c3770f16994449298508851550f3d10f5983f45c" -> "sha256:540dbec4557113a804881feaf831be91c3f78c9656e780fa172adc3b0780b96c" [label=""];
  "sha256:540dbec4557113a804881feaf831be91c3f78c9656e780fa172adc3b0780b96c" -> "sha256:d3437b0a3a14687927789c92f3984387b425012d3cfe699ca498bf2c5e6ba7e5" [label=""];
}

