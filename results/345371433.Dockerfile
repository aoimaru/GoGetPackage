[app/sources/345371433.Dockerfile]
digraph {
  "sha256:a53f4c892d95c86dd33b96177a7765f4f01ada3c98c6838d1980be722e76adff" [label="docker-image://docker.io/balenalib/cl-som-imx8-alpine:edge-run" shape="ellipse"];
  "sha256:1a4f558e7118500e6873aa02f75adfdbcf5ebc7564f8a709c977e2588056e3ac" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:ab63a7eb67f7e2edd6238b0334fc29d3ef93cbb4d0b07c8ae30d2c34339d951d" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:1f527bb6eecf9decd9152f423698ba1dbbef83a6626e22647589c892f24e761c" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-aarch64.tar.gz\" \t&& echo \"983d78e68083b3ebaf918cdc3be8fa448b1e158d4a184090e8e07a2a250c3bee  go$GO_VERSION.linux-alpine-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-aarch64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-aarch64.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:db2e1007a0cdfb8b8218dba588df328d0ac536ba57f9aa6bf8aefc2de5d46175" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:3015c447fc05fd9964e1e64ab10190ab165cf01207c7399da40b39cfd98de234" [label="mkdir{path=/go}" shape="note"];
  "sha256:3f5093449d2316edcfe766889f2b25c276009332f44eeb7cd0ea180f0a1fc5a1" [label="sha256:3f5093449d2316edcfe766889f2b25c276009332f44eeb7cd0ea180f0a1fc5a1" shape="plaintext"];
  "sha256:a53f4c892d95c86dd33b96177a7765f4f01ada3c98c6838d1980be722e76adff" -> "sha256:1a4f558e7118500e6873aa02f75adfdbcf5ebc7564f8a709c977e2588056e3ac" [label=""];
  "sha256:1a4f558e7118500e6873aa02f75adfdbcf5ebc7564f8a709c977e2588056e3ac" -> "sha256:ab63a7eb67f7e2edd6238b0334fc29d3ef93cbb4d0b07c8ae30d2c34339d951d" [label=""];
  "sha256:ab63a7eb67f7e2edd6238b0334fc29d3ef93cbb4d0b07c8ae30d2c34339d951d" -> "sha256:1f527bb6eecf9decd9152f423698ba1dbbef83a6626e22647589c892f24e761c" [label=""];
  "sha256:1f527bb6eecf9decd9152f423698ba1dbbef83a6626e22647589c892f24e761c" -> "sha256:db2e1007a0cdfb8b8218dba588df328d0ac536ba57f9aa6bf8aefc2de5d46175" [label=""];
  "sha256:db2e1007a0cdfb8b8218dba588df328d0ac536ba57f9aa6bf8aefc2de5d46175" -> "sha256:3015c447fc05fd9964e1e64ab10190ab165cf01207c7399da40b39cfd98de234" [label=""];
  "sha256:3015c447fc05fd9964e1e64ab10190ab165cf01207c7399da40b39cfd98de234" -> "sha256:3f5093449d2316edcfe766889f2b25c276009332f44eeb7cd0ea180f0a1fc5a1" [label=""];
}

