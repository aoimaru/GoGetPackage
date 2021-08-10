[app/sources/345368649.Dockerfile]
digraph {
  "sha256:98069b5a94ffc44d797e1496a2d99c4370818c2cc56e0d9dece8034116ec22e6" [label="docker-image://docker.io/balenalib/beaglebone-black-alpine:3.7-run" shape="ellipse"];
  "sha256:8c5391e8ca7656dc6bd8424b25ce1d4a4cde6461251428f86218afc641fcba1f" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:f14992e01597385dce8368c9081caee607d4c18d743ca088e927ef0950df56be" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:fbd92728a06b9448a5c9c236ff2762d359ec97d4a79140f68628e41b8dba723e" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"92e208c8828ea41fb61e881b49fe883fba12f3730ec72a49b64be0ae74bb486d  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:4a4a893f84f9658736922863ce0b25044956b546ba3cec5a66206fbf3a4f51c1" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:22fd1168531a54718cf243cd3bf0a194e0d8dc7ceb77e0921aed2d2a0bad4219" [label="mkdir{path=/go}" shape="note"];
  "sha256:b3b81b4207f548431e9da95265fd70cad0b77d5721b7a502d6df40cf304e60a1" [label="sha256:b3b81b4207f548431e9da95265fd70cad0b77d5721b7a502d6df40cf304e60a1" shape="plaintext"];
  "sha256:98069b5a94ffc44d797e1496a2d99c4370818c2cc56e0d9dece8034116ec22e6" -> "sha256:8c5391e8ca7656dc6bd8424b25ce1d4a4cde6461251428f86218afc641fcba1f" [label=""];
  "sha256:8c5391e8ca7656dc6bd8424b25ce1d4a4cde6461251428f86218afc641fcba1f" -> "sha256:f14992e01597385dce8368c9081caee607d4c18d743ca088e927ef0950df56be" [label=""];
  "sha256:f14992e01597385dce8368c9081caee607d4c18d743ca088e927ef0950df56be" -> "sha256:fbd92728a06b9448a5c9c236ff2762d359ec97d4a79140f68628e41b8dba723e" [label=""];
  "sha256:fbd92728a06b9448a5c9c236ff2762d359ec97d4a79140f68628e41b8dba723e" -> "sha256:4a4a893f84f9658736922863ce0b25044956b546ba3cec5a66206fbf3a4f51c1" [label=""];
  "sha256:4a4a893f84f9658736922863ce0b25044956b546ba3cec5a66206fbf3a4f51c1" -> "sha256:22fd1168531a54718cf243cd3bf0a194e0d8dc7ceb77e0921aed2d2a0bad4219" [label=""];
  "sha256:22fd1168531a54718cf243cd3bf0a194e0d8dc7ceb77e0921aed2d2a0bad4219" -> "sha256:b3b81b4207f548431e9da95265fd70cad0b77d5721b7a502d6df40cf304e60a1" [label=""];
}

