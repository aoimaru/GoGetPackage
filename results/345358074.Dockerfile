[app/sources/345358074.Dockerfile]
digraph {
  "sha256:e9a5f26e64fcbab4a8efc892849a277a6c65af9b88fb8a07c05bf023bf0517f3" [label="docker-image://docker.io/balenalib/raspberry-pi2-ubuntu:xenial-run" shape="ellipse"];
  "sha256:b8b692f503c01fe04d4a934957d85498611a3ebb3344747814417fbd820976be" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:58d9273b553e7a76e91286523c5e6da46cd05a080c4f09f0ad8e9469ea22197b" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:18b7661ad3a0d7f51d59913977ddd0437bdae94134e39e4fe212b20a748f2e32" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:dfeff0acab4dc5c492ab2bdd48e4d94ac537c8a211671ae5df88fabe102f0b0d" [label="mkdir{path=/go}" shape="note"];
  "sha256:d882ab0a123e620a6272fa65e01e15be0071ce6f13c1dacc3fcf96f9f69d6534" [label="sha256:d882ab0a123e620a6272fa65e01e15be0071ce6f13c1dacc3fcf96f9f69d6534" shape="plaintext"];
  "sha256:e9a5f26e64fcbab4a8efc892849a277a6c65af9b88fb8a07c05bf023bf0517f3" -> "sha256:b8b692f503c01fe04d4a934957d85498611a3ebb3344747814417fbd820976be" [label=""];
  "sha256:b8b692f503c01fe04d4a934957d85498611a3ebb3344747814417fbd820976be" -> "sha256:58d9273b553e7a76e91286523c5e6da46cd05a080c4f09f0ad8e9469ea22197b" [label=""];
  "sha256:58d9273b553e7a76e91286523c5e6da46cd05a080c4f09f0ad8e9469ea22197b" -> "sha256:18b7661ad3a0d7f51d59913977ddd0437bdae94134e39e4fe212b20a748f2e32" [label=""];
  "sha256:18b7661ad3a0d7f51d59913977ddd0437bdae94134e39e4fe212b20a748f2e32" -> "sha256:dfeff0acab4dc5c492ab2bdd48e4d94ac537c8a211671ae5df88fabe102f0b0d" [label=""];
  "sha256:dfeff0acab4dc5c492ab2bdd48e4d94ac537c8a211671ae5df88fabe102f0b0d" -> "sha256:d882ab0a123e620a6272fa65e01e15be0071ce6f13c1dacc3fcf96f9f69d6534" [label=""];
}

