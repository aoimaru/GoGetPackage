[app/sources/345360654.Dockerfile]
digraph {
  "sha256:dc50034ecdd9e3d8ca6b6d0cca85fe28c5c658b55f9b4e79e3bbc8c9306d121b" [label="docker-image://docker.io/balenalib/surface-pro-6-alpine:3.8-run" shape="ellipse"];
  "sha256:aad090039470eac59c67d21a08dfaf800ad48bb5ec5edcbcc83ca61b66dec373" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:62722716939afeacbf37833c182ed5f26627be5c52345a9aae7841b069359ae8" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:a89e48f273a925c290413cf6594c778f56bd58342970830300646997c5f7a8c7" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-amd64.tar.gz\" \t&& echo \"cefdfd2b941303fd25dd06bd04871b12a58a2a9a3d105eb67aed40dac092c863  go$GO_VERSION.linux-alpine-amd64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-amd64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-amd64.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:aac5878c78e7c01b647fc851b92c5c014fa1d7725a46bf4e7916b15f8592f53f" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:381aac7eed07f75fff17d03b499e7e555acec8320f2e65e3fd369d6131dd862f" [label="mkdir{path=/go}" shape="note"];
  "sha256:c63cc32533350c0a380ce23f7120487bd10059e906b42aad4b1ed5624eb846fa" [label="sha256:c63cc32533350c0a380ce23f7120487bd10059e906b42aad4b1ed5624eb846fa" shape="plaintext"];
  "sha256:dc50034ecdd9e3d8ca6b6d0cca85fe28c5c658b55f9b4e79e3bbc8c9306d121b" -> "sha256:aad090039470eac59c67d21a08dfaf800ad48bb5ec5edcbcc83ca61b66dec373" [label=""];
  "sha256:aad090039470eac59c67d21a08dfaf800ad48bb5ec5edcbcc83ca61b66dec373" -> "sha256:62722716939afeacbf37833c182ed5f26627be5c52345a9aae7841b069359ae8" [label=""];
  "sha256:62722716939afeacbf37833c182ed5f26627be5c52345a9aae7841b069359ae8" -> "sha256:a89e48f273a925c290413cf6594c778f56bd58342970830300646997c5f7a8c7" [label=""];
  "sha256:a89e48f273a925c290413cf6594c778f56bd58342970830300646997c5f7a8c7" -> "sha256:aac5878c78e7c01b647fc851b92c5c014fa1d7725a46bf4e7916b15f8592f53f" [label=""];
  "sha256:aac5878c78e7c01b647fc851b92c5c014fa1d7725a46bf4e7916b15f8592f53f" -> "sha256:381aac7eed07f75fff17d03b499e7e555acec8320f2e65e3fd369d6131dd862f" [label=""];
  "sha256:381aac7eed07f75fff17d03b499e7e555acec8320f2e65e3fd369d6131dd862f" -> "sha256:c63cc32533350c0a380ce23f7120487bd10059e906b42aad4b1ed5624eb846fa" [label=""];
}

