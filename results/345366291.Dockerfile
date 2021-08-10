[app/sources/345366291.Dockerfile]
digraph {
  "sha256:a85fa3093d7c42f485e808e15ccb25e86402327025dfbacd851f6cfd41a40ac5" [label="docker-image://docker.io/balenalib/i386-alpine:3.7-run" shape="ellipse"];
  "sha256:e7a99afd189f0b98d38518482a988cdcc96650cfcdc2e48cbe26e73820a60b59" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:159b1233e5c5fb6ba9a1b6b2f246f9ba70d0aa2b15a97c7037eda4177afeba39" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:4c47da03b95ab48c708dfec0244f706526a28946421b731a544251225bc2b320" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-i386.tar.gz\" \t&& echo \"a067180c91867b974959be8f9f5ed76a9da2c111f6481a79fcd573b8f64c58f5  go$GO_VERSION.linux-alpine-i386.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-i386.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-i386.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:b8ea5d0ec68b7ecfb480b873140cc4a39c395eb4ff4bc7d6eadea45b33969cf3" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:bc0dbe9b36114d5ebb984903286f741ac6cf9f91353b5e042180ad31ecd933b8" [label="mkdir{path=/go}" shape="note"];
  "sha256:829e03393536c8dd9518ac96ea476549c32e71625be47542abc893532ced6623" [label="sha256:829e03393536c8dd9518ac96ea476549c32e71625be47542abc893532ced6623" shape="plaintext"];
  "sha256:a85fa3093d7c42f485e808e15ccb25e86402327025dfbacd851f6cfd41a40ac5" -> "sha256:e7a99afd189f0b98d38518482a988cdcc96650cfcdc2e48cbe26e73820a60b59" [label=""];
  "sha256:e7a99afd189f0b98d38518482a988cdcc96650cfcdc2e48cbe26e73820a60b59" -> "sha256:159b1233e5c5fb6ba9a1b6b2f246f9ba70d0aa2b15a97c7037eda4177afeba39" [label=""];
  "sha256:159b1233e5c5fb6ba9a1b6b2f246f9ba70d0aa2b15a97c7037eda4177afeba39" -> "sha256:4c47da03b95ab48c708dfec0244f706526a28946421b731a544251225bc2b320" [label=""];
  "sha256:4c47da03b95ab48c708dfec0244f706526a28946421b731a544251225bc2b320" -> "sha256:b8ea5d0ec68b7ecfb480b873140cc4a39c395eb4ff4bc7d6eadea45b33969cf3" [label=""];
  "sha256:b8ea5d0ec68b7ecfb480b873140cc4a39c395eb4ff4bc7d6eadea45b33969cf3" -> "sha256:bc0dbe9b36114d5ebb984903286f741ac6cf9f91353b5e042180ad31ecd933b8" [label=""];
  "sha256:bc0dbe9b36114d5ebb984903286f741ac6cf9f91353b5e042180ad31ecd933b8" -> "sha256:829e03393536c8dd9518ac96ea476549c32e71625be47542abc893532ced6623" [label=""];
}

