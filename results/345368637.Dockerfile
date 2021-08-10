[app/sources/345368637.Dockerfile]
digraph {
  "sha256:d943e1660cd7fbb6b0550fe40438403073e55b9b44fc7a359c2c456521f0972e" [label="docker-image://docker.io/balenalib/beaglebone-black-alpine:3.5-run" shape="ellipse"];
  "sha256:331ba04d7a639e76683f62389d1d2ce6b3e587893819193c6f008579b21b3a59" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:95480f316a6283cbecbf8ee2e42da006a174bddd09e604cb3157e7b99002b301" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:ee6b0cae4fd8d47befba897e5049fb080cdc357f0755dcbbb7f83c94260fb06a" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"92e208c8828ea41fb61e881b49fe883fba12f3730ec72a49b64be0ae74bb486d  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:95307d90d85bcab375018bd6a5ab866df1b6013ec589d4eb605dddaffb1d25b7" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:ea7f8a8dbdaab4f617b18e7baf1b92d4e4ce01a598c9d6e35582da640219510f" [label="mkdir{path=/go}" shape="note"];
  "sha256:8a270a9173bde5cfb5a786a5e40e2058eddb2e7a59c56e42cb3f57dae3e27d78" [label="sha256:8a270a9173bde5cfb5a786a5e40e2058eddb2e7a59c56e42cb3f57dae3e27d78" shape="plaintext"];
  "sha256:d943e1660cd7fbb6b0550fe40438403073e55b9b44fc7a359c2c456521f0972e" -> "sha256:331ba04d7a639e76683f62389d1d2ce6b3e587893819193c6f008579b21b3a59" [label=""];
  "sha256:331ba04d7a639e76683f62389d1d2ce6b3e587893819193c6f008579b21b3a59" -> "sha256:95480f316a6283cbecbf8ee2e42da006a174bddd09e604cb3157e7b99002b301" [label=""];
  "sha256:95480f316a6283cbecbf8ee2e42da006a174bddd09e604cb3157e7b99002b301" -> "sha256:ee6b0cae4fd8d47befba897e5049fb080cdc357f0755dcbbb7f83c94260fb06a" [label=""];
  "sha256:ee6b0cae4fd8d47befba897e5049fb080cdc357f0755dcbbb7f83c94260fb06a" -> "sha256:95307d90d85bcab375018bd6a5ab866df1b6013ec589d4eb605dddaffb1d25b7" [label=""];
  "sha256:95307d90d85bcab375018bd6a5ab866df1b6013ec589d4eb605dddaffb1d25b7" -> "sha256:ea7f8a8dbdaab4f617b18e7baf1b92d4e4ce01a598c9d6e35582da640219510f" [label=""];
  "sha256:ea7f8a8dbdaab4f617b18e7baf1b92d4e4ce01a598c9d6e35582da640219510f" -> "sha256:8a270a9173bde5cfb5a786a5e40e2058eddb2e7a59c56e42cb3f57dae3e27d78" [label=""];
}

