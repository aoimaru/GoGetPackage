[app/sources/345373216.Dockerfile]
digraph {
  "sha256:74a3fa7f1cd02c8e1f2b1d469ea7db6f5ab8f0ab4419755f7b63ebe67fcf02f2" [label="docker-image://docker.io/balenalib/jetson-tx1-alpine:3.5-run" shape="ellipse"];
  "sha256:c080cf9e20a3f4129273bc4a4ca105dec08efc32a035c038dbc9edca26cc27d0" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:c4da35fb92a6c8e0038ae0256e20a1746860408e52e27329f5b62bbb6bd5b430" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:cc1438889beff3b0e95135925ee85050ac229aec37c65ccb7fab9d034b1bfd09" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-aarch64.tar.gz\" \t&& echo \"983d78e68083b3ebaf918cdc3be8fa448b1e158d4a184090e8e07a2a250c3bee  go$GO_VERSION.linux-alpine-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-aarch64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-aarch64.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:be3ff27408127a4bfb36bba74f285819207b224494055af5f5abef2d1cb5cef8" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:481de774f8379d25206f9216310053439c9b4ecd669a8f99572086cf18677ab6" [label="mkdir{path=/go}" shape="note"];
  "sha256:e3bf2d083441779f8130190e9d19c32b90c2ceac61838a0a23cd3c89215cccc7" [label="sha256:e3bf2d083441779f8130190e9d19c32b90c2ceac61838a0a23cd3c89215cccc7" shape="plaintext"];
  "sha256:74a3fa7f1cd02c8e1f2b1d469ea7db6f5ab8f0ab4419755f7b63ebe67fcf02f2" -> "sha256:c080cf9e20a3f4129273bc4a4ca105dec08efc32a035c038dbc9edca26cc27d0" [label=""];
  "sha256:c080cf9e20a3f4129273bc4a4ca105dec08efc32a035c038dbc9edca26cc27d0" -> "sha256:c4da35fb92a6c8e0038ae0256e20a1746860408e52e27329f5b62bbb6bd5b430" [label=""];
  "sha256:c4da35fb92a6c8e0038ae0256e20a1746860408e52e27329f5b62bbb6bd5b430" -> "sha256:cc1438889beff3b0e95135925ee85050ac229aec37c65ccb7fab9d034b1bfd09" [label=""];
  "sha256:cc1438889beff3b0e95135925ee85050ac229aec37c65ccb7fab9d034b1bfd09" -> "sha256:be3ff27408127a4bfb36bba74f285819207b224494055af5f5abef2d1cb5cef8" [label=""];
  "sha256:be3ff27408127a4bfb36bba74f285819207b224494055af5f5abef2d1cb5cef8" -> "sha256:481de774f8379d25206f9216310053439c9b4ecd669a8f99572086cf18677ab6" [label=""];
  "sha256:481de774f8379d25206f9216310053439c9b4ecd669a8f99572086cf18677ab6" -> "sha256:e3bf2d083441779f8130190e9d19c32b90c2ceac61838a0a23cd3c89215cccc7" [label=""];
}

