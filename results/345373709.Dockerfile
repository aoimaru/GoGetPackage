[app/sources/345373709.Dockerfile]
digraph {
  "sha256:011cb33738615a2e5482ecb712028b998271bcce8b4ece116e3807ee46dc58c7" [label="docker-image://docker.io/balenalib/n510-tx2-debian:sid-build" shape="ellipse"];
  "sha256:bcdf95a68ce94ead5a7eae492d7bbceb359f2753d4d14932e61a8fb2fafacc17" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-aarch64.tar.gz\" \t&& echo \"8b000bee6c8e2512d79182b56b7023d83a9a297bf813a8565ebbee03d8fb2cd7  go$GO_VERSION.linux-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-aarch64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-aarch64.tar.gz" shape="box"];
  "sha256:91de2e4e712700a40732cf1d7d3091f02ba60504960535a9804d39941992316f" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:3cc316378f12b78032fcf97b7bd9d4e26514b5c8d493710f84ce42a5c0a5a3e2" [label="mkdir{path=/go}" shape="note"];
  "sha256:63a9a6a7187ef77f38e33a16e5e754dd7012d0f7642bce535f69f107df48c64a" [label="sha256:63a9a6a7187ef77f38e33a16e5e754dd7012d0f7642bce535f69f107df48c64a" shape="plaintext"];
  "sha256:011cb33738615a2e5482ecb712028b998271bcce8b4ece116e3807ee46dc58c7" -> "sha256:bcdf95a68ce94ead5a7eae492d7bbceb359f2753d4d14932e61a8fb2fafacc17" [label=""];
  "sha256:bcdf95a68ce94ead5a7eae492d7bbceb359f2753d4d14932e61a8fb2fafacc17" -> "sha256:91de2e4e712700a40732cf1d7d3091f02ba60504960535a9804d39941992316f" [label=""];
  "sha256:91de2e4e712700a40732cf1d7d3091f02ba60504960535a9804d39941992316f" -> "sha256:3cc316378f12b78032fcf97b7bd9d4e26514b5c8d493710f84ce42a5c0a5a3e2" [label=""];
  "sha256:3cc316378f12b78032fcf97b7bd9d4e26514b5c8d493710f84ce42a5c0a5a3e2" -> "sha256:63a9a6a7187ef77f38e33a16e5e754dd7012d0f7642bce535f69f107df48c64a" [label=""];
}

