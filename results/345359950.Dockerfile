[app/sources/345359950.Dockerfile]
digraph {
  "sha256:ad36054df9f0aeb6402727564b1db522c7c4984e4f64bc0af30c1ec2d493ab53" [label="docker-image://docker.io/balenalib/rpi-alpine:edge-run" shape="ellipse"];
  "sha256:93f59a2a4d7340410f3cd0a8b1e76363de01b3a91fee8611afbff6b10380c3ae" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:1786699729604774f954ce8b5067232124f3c4d6a582f13c631bb6aa45668830" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:8d81f93d7c99aba38ddaae47e17d9ddb764250db76e4c51e12eaa4e7a7aa04b3" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv6hf.tar.gz\" \t&& echo \"83fde5f5ba7100bf3bb127e3a1f08c239e747af3be040f0ae4adc55fcbe6bf72  go$GO_VERSION.linux-alpine-armv6hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv6hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv6hf.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:a712c305caa22a32219def401a53804bd1bd58d20991188d22be1d825781b142" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:9c748ba54ded4b9114b2120ea61d7289959475611c7b38fae57e4fc4ab901695" [label="mkdir{path=/go}" shape="note"];
  "sha256:f8bedff3df71a7823319cba9bd80914db160cc7ca33976ab2773c99d069770fa" [label="sha256:f8bedff3df71a7823319cba9bd80914db160cc7ca33976ab2773c99d069770fa" shape="plaintext"];
  "sha256:ad36054df9f0aeb6402727564b1db522c7c4984e4f64bc0af30c1ec2d493ab53" -> "sha256:93f59a2a4d7340410f3cd0a8b1e76363de01b3a91fee8611afbff6b10380c3ae" [label=""];
  "sha256:93f59a2a4d7340410f3cd0a8b1e76363de01b3a91fee8611afbff6b10380c3ae" -> "sha256:1786699729604774f954ce8b5067232124f3c4d6a582f13c631bb6aa45668830" [label=""];
  "sha256:1786699729604774f954ce8b5067232124f3c4d6a582f13c631bb6aa45668830" -> "sha256:8d81f93d7c99aba38ddaae47e17d9ddb764250db76e4c51e12eaa4e7a7aa04b3" [label=""];
  "sha256:8d81f93d7c99aba38ddaae47e17d9ddb764250db76e4c51e12eaa4e7a7aa04b3" -> "sha256:a712c305caa22a32219def401a53804bd1bd58d20991188d22be1d825781b142" [label=""];
  "sha256:a712c305caa22a32219def401a53804bd1bd58d20991188d22be1d825781b142" -> "sha256:9c748ba54ded4b9114b2120ea61d7289959475611c7b38fae57e4fc4ab901695" [label=""];
  "sha256:9c748ba54ded4b9114b2120ea61d7289959475611c7b38fae57e4fc4ab901695" -> "sha256:f8bedff3df71a7823319cba9bd80914db160cc7ca33976ab2773c99d069770fa" [label=""];
}

