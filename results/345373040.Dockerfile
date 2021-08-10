[app/sources/345373040.Dockerfile]
digraph {
  "sha256:bb0285d14f686216b8dca22da5856359168cf735c01d4c8a538ab2b52626fb6f" [label="docker-image://docker.io/balenalib/intel-nuc-ubuntu:xenial-run" shape="ellipse"];
  "sha256:bf0b5cad5f882839a2a3d5f70e545499f6405f3899b221e729f9cbbeed8c563d" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:8fae82ae441a8ba3920089adb48b8eae968cfd7b7665d79d2766bf11b80b7d06" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-amd64.tar.gz\" \t&& echo \"aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0  go$GO_VERSION.linux-amd64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-amd64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-amd64.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:15e47a25d5d1c3092cd48e78911ec275d25dbff42b9f13fe9dd8eb479af254b9" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:6d54c0f34c5846b1a93cbe4eea4108ccbce91f70e22efd685221633f3af4156e" [label="mkdir{path=/go}" shape="note"];
  "sha256:1a0b19bd522614bf6cbaec63f168a9d44b84ee79d66a051de3440d0a1137b26f" [label="sha256:1a0b19bd522614bf6cbaec63f168a9d44b84ee79d66a051de3440d0a1137b26f" shape="plaintext"];
  "sha256:bb0285d14f686216b8dca22da5856359168cf735c01d4c8a538ab2b52626fb6f" -> "sha256:bf0b5cad5f882839a2a3d5f70e545499f6405f3899b221e729f9cbbeed8c563d" [label=""];
  "sha256:bf0b5cad5f882839a2a3d5f70e545499f6405f3899b221e729f9cbbeed8c563d" -> "sha256:8fae82ae441a8ba3920089adb48b8eae968cfd7b7665d79d2766bf11b80b7d06" [label=""];
  "sha256:8fae82ae441a8ba3920089adb48b8eae968cfd7b7665d79d2766bf11b80b7d06" -> "sha256:15e47a25d5d1c3092cd48e78911ec275d25dbff42b9f13fe9dd8eb479af254b9" [label=""];
  "sha256:15e47a25d5d1c3092cd48e78911ec275d25dbff42b9f13fe9dd8eb479af254b9" -> "sha256:6d54c0f34c5846b1a93cbe4eea4108ccbce91f70e22efd685221633f3af4156e" [label=""];
  "sha256:6d54c0f34c5846b1a93cbe4eea4108ccbce91f70e22efd685221633f3af4156e" -> "sha256:1a0b19bd522614bf6cbaec63f168a9d44b84ee79d66a051de3440d0a1137b26f" [label=""];
}

