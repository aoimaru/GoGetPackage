[app/sources/345367772.Dockerfile]
digraph {
  "sha256:d99895442b70dc517565854e95f31066012d6e25a575cac6d620553900160344" [label="docker-image://docker.io/balenalib/artik5-alpine:3.6-build" shape="ellipse"];
  "sha256:31bfccfeb005b57441d748d8b0a0eee15780fa03d5b0dd20de184ae2171e0784" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:ca77a39872c97a4d2d28e063d0c8de5648dd316c42c6fc01ffd8d4d982e668f5" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"92e208c8828ea41fb61e881b49fe883fba12f3730ec72a49b64be0ae74bb486d  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz" shape="box"];
  "sha256:18435775d8883a0eec6771b8003d6a3353442357102e1f2528d7c99f350878a9" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:5ad05e350e2a8db0f79e6644af28ba96442e30bb09b81051efa5a1ea60110579" [label="mkdir{path=/go}" shape="note"];
  "sha256:c6b6b356db595169b5cc535f9f9b7cbda893cebff3d83a17e23bd71a56909cbb" [label="sha256:c6b6b356db595169b5cc535f9f9b7cbda893cebff3d83a17e23bd71a56909cbb" shape="plaintext"];
  "sha256:d99895442b70dc517565854e95f31066012d6e25a575cac6d620553900160344" -> "sha256:31bfccfeb005b57441d748d8b0a0eee15780fa03d5b0dd20de184ae2171e0784" [label=""];
  "sha256:31bfccfeb005b57441d748d8b0a0eee15780fa03d5b0dd20de184ae2171e0784" -> "sha256:ca77a39872c97a4d2d28e063d0c8de5648dd316c42c6fc01ffd8d4d982e668f5" [label=""];
  "sha256:ca77a39872c97a4d2d28e063d0c8de5648dd316c42c6fc01ffd8d4d982e668f5" -> "sha256:18435775d8883a0eec6771b8003d6a3353442357102e1f2528d7c99f350878a9" [label=""];
  "sha256:18435775d8883a0eec6771b8003d6a3353442357102e1f2528d7c99f350878a9" -> "sha256:5ad05e350e2a8db0f79e6644af28ba96442e30bb09b81051efa5a1ea60110579" [label=""];
  "sha256:5ad05e350e2a8db0f79e6644af28ba96442e30bb09b81051efa5a1ea60110579" -> "sha256:c6b6b356db595169b5cc535f9f9b7cbda893cebff3d83a17e23bd71a56909cbb" [label=""];
}

