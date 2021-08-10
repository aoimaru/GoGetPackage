[app/sources/320100277.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:df8a96253a9f7f86372ad2f8f5efc052cd3f326a9b2cd56d333408a0de4ea11a" [label="/bin/sh -c apk --no-cache add \tca-certificates" shape="box"];
  "sha256:d4763b07e4d1b42fa64ba724ff2e9128f15134191ed8f95047c001052f2a3c9f" [label="/bin/sh -c buildDeps=' \t\tgo \t\tgit \t\tgcc \t\tg++ \t\tlibc-dev \t\tlibgcc \t' \tset -x \t&& apk --no-cache add --repository https://dl-3.alpinelinux.org/alpine/edge/community $buildDeps \t&& go get github.com/bitly/oauth2_proxy || true \t&& cd /go/src/github.com/bitly/oauth2_proxy \t&& git checkout \"${OAUTH2_VERSION}\" \t&& go get -d github.com/bitly/oauth2_proxy || true \t&& go get gopkg.in/fsnotify/fsnotify.v1 \t&& mv \"${GOPATH}/src/gopkg.in/fsnotify/fsnotify.v1\" \"${GOPATH}/src/gopkg.in/fsnotify.v1\" \t&& go build \t&& mv oauth2_proxy /usr/bin/ \t&& apk del $buildDeps \t&& rm -rf /go \t&& echo \"Build complete.\"" shape="box"];
  "sha256:73bba79b6566c23c47985fba30e214ee5b897022a6d564ce18dc3f618d7b7a30" [label="sha256:73bba79b6566c23c47985fba30e214ee5b897022a6d564ce18dc3f618d7b7a30" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:df8a96253a9f7f86372ad2f8f5efc052cd3f326a9b2cd56d333408a0de4ea11a" [label=""];
  "sha256:df8a96253a9f7f86372ad2f8f5efc052cd3f326a9b2cd56d333408a0de4ea11a" -> "sha256:d4763b07e4d1b42fa64ba724ff2e9128f15134191ed8f95047c001052f2a3c9f" [label=""];
  "sha256:d4763b07e4d1b42fa64ba724ff2e9128f15134191ed8f95047c001052f2a3c9f" -> "sha256:73bba79b6566c23c47985fba30e214ee5b897022a6d564ce18dc3f618d7b7a30" [label=""];
}

