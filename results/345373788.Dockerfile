[app/sources/345373788.Dockerfile]
digraph {
  "sha256:925f5c026732e47dff12362445b8784211a621bdcf7e157dc62f52a910b3a06c" [label="docker-image://docker.io/balenalib/nanopc-t4-alpine:3.7-run" shape="ellipse"];
  "sha256:ad27dd7b167092b53513972470bda0c8b98016fe50b8bceff29934505adc6128" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:67566f622b96fc771700cc13b15098dae4af12bb512a55b4f7cbdc09da54f07d" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:04480b103adf7021da52320f7812fae9a731528a22d36954ce1c75330369f6ea" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-aarch64.tar.gz\" \t&& echo \"3c8658ee1761b83c05027e1d60d13857d64e3d116efe0ebe9dcce353fa0d1232  go$GO_VERSION.linux-alpine-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-aarch64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-aarch64.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:ae39075597d174213bc29b25da60889c5528c24b15b2dd94ac30487d5be2864c" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:e6c479cc83d1891abcba182d4e62758d0f270a329de3a77d0e00a32171141a80" [label="mkdir{path=/go}" shape="note"];
  "sha256:ed50882095d7e81604b519b16b1e86fe4db67f8fed1ad218c0bc5a05f69c152e" [label="sha256:ed50882095d7e81604b519b16b1e86fe4db67f8fed1ad218c0bc5a05f69c152e" shape="plaintext"];
  "sha256:925f5c026732e47dff12362445b8784211a621bdcf7e157dc62f52a910b3a06c" -> "sha256:ad27dd7b167092b53513972470bda0c8b98016fe50b8bceff29934505adc6128" [label=""];
  "sha256:ad27dd7b167092b53513972470bda0c8b98016fe50b8bceff29934505adc6128" -> "sha256:67566f622b96fc771700cc13b15098dae4af12bb512a55b4f7cbdc09da54f07d" [label=""];
  "sha256:67566f622b96fc771700cc13b15098dae4af12bb512a55b4f7cbdc09da54f07d" -> "sha256:04480b103adf7021da52320f7812fae9a731528a22d36954ce1c75330369f6ea" [label=""];
  "sha256:04480b103adf7021da52320f7812fae9a731528a22d36954ce1c75330369f6ea" -> "sha256:ae39075597d174213bc29b25da60889c5528c24b15b2dd94ac30487d5be2864c" [label=""];
  "sha256:ae39075597d174213bc29b25da60889c5528c24b15b2dd94ac30487d5be2864c" -> "sha256:e6c479cc83d1891abcba182d4e62758d0f270a329de3a77d0e00a32171141a80" [label=""];
  "sha256:e6c479cc83d1891abcba182d4e62758d0f270a329de3a77d0e00a32171141a80" -> "sha256:ed50882095d7e81604b519b16b1e86fe4db67f8fed1ad218c0bc5a05f69c152e" [label=""];
}

