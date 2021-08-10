[app/sources/345373680.Dockerfile]
digraph {
  "sha256:bce035671165b44f8c6201ad847cf5c609c9fd7075812842691f93e17fabcafa" [label="docker-image://docker.io/balenalib/n510-tx2-alpine:3.8-run" shape="ellipse"];
  "sha256:67085ca6465ababa317d6145380a9bc65bae711dc27d9c69af12dd0e80f074ff" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:bb098de89cb5cfb2be7d940d785cd2f7b141a435ccd58569de436dcff2a057da" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:c0eea25ff3eed9f8670d0b07e83015f8ec998c037c8b7fa702bfe91b3ff8e6ad" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-aarch64.tar.gz\" \t&& echo \"3c8658ee1761b83c05027e1d60d13857d64e3d116efe0ebe9dcce353fa0d1232  go$GO_VERSION.linux-alpine-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-aarch64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-aarch64.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:d736bc60b7c64f3d547ca09a22db249f5f577594b3e9bf180c2df7ad79f9cdea" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:8203999ee23031a242da17f616ef796697538fd5af2eb3d0df137a90e93c9a8b" [label="mkdir{path=/go}" shape="note"];
  "sha256:2dff2a19545f17d0cae7fa10fad4cf6f1b0d38afe39052de0ecffad842507c49" [label="sha256:2dff2a19545f17d0cae7fa10fad4cf6f1b0d38afe39052de0ecffad842507c49" shape="plaintext"];
  "sha256:bce035671165b44f8c6201ad847cf5c609c9fd7075812842691f93e17fabcafa" -> "sha256:67085ca6465ababa317d6145380a9bc65bae711dc27d9c69af12dd0e80f074ff" [label=""];
  "sha256:67085ca6465ababa317d6145380a9bc65bae711dc27d9c69af12dd0e80f074ff" -> "sha256:bb098de89cb5cfb2be7d940d785cd2f7b141a435ccd58569de436dcff2a057da" [label=""];
  "sha256:bb098de89cb5cfb2be7d940d785cd2f7b141a435ccd58569de436dcff2a057da" -> "sha256:c0eea25ff3eed9f8670d0b07e83015f8ec998c037c8b7fa702bfe91b3ff8e6ad" [label=""];
  "sha256:c0eea25ff3eed9f8670d0b07e83015f8ec998c037c8b7fa702bfe91b3ff8e6ad" -> "sha256:d736bc60b7c64f3d547ca09a22db249f5f577594b3e9bf180c2df7ad79f9cdea" [label=""];
  "sha256:d736bc60b7c64f3d547ca09a22db249f5f577594b3e9bf180c2df7ad79f9cdea" -> "sha256:8203999ee23031a242da17f616ef796697538fd5af2eb3d0df137a90e93c9a8b" [label=""];
  "sha256:8203999ee23031a242da17f616ef796697538fd5af2eb3d0df137a90e93c9a8b" -> "sha256:2dff2a19545f17d0cae7fa10fad4cf6f1b0d38afe39052de0ecffad842507c49" [label=""];
}

