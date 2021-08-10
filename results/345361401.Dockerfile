[app/sources/345361401.Dockerfile]
digraph {
  "sha256:ecf05cdb7da6dd57d92b0e70c839dcddc9cc5395c6ff9cde225d83256bf08bfe" [label="docker-image://docker.io/balenalib/var-som-mx6-alpine:3.9-run" shape="ellipse"];
  "sha256:e47c41cbad4bf7d78a947c3c2cce5c3ee7c32d0bba6fa8dfa6f46dfd3828f5cb" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:65b4aab148fe9e1114ed7cb650cdf37910530cdc1089494f6cf6b7053cee981d" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:3808777a6e53397e02c720d5a6227c300cb1302c1a527bfbf2f610718130c681" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"296db57c7981a871e1cee0059a90385d39c73386ffc23002a26bfa9b05f514c4  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:f138dc2cdc5321718b78c1ea347b7680066db0254279a55894aec76755956ce5" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:89921ed45268bb9c8777d3976551b1329094035f4db7ad10a5b3b6344b4154b5" [label="mkdir{path=/go}" shape="note"];
  "sha256:14a51ef76b96c29169187288c86d7f2995cb484f635fba0189447f484c9dd40c" [label="sha256:14a51ef76b96c29169187288c86d7f2995cb484f635fba0189447f484c9dd40c" shape="plaintext"];
  "sha256:ecf05cdb7da6dd57d92b0e70c839dcddc9cc5395c6ff9cde225d83256bf08bfe" -> "sha256:e47c41cbad4bf7d78a947c3c2cce5c3ee7c32d0bba6fa8dfa6f46dfd3828f5cb" [label=""];
  "sha256:e47c41cbad4bf7d78a947c3c2cce5c3ee7c32d0bba6fa8dfa6f46dfd3828f5cb" -> "sha256:65b4aab148fe9e1114ed7cb650cdf37910530cdc1089494f6cf6b7053cee981d" [label=""];
  "sha256:65b4aab148fe9e1114ed7cb650cdf37910530cdc1089494f6cf6b7053cee981d" -> "sha256:3808777a6e53397e02c720d5a6227c300cb1302c1a527bfbf2f610718130c681" [label=""];
  "sha256:3808777a6e53397e02c720d5a6227c300cb1302c1a527bfbf2f610718130c681" -> "sha256:f138dc2cdc5321718b78c1ea347b7680066db0254279a55894aec76755956ce5" [label=""];
  "sha256:f138dc2cdc5321718b78c1ea347b7680066db0254279a55894aec76755956ce5" -> "sha256:89921ed45268bb9c8777d3976551b1329094035f4db7ad10a5b3b6344b4154b5" [label=""];
  "sha256:89921ed45268bb9c8777d3976551b1329094035f4db7ad10a5b3b6344b4154b5" -> "sha256:14a51ef76b96c29169187288c86d7f2995cb484f635fba0189447f484c9dd40c" [label=""];
}

