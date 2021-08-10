[app/sources/345360101.Dockerfile]
digraph {
  "sha256:890acf4042f322601f26064e5674b4bda3574aaac091f3e816459a939294ffc6" [label="docker-image://docker.io/balenalib/spacely-tx2-fedora:26-run" shape="ellipse"];
  "sha256:c9cf5a0cc29a6c7c912b6981be487cb4caecafb944680af8ac6b4cd01727f843" [label="/bin/sh -c dnf install -y \t\tgcc-c++ \t\tgcc \t\tgit \t&& dnf clean all" shape="box"];
  "sha256:d79d7c9cb21ea107ea3972dd3b64d0906d0381447134fc837702bc0c06572d2b" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-aarch64.tar.gz\" \t&& echo \"8b000bee6c8e2512d79182b56b7023d83a9a297bf813a8565ebbee03d8fb2cd7  go$GO_VERSION.linux-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-aarch64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-aarch64.tar.gz" shape="box"];
  "sha256:a07ea86c1250b49ff7bf06e5159dba85d36e54d8d411e523c78d052f01ad06bb" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:1474f86f9b5073d8ff38983469344c4bb3ed89720e330ec224e08da33e2c5dd4" [label="mkdir{path=/go}" shape="note"];
  "sha256:fb0c0334f9fd8eed224e5af985bdefc4f93cd0e6fafdd7d1c4860067ca44ba27" [label="sha256:fb0c0334f9fd8eed224e5af985bdefc4f93cd0e6fafdd7d1c4860067ca44ba27" shape="plaintext"];
  "sha256:890acf4042f322601f26064e5674b4bda3574aaac091f3e816459a939294ffc6" -> "sha256:c9cf5a0cc29a6c7c912b6981be487cb4caecafb944680af8ac6b4cd01727f843" [label=""];
  "sha256:c9cf5a0cc29a6c7c912b6981be487cb4caecafb944680af8ac6b4cd01727f843" -> "sha256:d79d7c9cb21ea107ea3972dd3b64d0906d0381447134fc837702bc0c06572d2b" [label=""];
  "sha256:d79d7c9cb21ea107ea3972dd3b64d0906d0381447134fc837702bc0c06572d2b" -> "sha256:a07ea86c1250b49ff7bf06e5159dba85d36e54d8d411e523c78d052f01ad06bb" [label=""];
  "sha256:a07ea86c1250b49ff7bf06e5159dba85d36e54d8d411e523c78d052f01ad06bb" -> "sha256:1474f86f9b5073d8ff38983469344c4bb3ed89720e330ec224e08da33e2c5dd4" [label=""];
  "sha256:1474f86f9b5073d8ff38983469344c4bb3ed89720e330ec224e08da33e2c5dd4" -> "sha256:fb0c0334f9fd8eed224e5af985bdefc4f93cd0e6fafdd7d1c4860067ca44ba27" [label=""];
}

