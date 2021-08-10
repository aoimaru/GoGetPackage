[app/sources/345358102.Dockerfile]
digraph {
  "sha256:193fb4b0d86dfe7b1c33929d4aeb6cfbf476e306482828627cdd647b109891b8" [label="docker-image://docker.io/balenalib/raspberrypi3-64-alpine:3.8-run" shape="ellipse"];
  "sha256:3b020b3fff8b3d05785fc40f277e7a49a89c669583dc4d5f4aebd765e16c0fbe" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:26a18c68127565094b59d85c1a923b95ee0077af8caa5a2722a7e968a3492953" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:b60eef77a7f3aa599eb0855d830bd45194cdf77fb70120b0182ff136ebc49f8e" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-aarch64.tar.gz\" \t&& echo \"983d78e68083b3ebaf918cdc3be8fa448b1e158d4a184090e8e07a2a250c3bee  go$GO_VERSION.linux-alpine-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-aarch64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-aarch64.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:a35685e1b5ce2be74d8cf90fbdb65e4fdd54a442326a251c967db33eced38586" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:6c0a0c465237435a37eb27646c9af2c6000b0d28b182be3289deaad79186be2e" [label="mkdir{path=/go}" shape="note"];
  "sha256:bacf4ebf146cb6144b14b9b6cbedbef5545701ccda43996810629b8dd2a77e28" [label="sha256:bacf4ebf146cb6144b14b9b6cbedbef5545701ccda43996810629b8dd2a77e28" shape="plaintext"];
  "sha256:193fb4b0d86dfe7b1c33929d4aeb6cfbf476e306482828627cdd647b109891b8" -> "sha256:3b020b3fff8b3d05785fc40f277e7a49a89c669583dc4d5f4aebd765e16c0fbe" [label=""];
  "sha256:3b020b3fff8b3d05785fc40f277e7a49a89c669583dc4d5f4aebd765e16c0fbe" -> "sha256:26a18c68127565094b59d85c1a923b95ee0077af8caa5a2722a7e968a3492953" [label=""];
  "sha256:26a18c68127565094b59d85c1a923b95ee0077af8caa5a2722a7e968a3492953" -> "sha256:b60eef77a7f3aa599eb0855d830bd45194cdf77fb70120b0182ff136ebc49f8e" [label=""];
  "sha256:b60eef77a7f3aa599eb0855d830bd45194cdf77fb70120b0182ff136ebc49f8e" -> "sha256:a35685e1b5ce2be74d8cf90fbdb65e4fdd54a442326a251c967db33eced38586" [label=""];
  "sha256:a35685e1b5ce2be74d8cf90fbdb65e4fdd54a442326a251c967db33eced38586" -> "sha256:6c0a0c465237435a37eb27646c9af2c6000b0d28b182be3289deaad79186be2e" [label=""];
  "sha256:6c0a0c465237435a37eb27646c9af2c6000b0d28b182be3289deaad79186be2e" -> "sha256:bacf4ebf146cb6144b14b9b6cbedbef5545701ccda43996810629b8dd2a77e28" [label=""];
}

