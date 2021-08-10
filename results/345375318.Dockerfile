[app/sources/345375318.Dockerfile]
digraph {
  "sha256:1a23788bc33280758eeee2be1ee63c2ec5a6bbf519e1b5eacfad4ea3b64ceb36" [label="docker-image://docker.io/balenalib/npe-x500-m3-ubuntu:xenial-run" shape="ellipse"];
  "sha256:22e223b5e3f16cc632c579c67dc76381dd2be2776e548f4eb5a04612155ab248" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:450205b5d29db47f5c01f86e5106698b7d1e1ab4401aea81e39d181df294f0b2" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f8a06c2832ca01001d0ffc68a44a2d4c569285cd485a0a61ee7169bc87adbb0f  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:22ae14d568ee7c214dc34f5bc2b2e7fde1e3c53f91dbfcbdd688ef230c010bad" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:9691aceb495c23feff9780d7dc9c280b09fe946aa71da608b6dfadfadfcff7a9" [label="mkdir{path=/go}" shape="note"];
  "sha256:6c10a7849966d8fa26a91e9b28b28edf30ef9c73478ccb088aa32a3e36756d03" [label="sha256:6c10a7849966d8fa26a91e9b28b28edf30ef9c73478ccb088aa32a3e36756d03" shape="plaintext"];
  "sha256:1a23788bc33280758eeee2be1ee63c2ec5a6bbf519e1b5eacfad4ea3b64ceb36" -> "sha256:22e223b5e3f16cc632c579c67dc76381dd2be2776e548f4eb5a04612155ab248" [label=""];
  "sha256:22e223b5e3f16cc632c579c67dc76381dd2be2776e548f4eb5a04612155ab248" -> "sha256:450205b5d29db47f5c01f86e5106698b7d1e1ab4401aea81e39d181df294f0b2" [label=""];
  "sha256:450205b5d29db47f5c01f86e5106698b7d1e1ab4401aea81e39d181df294f0b2" -> "sha256:22ae14d568ee7c214dc34f5bc2b2e7fde1e3c53f91dbfcbdd688ef230c010bad" [label=""];
  "sha256:22ae14d568ee7c214dc34f5bc2b2e7fde1e3c53f91dbfcbdd688ef230c010bad" -> "sha256:9691aceb495c23feff9780d7dc9c280b09fe946aa71da608b6dfadfadfcff7a9" [label=""];
  "sha256:9691aceb495c23feff9780d7dc9c280b09fe946aa71da608b6dfadfadfcff7a9" -> "sha256:6c10a7849966d8fa26a91e9b28b28edf30ef9c73478ccb088aa32a3e36756d03" [label=""];
}

