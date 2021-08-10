[app/sources/345365987.Dockerfile]
digraph {
  "sha256:ee3d485dbd2dacaac30bf7c0921dccf1e2c3fed37cbed0f0e38d8fa6ba8c24e1" [label="docker-image://docker.io/balenalib/generic-aarch64-ubuntu:cosmic-run" shape="ellipse"];
  "sha256:1fed7adec77c83ca5e3242433d23a16e9443b86f630a53246d8086667c68cfda" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:82e063f72741c62a85afbf36cbfb4e6704d55d4a96f1511217a8d99a3a21a7ad" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-aarch64.tar.gz\" \t&& echo \"8b000bee6c8e2512d79182b56b7023d83a9a297bf813a8565ebbee03d8fb2cd7  go$GO_VERSION.linux-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-aarch64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-aarch64.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:7378d350860cc9e76ee64d58b51400bb924417ff80744f5993d194b6307399d0" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:124f39aeaaec8c8265bc1d192f105a88c7c0ffa35e5aa5311761f9e9319d8f09" [label="mkdir{path=/go}" shape="note"];
  "sha256:5682b449015a6d61761531a153662adeb78bef8644a27c49f2ac90db3c93a129" [label="sha256:5682b449015a6d61761531a153662adeb78bef8644a27c49f2ac90db3c93a129" shape="plaintext"];
  "sha256:ee3d485dbd2dacaac30bf7c0921dccf1e2c3fed37cbed0f0e38d8fa6ba8c24e1" -> "sha256:1fed7adec77c83ca5e3242433d23a16e9443b86f630a53246d8086667c68cfda" [label=""];
  "sha256:1fed7adec77c83ca5e3242433d23a16e9443b86f630a53246d8086667c68cfda" -> "sha256:82e063f72741c62a85afbf36cbfb4e6704d55d4a96f1511217a8d99a3a21a7ad" [label=""];
  "sha256:82e063f72741c62a85afbf36cbfb4e6704d55d4a96f1511217a8d99a3a21a7ad" -> "sha256:7378d350860cc9e76ee64d58b51400bb924417ff80744f5993d194b6307399d0" [label=""];
  "sha256:7378d350860cc9e76ee64d58b51400bb924417ff80744f5993d194b6307399d0" -> "sha256:124f39aeaaec8c8265bc1d192f105a88c7c0ffa35e5aa5311761f9e9319d8f09" [label=""];
  "sha256:124f39aeaaec8c8265bc1d192f105a88c7c0ffa35e5aa5311761f9e9319d8f09" -> "sha256:5682b449015a6d61761531a153662adeb78bef8644a27c49f2ac90db3c93a129" [label=""];
}

