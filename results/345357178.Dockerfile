[app/sources/345357178.Dockerfile]
digraph {
  "sha256:de7b2f5b8f801675c1f2029a2cb107dfdf97601b2ea6d70e663fbb10c4587cff" [label="docker-image://docker.io/balenalib/orangepi-plus2-debian:jessie-run" shape="ellipse"];
  "sha256:2834d5b7d778d53c03e1db458827793a7b426b6c56984bd29d255df965c81bba" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:4babbe19b00a07dd619f1fc7649d420b098735d4489edb782746a6b1527b3ff2" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f8a06c2832ca01001d0ffc68a44a2d4c569285cd485a0a61ee7169bc87adbb0f  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:edf41928f4d5a854321ce1aacd85f3955d44ba419d20bcb9f355030a2b8d8570" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:1ff88219b96baac7095d624a56207623858ca50813a3ddd67b0d44db0f218dcd" [label="mkdir{path=/go}" shape="note"];
  "sha256:de26f44e56966f0be25275fe5ce1365ba4fe59bab03461fcac93959945df2c9a" [label="sha256:de26f44e56966f0be25275fe5ce1365ba4fe59bab03461fcac93959945df2c9a" shape="plaintext"];
  "sha256:de7b2f5b8f801675c1f2029a2cb107dfdf97601b2ea6d70e663fbb10c4587cff" -> "sha256:2834d5b7d778d53c03e1db458827793a7b426b6c56984bd29d255df965c81bba" [label=""];
  "sha256:2834d5b7d778d53c03e1db458827793a7b426b6c56984bd29d255df965c81bba" -> "sha256:4babbe19b00a07dd619f1fc7649d420b098735d4489edb782746a6b1527b3ff2" [label=""];
  "sha256:4babbe19b00a07dd619f1fc7649d420b098735d4489edb782746a6b1527b3ff2" -> "sha256:edf41928f4d5a854321ce1aacd85f3955d44ba419d20bcb9f355030a2b8d8570" [label=""];
  "sha256:edf41928f4d5a854321ce1aacd85f3955d44ba419d20bcb9f355030a2b8d8570" -> "sha256:1ff88219b96baac7095d624a56207623858ca50813a3ddd67b0d44db0f218dcd" [label=""];
  "sha256:1ff88219b96baac7095d624a56207623858ca50813a3ddd67b0d44db0f218dcd" -> "sha256:de26f44e56966f0be25275fe5ce1365ba4fe59bab03461fcac93959945df2c9a" [label=""];
}

