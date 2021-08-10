[app/sources/345373568.Dockerfile]
digraph {
  "sha256:c7f3730eecfcc5e6389d7973db37c555c842ddf0323f8df03303d968d6dd8e78" [label="docker-image://docker.io/balenalib/kitra710-alpine:3.8-run" shape="ellipse"];
  "sha256:dacdb0e5dd8671c0e7fd9b262d7c14d5d2913aff2dd04ad0800dfa16105444ae" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:612f534f33841583eaeda49b1faad620ba66d25b7589cfa557cb76897416aa72" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:95aac2daf928e235538697ff899d160c9beef30e4f602024d2a881be178f690b" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-aarch64.tar.gz\" \t&& echo \"03fee34f3aad11399ce846dbab0fb24e2f17f425eb5d7f52af67642e09c0ed28  go$GO_VERSION.linux-alpine-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-aarch64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-aarch64.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:e6a46f525eece5e9c9c45cf7abb565d863263d77f1b83f6909af9e58869f6f91" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:3c503e2e9a3c05d25e6522beb0b7224d30ff04cc6dbb0fe4abdf6a746448a180" [label="mkdir{path=/go}" shape="note"];
  "sha256:8f50b0affaa9720362a862670d12a30f3e05b53709745bb30c756c9829689779" [label="sha256:8f50b0affaa9720362a862670d12a30f3e05b53709745bb30c756c9829689779" shape="plaintext"];
  "sha256:c7f3730eecfcc5e6389d7973db37c555c842ddf0323f8df03303d968d6dd8e78" -> "sha256:dacdb0e5dd8671c0e7fd9b262d7c14d5d2913aff2dd04ad0800dfa16105444ae" [label=""];
  "sha256:dacdb0e5dd8671c0e7fd9b262d7c14d5d2913aff2dd04ad0800dfa16105444ae" -> "sha256:612f534f33841583eaeda49b1faad620ba66d25b7589cfa557cb76897416aa72" [label=""];
  "sha256:612f534f33841583eaeda49b1faad620ba66d25b7589cfa557cb76897416aa72" -> "sha256:95aac2daf928e235538697ff899d160c9beef30e4f602024d2a881be178f690b" [label=""];
  "sha256:95aac2daf928e235538697ff899d160c9beef30e4f602024d2a881be178f690b" -> "sha256:e6a46f525eece5e9c9c45cf7abb565d863263d77f1b83f6909af9e58869f6f91" [label=""];
  "sha256:e6a46f525eece5e9c9c45cf7abb565d863263d77f1b83f6909af9e58869f6f91" -> "sha256:3c503e2e9a3c05d25e6522beb0b7224d30ff04cc6dbb0fe4abdf6a746448a180" [label=""];
  "sha256:3c503e2e9a3c05d25e6522beb0b7224d30ff04cc6dbb0fe4abdf6a746448a180" -> "sha256:8f50b0affaa9720362a862670d12a30f3e05b53709745bb30c756c9829689779" [label=""];
}

