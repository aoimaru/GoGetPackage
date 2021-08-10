[app/sources/345373601.Dockerfile]
digraph {
  "sha256:1897fd22b652bebf358c2c27e2b461da547c0983f15d371413b1b7142b8579e2" [label="docker-image://docker.io/balenalib/kitra710-debian:stretch-build" shape="ellipse"];
  "sha256:fc37b647a4dba0204e4851905cf77a60b84fd9487a0de96f07e1eaf2f9113ffc" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-aarch64.tar.gz\" \t&& echo \"8b000bee6c8e2512d79182b56b7023d83a9a297bf813a8565ebbee03d8fb2cd7  go$GO_VERSION.linux-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-aarch64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-aarch64.tar.gz" shape="box"];
  "sha256:6b9bca151df35f5b08846f91a13cb51f3944334a8aa3fcc97d6c92167b846f41" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:30a4d0232116a41f74c339040ae1041081811be45437eba21b161a4e415da476" [label="mkdir{path=/go}" shape="note"];
  "sha256:fe98f2d6a7d5a196822bf70746bc8d9361068a19e2a621490a0f4bfd250dd461" [label="sha256:fe98f2d6a7d5a196822bf70746bc8d9361068a19e2a621490a0f4bfd250dd461" shape="plaintext"];
  "sha256:1897fd22b652bebf358c2c27e2b461da547c0983f15d371413b1b7142b8579e2" -> "sha256:fc37b647a4dba0204e4851905cf77a60b84fd9487a0de96f07e1eaf2f9113ffc" [label=""];
  "sha256:fc37b647a4dba0204e4851905cf77a60b84fd9487a0de96f07e1eaf2f9113ffc" -> "sha256:6b9bca151df35f5b08846f91a13cb51f3944334a8aa3fcc97d6c92167b846f41" [label=""];
  "sha256:6b9bca151df35f5b08846f91a13cb51f3944334a8aa3fcc97d6c92167b846f41" -> "sha256:30a4d0232116a41f74c339040ae1041081811be45437eba21b161a4e415da476" [label=""];
  "sha256:30a4d0232116a41f74c339040ae1041081811be45437eba21b161a4e415da476" -> "sha256:fe98f2d6a7d5a196822bf70746bc8d9361068a19e2a621490a0f4bfd250dd461" [label=""];
}

