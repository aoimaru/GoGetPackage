[app/sources/345372964.Dockerfile]
digraph {
  "sha256:a57b906a39b4326f9fae0ca111f4745e132b8c661e581ae121b11fbfb2769b6c" [label="docker-image://docker.io/balenalib/intel-nuc-alpine:edge-run" shape="ellipse"];
  "sha256:099620c147197e60e1e619f4bedbac55d29c0faf912795c9f25e51949b085c3b" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:cd95409d8d05c057a00c2288e1b09f0a3cdc4ab547eb15aa197f269bbe06e6c5" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:eb9b31745d1eb2c4a48e3cca214ffa6403f248dbfe8e3089c5389391c0c25cda" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-amd64.tar.gz\" \t&& echo \"cefdfd2b941303fd25dd06bd04871b12a58a2a9a3d105eb67aed40dac092c863  go$GO_VERSION.linux-alpine-amd64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-amd64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-amd64.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:e8b01abc3f33f2f099494b1076fa411d6ed550cf149360dbc69a238dcfb15934" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:6d9d80a72a5612b9801af320530ae185b44daa179d80a0a1e064b5d5b2f14d40" [label="mkdir{path=/go}" shape="note"];
  "sha256:aa4e88bb0c54d0e5fbc86b36ee2f713f7cea2e0b0414f5a13ccc87a70eb2a203" [label="sha256:aa4e88bb0c54d0e5fbc86b36ee2f713f7cea2e0b0414f5a13ccc87a70eb2a203" shape="plaintext"];
  "sha256:a57b906a39b4326f9fae0ca111f4745e132b8c661e581ae121b11fbfb2769b6c" -> "sha256:099620c147197e60e1e619f4bedbac55d29c0faf912795c9f25e51949b085c3b" [label=""];
  "sha256:099620c147197e60e1e619f4bedbac55d29c0faf912795c9f25e51949b085c3b" -> "sha256:cd95409d8d05c057a00c2288e1b09f0a3cdc4ab547eb15aa197f269bbe06e6c5" [label=""];
  "sha256:cd95409d8d05c057a00c2288e1b09f0a3cdc4ab547eb15aa197f269bbe06e6c5" -> "sha256:eb9b31745d1eb2c4a48e3cca214ffa6403f248dbfe8e3089c5389391c0c25cda" [label=""];
  "sha256:eb9b31745d1eb2c4a48e3cca214ffa6403f248dbfe8e3089c5389391c0c25cda" -> "sha256:e8b01abc3f33f2f099494b1076fa411d6ed550cf149360dbc69a238dcfb15934" [label=""];
  "sha256:e8b01abc3f33f2f099494b1076fa411d6ed550cf149360dbc69a238dcfb15934" -> "sha256:6d9d80a72a5612b9801af320530ae185b44daa179d80a0a1e064b5d5b2f14d40" [label=""];
  "sha256:6d9d80a72a5612b9801af320530ae185b44daa179d80a0a1e064b5d5b2f14d40" -> "sha256:aa4e88bb0c54d0e5fbc86b36ee2f713f7cea2e0b0414f5a13ccc87a70eb2a203" [label=""];
}

