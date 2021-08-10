[app/sources/345357712.Dockerfile]
digraph {
  "sha256:f44415cac889e443013b32effd3501b8b3babca6721000af57184c72ce7973b9" [label="docker-image://docker.io/balenalib/qemux86-64-alpine:3.5-build" shape="ellipse"];
  "sha256:9868fe1c19ce509281eaeb40069efe81bd914ae1b9aa2d6c52929ebbacf42ed4" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:5562f6039511227b30ed0b9a32e76e1e54353b0837ece0bbc7399d2c471d03bc" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-amd64.tar.gz\" \t&& echo \"cefdfd2b941303fd25dd06bd04871b12a58a2a9a3d105eb67aed40dac092c863  go$GO_VERSION.linux-alpine-amd64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-amd64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-amd64.tar.gz" shape="box"];
  "sha256:956605504876dd0c603f6d468607b1ba030bde536423b9d6e68313b330e57de9" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:d115d0787ea8fb5b0b2da0865c71e2d9238b7623bca0d2ce6f99c5f8a02eda5d" [label="mkdir{path=/go}" shape="note"];
  "sha256:7f0adff9fb70b0ce0696f63ef03a298b2f0b66cfa9803e90213b8f9d2d554cca" [label="sha256:7f0adff9fb70b0ce0696f63ef03a298b2f0b66cfa9803e90213b8f9d2d554cca" shape="plaintext"];
  "sha256:f44415cac889e443013b32effd3501b8b3babca6721000af57184c72ce7973b9" -> "sha256:9868fe1c19ce509281eaeb40069efe81bd914ae1b9aa2d6c52929ebbacf42ed4" [label=""];
  "sha256:9868fe1c19ce509281eaeb40069efe81bd914ae1b9aa2d6c52929ebbacf42ed4" -> "sha256:5562f6039511227b30ed0b9a32e76e1e54353b0837ece0bbc7399d2c471d03bc" [label=""];
  "sha256:5562f6039511227b30ed0b9a32e76e1e54353b0837ece0bbc7399d2c471d03bc" -> "sha256:956605504876dd0c603f6d468607b1ba030bde536423b9d6e68313b330e57de9" [label=""];
  "sha256:956605504876dd0c603f6d468607b1ba030bde536423b9d6e68313b330e57de9" -> "sha256:d115d0787ea8fb5b0b2da0865c71e2d9238b7623bca0d2ce6f99c5f8a02eda5d" [label=""];
  "sha256:d115d0787ea8fb5b0b2da0865c71e2d9238b7623bca0d2ce6f99c5f8a02eda5d" -> "sha256:7f0adff9fb70b0ce0696f63ef03a298b2f0b66cfa9803e90213b8f9d2d554cca" [label=""];
}

