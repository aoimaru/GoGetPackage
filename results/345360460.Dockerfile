[app/sources/345360460.Dockerfile]
digraph {
  "sha256:63705f088e1c9304140ec904d719b45eb2f8a636be4540322109efb38372fafb" [label="docker-image://docker.io/balenalib/stem-x86-32-alpine:3.7-run" shape="ellipse"];
  "sha256:cf876a80de583a112dc67deb3709d56e772fd5f0d1dc847ae9dd476a2f607b06" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:bbabd17724412defbbcece153c354251a561cc0e77c69768b258c7629b9b9c92" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:7a084388e3c40de5054fd9e43fbd5374b20011f2d2c70ddf42818a22e4f02ffd" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-i386.tar.gz\" \t&& echo \"a067180c91867b974959be8f9f5ed76a9da2c111f6481a79fcd573b8f64c58f5  go$GO_VERSION.linux-alpine-i386.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-i386.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-i386.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:0f9e9f82618d0ee15a7e6c059d02451e7d559ed4b389c46e41891bfe05587386" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:ff971f9d7c5dba6b5135591621456d3380b1b899cd3d3a19f7ebe4f26d54d418" [label="mkdir{path=/go}" shape="note"];
  "sha256:b337041786d92ca44a93c720a46c9f5596fe0549141d1ac646b93b5b90f0fc3a" [label="sha256:b337041786d92ca44a93c720a46c9f5596fe0549141d1ac646b93b5b90f0fc3a" shape="plaintext"];
  "sha256:63705f088e1c9304140ec904d719b45eb2f8a636be4540322109efb38372fafb" -> "sha256:cf876a80de583a112dc67deb3709d56e772fd5f0d1dc847ae9dd476a2f607b06" [label=""];
  "sha256:cf876a80de583a112dc67deb3709d56e772fd5f0d1dc847ae9dd476a2f607b06" -> "sha256:bbabd17724412defbbcece153c354251a561cc0e77c69768b258c7629b9b9c92" [label=""];
  "sha256:bbabd17724412defbbcece153c354251a561cc0e77c69768b258c7629b9b9c92" -> "sha256:7a084388e3c40de5054fd9e43fbd5374b20011f2d2c70ddf42818a22e4f02ffd" [label=""];
  "sha256:7a084388e3c40de5054fd9e43fbd5374b20011f2d2c70ddf42818a22e4f02ffd" -> "sha256:0f9e9f82618d0ee15a7e6c059d02451e7d559ed4b389c46e41891bfe05587386" [label=""];
  "sha256:0f9e9f82618d0ee15a7e6c059d02451e7d559ed4b389c46e41891bfe05587386" -> "sha256:ff971f9d7c5dba6b5135591621456d3380b1b899cd3d3a19f7ebe4f26d54d418" [label=""];
  "sha256:ff971f9d7c5dba6b5135591621456d3380b1b899cd3d3a19f7ebe4f26d54d418" -> "sha256:b337041786d92ca44a93c720a46c9f5596fe0549141d1ac646b93b5b90f0fc3a" [label=""];
}

