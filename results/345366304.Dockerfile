[app/sources/345366304.Dockerfile]
digraph {
  "sha256:800f9b607f7c2875f953fb410a6e9341e935658c2873cf3a57f380a20af28461" [label="docker-image://docker.io/balenalib/i386-alpine:edge-build" shape="ellipse"];
  "sha256:550f1c11a396d6da17d0e9f730db599790d8da44bf281eeb604f446cfd2f02df" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:b2e5d81d75aa6ca5556d86a31f023c16105aa73cb52a20994643cebaa615facc" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-i386.tar.gz\" \t&& echo \"7f91d1816d92bdd52693555403be54d1b868df4e7a70074effab8d0d80d6ab7f  go$GO_VERSION.linux-alpine-i386.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-i386.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-i386.tar.gz" shape="box"];
  "sha256:0a9c613ea33fa17174f0de38cedb6959138e0a3dfa6b20e9b5973f04af087fab" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:fe5fe1b84e4126dff964be84a2b21b12514633f73c4a07b5e88546f34d060a70" [label="mkdir{path=/go}" shape="note"];
  "sha256:7d79d4f05b19642b8fb287463727b8164de139668f80bc52426a71530880eac9" [label="sha256:7d79d4f05b19642b8fb287463727b8164de139668f80bc52426a71530880eac9" shape="plaintext"];
  "sha256:800f9b607f7c2875f953fb410a6e9341e935658c2873cf3a57f380a20af28461" -> "sha256:550f1c11a396d6da17d0e9f730db599790d8da44bf281eeb604f446cfd2f02df" [label=""];
  "sha256:550f1c11a396d6da17d0e9f730db599790d8da44bf281eeb604f446cfd2f02df" -> "sha256:b2e5d81d75aa6ca5556d86a31f023c16105aa73cb52a20994643cebaa615facc" [label=""];
  "sha256:b2e5d81d75aa6ca5556d86a31f023c16105aa73cb52a20994643cebaa615facc" -> "sha256:0a9c613ea33fa17174f0de38cedb6959138e0a3dfa6b20e9b5973f04af087fab" [label=""];
  "sha256:0a9c613ea33fa17174f0de38cedb6959138e0a3dfa6b20e9b5973f04af087fab" -> "sha256:fe5fe1b84e4126dff964be84a2b21b12514633f73c4a07b5e88546f34d060a70" [label=""];
  "sha256:fe5fe1b84e4126dff964be84a2b21b12514633f73c4a07b5e88546f34d060a70" -> "sha256:7d79d4f05b19642b8fb287463727b8164de139668f80bc52426a71530880eac9" [label=""];
}

