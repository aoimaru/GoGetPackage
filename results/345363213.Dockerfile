[app/sources/345363213.Dockerfile]
digraph {
  "sha256:58a946650a15424710e995e060c2a75b73c4eb134adf5f9f35aedf5c92e017cb" [label="docker-image://docker.io/balenalib/am571x-evm-alpine:3.7-run" shape="ellipse"];
  "sha256:056674c1c9c5fd1ba6e2c45a7a5ca33a0f441e208731b8b3b45a6d609d5fad8e" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:d74cbab3ebd51eface7b8a4cb707a374d05e4f4ea095978b7d82b258628cf958" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:0683fb3e91531319a85d9ed687199c2bf9a1e560b841f33d5834e2ff801723ef" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"76be47e1f6979af4fc7c0c06d883a082f78a98b9948cf28359702877a8b2b9b2  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:a3ebd243b07f86791c9964de15a852486249443c867c3c44cf3c82c24cb00b5d" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:c99568677142cd52eb801f6d7f5cb062f028f17e18ebe7c403963083e500e45c" [label="mkdir{path=/go}" shape="note"];
  "sha256:2e69bffc5b3777cb9d7be1f7825241a4de44d17ec0bc8e349367de8e709e7941" [label="sha256:2e69bffc5b3777cb9d7be1f7825241a4de44d17ec0bc8e349367de8e709e7941" shape="plaintext"];
  "sha256:58a946650a15424710e995e060c2a75b73c4eb134adf5f9f35aedf5c92e017cb" -> "sha256:056674c1c9c5fd1ba6e2c45a7a5ca33a0f441e208731b8b3b45a6d609d5fad8e" [label=""];
  "sha256:056674c1c9c5fd1ba6e2c45a7a5ca33a0f441e208731b8b3b45a6d609d5fad8e" -> "sha256:d74cbab3ebd51eface7b8a4cb707a374d05e4f4ea095978b7d82b258628cf958" [label=""];
  "sha256:d74cbab3ebd51eface7b8a4cb707a374d05e4f4ea095978b7d82b258628cf958" -> "sha256:0683fb3e91531319a85d9ed687199c2bf9a1e560b841f33d5834e2ff801723ef" [label=""];
  "sha256:0683fb3e91531319a85d9ed687199c2bf9a1e560b841f33d5834e2ff801723ef" -> "sha256:a3ebd243b07f86791c9964de15a852486249443c867c3c44cf3c82c24cb00b5d" [label=""];
  "sha256:a3ebd243b07f86791c9964de15a852486249443c867c3c44cf3c82c24cb00b5d" -> "sha256:c99568677142cd52eb801f6d7f5cb062f028f17e18ebe7c403963083e500e45c" [label=""];
  "sha256:c99568677142cd52eb801f6d7f5cb062f028f17e18ebe7c403963083e500e45c" -> "sha256:2e69bffc5b3777cb9d7be1f7825241a4de44d17ec0bc8e349367de8e709e7941" [label=""];
}

