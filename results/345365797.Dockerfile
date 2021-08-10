[app/sources/345365797.Dockerfile]
digraph {
  "sha256:0a5f09a8f5a89e92f8d9ad9cf59077a64da460d37c5bb5b7fc0889cf1bcb72db" [label="docker-image://docker.io/balenalib/fincm3-alpine:3.7-run" shape="ellipse"];
  "sha256:b7c4931e1f92514e88319e5ec6f63667eebaa6e7b04156514d85ff148024faaf" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:54404c101279388c6dc1bb9f656bc1b1bf4e330f3f1c5afed9aa4b1054941c6a" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:f76e39c672e870cfc0baf9114c966c5ada1a0d9a0a8dd031dc2ed60af4e3bcb7" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"296db57c7981a871e1cee0059a90385d39c73386ffc23002a26bfa9b05f514c4  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:e55b0fc3dbde8a8c5bb38cf5670a4798f0334dbc809aa113d89cc8f7841bbd62" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:790c1a68af3f331958610cfbc73d307e8a6388dc923b9675053b67f78bd7f4dc" [label="mkdir{path=/go}" shape="note"];
  "sha256:b0945267821ae2c06de91395f75682a301c3048ef6c465f41a73c509d319ad3a" [label="sha256:b0945267821ae2c06de91395f75682a301c3048ef6c465f41a73c509d319ad3a" shape="plaintext"];
  "sha256:0a5f09a8f5a89e92f8d9ad9cf59077a64da460d37c5bb5b7fc0889cf1bcb72db" -> "sha256:b7c4931e1f92514e88319e5ec6f63667eebaa6e7b04156514d85ff148024faaf" [label=""];
  "sha256:b7c4931e1f92514e88319e5ec6f63667eebaa6e7b04156514d85ff148024faaf" -> "sha256:54404c101279388c6dc1bb9f656bc1b1bf4e330f3f1c5afed9aa4b1054941c6a" [label=""];
  "sha256:54404c101279388c6dc1bb9f656bc1b1bf4e330f3f1c5afed9aa4b1054941c6a" -> "sha256:f76e39c672e870cfc0baf9114c966c5ada1a0d9a0a8dd031dc2ed60af4e3bcb7" [label=""];
  "sha256:f76e39c672e870cfc0baf9114c966c5ada1a0d9a0a8dd031dc2ed60af4e3bcb7" -> "sha256:e55b0fc3dbde8a8c5bb38cf5670a4798f0334dbc809aa113d89cc8f7841bbd62" [label=""];
  "sha256:e55b0fc3dbde8a8c5bb38cf5670a4798f0334dbc809aa113d89cc8f7841bbd62" -> "sha256:790c1a68af3f331958610cfbc73d307e8a6388dc923b9675053b67f78bd7f4dc" [label=""];
  "sha256:790c1a68af3f331958610cfbc73d307e8a6388dc923b9675053b67f78bd7f4dc" -> "sha256:b0945267821ae2c06de91395f75682a301c3048ef6c465f41a73c509d319ad3a" [label=""];
}

