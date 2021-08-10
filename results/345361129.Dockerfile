[app/sources/345361129.Dockerfile]
digraph {
  "sha256:09b9ea5ebd5a24254e852f626365f3607846e6eaf185f29e720b1dd8513fa7ed" [label="docker-image://docker.io/balenalib/up-board-alpine:3.7-build" shape="ellipse"];
  "sha256:9106d80b48f60a7a08802c72f3f9dbc65800ae7f583b28bbd15fee2fc180c64d" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:4d14bbf4c2cd3a57a774212ca71de2ac321c9c97d8110499db90c728f8138c5e" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-amd64.tar.gz\" \t&& echo \"8d18ef91cc3413fecd238647a71d9c19f710b9ad843bb49ead0b4960df653f5e  go$GO_VERSION.linux-alpine-amd64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-amd64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-amd64.tar.gz" shape="box"];
  "sha256:39a0154bbaf2d9013f4bc76b33f4dfe020d745ee2e3f78c36264afc4d78df907" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:df40f60936e6e1694b549cb29ab1e73f0e4728408de9e1e0806eec4c73d36a27" [label="mkdir{path=/go}" shape="note"];
  "sha256:3af95dff3948bb059898564ec55d7896b9f6ebf0fa2ff9e0f465049c964501da" [label="sha256:3af95dff3948bb059898564ec55d7896b9f6ebf0fa2ff9e0f465049c964501da" shape="plaintext"];
  "sha256:09b9ea5ebd5a24254e852f626365f3607846e6eaf185f29e720b1dd8513fa7ed" -> "sha256:9106d80b48f60a7a08802c72f3f9dbc65800ae7f583b28bbd15fee2fc180c64d" [label=""];
  "sha256:9106d80b48f60a7a08802c72f3f9dbc65800ae7f583b28bbd15fee2fc180c64d" -> "sha256:4d14bbf4c2cd3a57a774212ca71de2ac321c9c97d8110499db90c728f8138c5e" [label=""];
  "sha256:4d14bbf4c2cd3a57a774212ca71de2ac321c9c97d8110499db90c728f8138c5e" -> "sha256:39a0154bbaf2d9013f4bc76b33f4dfe020d745ee2e3f78c36264afc4d78df907" [label=""];
  "sha256:39a0154bbaf2d9013f4bc76b33f4dfe020d745ee2e3f78c36264afc4d78df907" -> "sha256:df40f60936e6e1694b549cb29ab1e73f0e4728408de9e1e0806eec4c73d36a27" [label=""];
  "sha256:df40f60936e6e1694b549cb29ab1e73f0e4728408de9e1e0806eec4c73d36a27" -> "sha256:3af95dff3948bb059898564ec55d7896b9f6ebf0fa2ff9e0f465049c964501da" [label=""];
}

