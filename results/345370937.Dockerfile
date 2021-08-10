[app/sources/345370937.Dockerfile]
digraph {
  "sha256:481a54154400c0d59b0b95ed9538b7abfedfa691dee7eaca73be9eef23a0a059" [label="docker-image://docker.io/balenalib/beaglebone-green-wifi-ubuntu:bionic-run" shape="ellipse"];
  "sha256:020fd0c05d696b16f00d4ea5ed5fcd8275cf2fb60c296670cf5027ded93cd6fd" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:1f12db9cbf060732bb6e66a2b236c9c7389b3d175edb3db0670558d6864ffa96" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:303b2147539144d11c72f0613c2b4ec06e4283c1c1086ad0789be178518fecb2" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:6c390e3e6c3d118ba16789b1842c3789f3b225827fd8058724ec089ec03eb533" [label="mkdir{path=/go}" shape="note"];
  "sha256:7ca09fd57c56cd102c3a40a8d59dedfe39fa1bd81d77ab062daddcc66c1f5b8d" [label="sha256:7ca09fd57c56cd102c3a40a8d59dedfe39fa1bd81d77ab062daddcc66c1f5b8d" shape="plaintext"];
  "sha256:481a54154400c0d59b0b95ed9538b7abfedfa691dee7eaca73be9eef23a0a059" -> "sha256:020fd0c05d696b16f00d4ea5ed5fcd8275cf2fb60c296670cf5027ded93cd6fd" [label=""];
  "sha256:020fd0c05d696b16f00d4ea5ed5fcd8275cf2fb60c296670cf5027ded93cd6fd" -> "sha256:1f12db9cbf060732bb6e66a2b236c9c7389b3d175edb3db0670558d6864ffa96" [label=""];
  "sha256:1f12db9cbf060732bb6e66a2b236c9c7389b3d175edb3db0670558d6864ffa96" -> "sha256:303b2147539144d11c72f0613c2b4ec06e4283c1c1086ad0789be178518fecb2" [label=""];
  "sha256:303b2147539144d11c72f0613c2b4ec06e4283c1c1086ad0789be178518fecb2" -> "sha256:6c390e3e6c3d118ba16789b1842c3789f3b225827fd8058724ec089ec03eb533" [label=""];
  "sha256:6c390e3e6c3d118ba16789b1842c3789f3b225827fd8058724ec089ec03eb533" -> "sha256:7ca09fd57c56cd102c3a40a8d59dedfe39fa1bd81d77ab062daddcc66c1f5b8d" [label=""];
}

