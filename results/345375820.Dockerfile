[app/sources/345375820.Dockerfile]
digraph {
  "sha256:a49cd47829489458a131b5f86e64840b2f178b9460c432e5c34da4956a8c5777" [label="docker-image://docker.io/balenalib/orange-pi-zero-fedora:28-run@sha256:d8919e6c5faac88b7b88bd0794087cfcde6c73cef0cac9d0fcb7433dc71dd952" shape="ellipse"];
  "sha256:c9a2709e09c4c6bd95a30c0511aa131edcc8e71fea8661b1bff9c97b1504f05d" [label="/bin/sh -c dnf install -y \t\tgcc-c++ \t\tgcc \t\tgit \t&& dnf clean all" shape="box"];
  "sha256:e6fb8878bcc6db5b80c411173ad8c2e73949632159d1d11d9ae62f7b4474df6a" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:fbce06664ac66735c71528071564f5c719a3123dccada05c6433a4b04a0a54b5" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:2c12cda9450eb82c7ee1398ba4883c1e4de264e9446abdef38dc7becb527a242" [label="mkdir{path=/go}" shape="note"];
  "sha256:19be543924264c89fae083ea443aaa9b4d765f7319be1c630d4e2c01e7e9ac5b" [label="sha256:19be543924264c89fae083ea443aaa9b4d765f7319be1c630d4e2c01e7e9ac5b" shape="plaintext"];
  "sha256:a49cd47829489458a131b5f86e64840b2f178b9460c432e5c34da4956a8c5777" -> "sha256:c9a2709e09c4c6bd95a30c0511aa131edcc8e71fea8661b1bff9c97b1504f05d" [label=""];
  "sha256:c9a2709e09c4c6bd95a30c0511aa131edcc8e71fea8661b1bff9c97b1504f05d" -> "sha256:e6fb8878bcc6db5b80c411173ad8c2e73949632159d1d11d9ae62f7b4474df6a" [label=""];
  "sha256:e6fb8878bcc6db5b80c411173ad8c2e73949632159d1d11d9ae62f7b4474df6a" -> "sha256:fbce06664ac66735c71528071564f5c719a3123dccada05c6433a4b04a0a54b5" [label=""];
  "sha256:fbce06664ac66735c71528071564f5c719a3123dccada05c6433a4b04a0a54b5" -> "sha256:2c12cda9450eb82c7ee1398ba4883c1e4de264e9446abdef38dc7becb527a242" [label=""];
  "sha256:2c12cda9450eb82c7ee1398ba4883c1e4de264e9446abdef38dc7becb527a242" -> "sha256:19be543924264c89fae083ea443aaa9b4d765f7319be1c630d4e2c01e7e9ac5b" [label=""];
}

