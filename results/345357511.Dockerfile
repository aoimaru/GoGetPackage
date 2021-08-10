[app/sources/345357511.Dockerfile]
digraph {
  "sha256:c5a3096351b69468445c76ee4b188fc0aece4d1a7ebd76dd5d906d7b2c0305b3" [label="docker-image://docker.io/balenalib/parallella-alpine:3.6-run" shape="ellipse"];
  "sha256:41d86812fd9e7920448deda16f9afe4fa6c1fdd70a650a289c3d181bc5dba117" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:f3a51b6c9bf0ad39b4234d65e305917d6dea711c09a4c277ec482a7b830bbb8f" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:6a62448ac51018082e723238e6ec224ddeee94653458751c8f8ee6a6be123ac6" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"296db57c7981a871e1cee0059a90385d39c73386ffc23002a26bfa9b05f514c4  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:85e4727ae13b1fb7acea2f136a85c618ed0e07d5259a60af08252f0c94ae2dcb" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:a7138644139ebbcfc2476a5a73559af5005c458fed8fc4501f5cdcc0709d29c4" [label="mkdir{path=/go}" shape="note"];
  "sha256:e9c3fbd60a38c79880cd8a34a09a545fcf79bbacff723008e36fa8a496e138f9" [label="sha256:e9c3fbd60a38c79880cd8a34a09a545fcf79bbacff723008e36fa8a496e138f9" shape="plaintext"];
  "sha256:c5a3096351b69468445c76ee4b188fc0aece4d1a7ebd76dd5d906d7b2c0305b3" -> "sha256:41d86812fd9e7920448deda16f9afe4fa6c1fdd70a650a289c3d181bc5dba117" [label=""];
  "sha256:41d86812fd9e7920448deda16f9afe4fa6c1fdd70a650a289c3d181bc5dba117" -> "sha256:f3a51b6c9bf0ad39b4234d65e305917d6dea711c09a4c277ec482a7b830bbb8f" [label=""];
  "sha256:f3a51b6c9bf0ad39b4234d65e305917d6dea711c09a4c277ec482a7b830bbb8f" -> "sha256:6a62448ac51018082e723238e6ec224ddeee94653458751c8f8ee6a6be123ac6" [label=""];
  "sha256:6a62448ac51018082e723238e6ec224ddeee94653458751c8f8ee6a6be123ac6" -> "sha256:85e4727ae13b1fb7acea2f136a85c618ed0e07d5259a60af08252f0c94ae2dcb" [label=""];
  "sha256:85e4727ae13b1fb7acea2f136a85c618ed0e07d5259a60af08252f0c94ae2dcb" -> "sha256:a7138644139ebbcfc2476a5a73559af5005c458fed8fc4501f5cdcc0709d29c4" [label=""];
  "sha256:a7138644139ebbcfc2476a5a73559af5005c458fed8fc4501f5cdcc0709d29c4" -> "sha256:e9c3fbd60a38c79880cd8a34a09a545fcf79bbacff723008e36fa8a496e138f9" [label=""];
}

