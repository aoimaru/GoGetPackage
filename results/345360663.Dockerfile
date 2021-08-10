[app/sources/345360663.Dockerfile]
digraph {
  "sha256:74132e9416e44a7f514cc1b1279a6254a3c3579469aeba6771c4a248e1eb3378" [label="docker-image://docker.io/balenalib/surface-pro-6-alpine:3.9-run" shape="ellipse"];
  "sha256:a47d710e323311b9160cef70fe09dfd27de6539b3e0d811f08397a11674fcec5" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:d67843a39663537b2697a1cadcdebcdaa9c15c31b23dd2f65a1952644a495491" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:a60f90acefb8db4a998ed1328064ae57ac5c90ea5a4a18c7bba69ef3225163ec" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-amd64.tar.gz\" \t&& echo \"8d18ef91cc3413fecd238647a71d9c19f710b9ad843bb49ead0b4960df653f5e  go$GO_VERSION.linux-alpine-amd64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-amd64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-amd64.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:61a078e6b42bd15c353aba2c55645dbda316115bf485fb517bfa47bed4bbd328" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:4a81b26497a4141895e8a103604c98d5b39eced71d0a15c09ed39bb0b0376f6b" [label="mkdir{path=/go}" shape="note"];
  "sha256:0f5bc79fbefd23043d105650725920a469fe255dc21c5ab8703304e399edbef2" [label="sha256:0f5bc79fbefd23043d105650725920a469fe255dc21c5ab8703304e399edbef2" shape="plaintext"];
  "sha256:74132e9416e44a7f514cc1b1279a6254a3c3579469aeba6771c4a248e1eb3378" -> "sha256:a47d710e323311b9160cef70fe09dfd27de6539b3e0d811f08397a11674fcec5" [label=""];
  "sha256:a47d710e323311b9160cef70fe09dfd27de6539b3e0d811f08397a11674fcec5" -> "sha256:d67843a39663537b2697a1cadcdebcdaa9c15c31b23dd2f65a1952644a495491" [label=""];
  "sha256:d67843a39663537b2697a1cadcdebcdaa9c15c31b23dd2f65a1952644a495491" -> "sha256:a60f90acefb8db4a998ed1328064ae57ac5c90ea5a4a18c7bba69ef3225163ec" [label=""];
  "sha256:a60f90acefb8db4a998ed1328064ae57ac5c90ea5a4a18c7bba69ef3225163ec" -> "sha256:61a078e6b42bd15c353aba2c55645dbda316115bf485fb517bfa47bed4bbd328" [label=""];
  "sha256:61a078e6b42bd15c353aba2c55645dbda316115bf485fb517bfa47bed4bbd328" -> "sha256:4a81b26497a4141895e8a103604c98d5b39eced71d0a15c09ed39bb0b0376f6b" [label=""];
  "sha256:4a81b26497a4141895e8a103604c98d5b39eced71d0a15c09ed39bb0b0376f6b" -> "sha256:0f5bc79fbefd23043d105650725920a469fe255dc21c5ab8703304e399edbef2" [label=""];
}

