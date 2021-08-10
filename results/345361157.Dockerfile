[app/sources/345361157.Dockerfile]
digraph {
  "sha256:01a30ba8a963efda9a475ed0af594739dc12384cf186457af614aed5d19c9529" [label="docker-image://docker.io/balenalib/up-board-alpine:3.9-run@sha256:d088634af382793fc8e44e70046b31b46f77d1785fc5327a24865261cd134e7f" shape="ellipse"];
  "sha256:1c696b034364d465acd79bc124319870934e4aa1a17d882e377ba9201631f431" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:e83bfe111fddcd4ccdda49acbf4061bb48da7c3f81df030f11e555c24d898fd9" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:f21341eb515be97645bca660b43bfb453af9e97b76d9d66183cec7489083d110" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-amd64.tar.gz\" \t&& echo \"8d18ef91cc3413fecd238647a71d9c19f710b9ad843bb49ead0b4960df653f5e  go$GO_VERSION.linux-alpine-amd64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-amd64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-amd64.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:5e3ed9a88677f5b3d9c330bd6fdb7a70e4df37035b33d9e34bdcef5979aa2419" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:587b8acf0a6457992f44f55d1279e1f7f12b39755e49234f2354256b52a9a501" [label="mkdir{path=/go}" shape="note"];
  "sha256:754d8228e84dd09d384fd83e4bb7f1ec76349c576cb6b3199029b47ce6351bb7" [label="sha256:754d8228e84dd09d384fd83e4bb7f1ec76349c576cb6b3199029b47ce6351bb7" shape="plaintext"];
  "sha256:01a30ba8a963efda9a475ed0af594739dc12384cf186457af614aed5d19c9529" -> "sha256:1c696b034364d465acd79bc124319870934e4aa1a17d882e377ba9201631f431" [label=""];
  "sha256:1c696b034364d465acd79bc124319870934e4aa1a17d882e377ba9201631f431" -> "sha256:e83bfe111fddcd4ccdda49acbf4061bb48da7c3f81df030f11e555c24d898fd9" [label=""];
  "sha256:e83bfe111fddcd4ccdda49acbf4061bb48da7c3f81df030f11e555c24d898fd9" -> "sha256:f21341eb515be97645bca660b43bfb453af9e97b76d9d66183cec7489083d110" [label=""];
  "sha256:f21341eb515be97645bca660b43bfb453af9e97b76d9d66183cec7489083d110" -> "sha256:5e3ed9a88677f5b3d9c330bd6fdb7a70e4df37035b33d9e34bdcef5979aa2419" [label=""];
  "sha256:5e3ed9a88677f5b3d9c330bd6fdb7a70e4df37035b33d9e34bdcef5979aa2419" -> "sha256:587b8acf0a6457992f44f55d1279e1f7f12b39755e49234f2354256b52a9a501" [label=""];
  "sha256:587b8acf0a6457992f44f55d1279e1f7f12b39755e49234f2354256b52a9a501" -> "sha256:754d8228e84dd09d384fd83e4bb7f1ec76349c576cb6b3199029b47ce6351bb7" [label=""];
}

