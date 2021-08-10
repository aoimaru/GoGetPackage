[app/sources/345361135.Dockerfile]
digraph {
  "sha256:50ff8c60e175aa7eefbdec685ddbf14491fa5abe30b5d9c0010a39f4227046b6" [label="docker-image://docker.io/balenalib/up-board-alpine:3.7-run" shape="ellipse"];
  "sha256:10ce5cd1e5ee0b0ea66cfb24d70c0da2eca54a1a19a44c3c3083b093a1983dc0" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:1453aa827e4647652d4f41303a890f2803a7062ac90d6b2ab7bdff785214f95d" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:a1c2c22bbf2a83c194aeee07487631b179b2b373fdfcdcf42f1db3e4a733c95b" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-amd64.tar.gz\" \t&& echo \"cefdfd2b941303fd25dd06bd04871b12a58a2a9a3d105eb67aed40dac092c863  go$GO_VERSION.linux-alpine-amd64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-amd64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-amd64.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:c79062a9db5049c3c9fad987d8ef2fefe0d28e0c827602f4a4a1f7066e4a78bf" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:87a68aa70cd076312cc29d2ff44e2d0a08cb619d7ef68c2b8655d00d48006a08" [label="mkdir{path=/go}" shape="note"];
  "sha256:dfdf5bb3d4f7147df316d2cdc45cd00654e28ab6c86d49e621b5aa948f4ccbb0" [label="sha256:dfdf5bb3d4f7147df316d2cdc45cd00654e28ab6c86d49e621b5aa948f4ccbb0" shape="plaintext"];
  "sha256:50ff8c60e175aa7eefbdec685ddbf14491fa5abe30b5d9c0010a39f4227046b6" -> "sha256:10ce5cd1e5ee0b0ea66cfb24d70c0da2eca54a1a19a44c3c3083b093a1983dc0" [label=""];
  "sha256:10ce5cd1e5ee0b0ea66cfb24d70c0da2eca54a1a19a44c3c3083b093a1983dc0" -> "sha256:1453aa827e4647652d4f41303a890f2803a7062ac90d6b2ab7bdff785214f95d" [label=""];
  "sha256:1453aa827e4647652d4f41303a890f2803a7062ac90d6b2ab7bdff785214f95d" -> "sha256:a1c2c22bbf2a83c194aeee07487631b179b2b373fdfcdcf42f1db3e4a733c95b" [label=""];
  "sha256:a1c2c22bbf2a83c194aeee07487631b179b2b373fdfcdcf42f1db3e4a733c95b" -> "sha256:c79062a9db5049c3c9fad987d8ef2fefe0d28e0c827602f4a4a1f7066e4a78bf" [label=""];
  "sha256:c79062a9db5049c3c9fad987d8ef2fefe0d28e0c827602f4a4a1f7066e4a78bf" -> "sha256:87a68aa70cd076312cc29d2ff44e2d0a08cb619d7ef68c2b8655d00d48006a08" [label=""];
  "sha256:87a68aa70cd076312cc29d2ff44e2d0a08cb619d7ef68c2b8655d00d48006a08" -> "sha256:dfdf5bb3d4f7147df316d2cdc45cd00654e28ab6c86d49e621b5aa948f4ccbb0" [label=""];
}

