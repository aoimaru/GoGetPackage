[app/sources/345368520.Dockerfile]
digraph {
  "sha256:698e94ca1aa6b86235ccee5a79d6b725fbccf70491838430ff8e5b190e5b53d1" [label="docker-image://docker.io/balenalib/bananapi-m1-plus-ubuntu:trusty-build" shape="ellipse"];
  "sha256:afd4b8300dcf0d2e846a651724ffb05f1e25dabb3c39dc18f664bd6fb8c1d7bc" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:914d0f3f55a44d5d8bf878e75cba7bff2a1e7afc10bed7465a52d15ebe9c1206" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:b73ffa4d5db21f3c92b704dfa7b74f9526f378ea66fa4fd38e758504720daef2" [label="mkdir{path=/go}" shape="note"];
  "sha256:22074a7493e404874bce96caf18967648ca545d380f565f2d22c51c23ad7503a" [label="sha256:22074a7493e404874bce96caf18967648ca545d380f565f2d22c51c23ad7503a" shape="plaintext"];
  "sha256:698e94ca1aa6b86235ccee5a79d6b725fbccf70491838430ff8e5b190e5b53d1" -> "sha256:afd4b8300dcf0d2e846a651724ffb05f1e25dabb3c39dc18f664bd6fb8c1d7bc" [label=""];
  "sha256:afd4b8300dcf0d2e846a651724ffb05f1e25dabb3c39dc18f664bd6fb8c1d7bc" -> "sha256:914d0f3f55a44d5d8bf878e75cba7bff2a1e7afc10bed7465a52d15ebe9c1206" [label=""];
  "sha256:914d0f3f55a44d5d8bf878e75cba7bff2a1e7afc10bed7465a52d15ebe9c1206" -> "sha256:b73ffa4d5db21f3c92b704dfa7b74f9526f378ea66fa4fd38e758504720daef2" [label=""];
  "sha256:b73ffa4d5db21f3c92b704dfa7b74f9526f378ea66fa4fd38e758504720daef2" -> "sha256:22074a7493e404874bce96caf18967648ca545d380f565f2d22c51c23ad7503a" [label=""];
}

