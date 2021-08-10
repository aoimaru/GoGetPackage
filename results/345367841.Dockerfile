[app/sources/345367841.Dockerfile]
digraph {
  "sha256:fb8ca92cac27d58671d49d6408ab91e39c1c6b300902751f1cb3126eb3d59035" [label="docker-image://docker.io/balenalib/artik5-fedora:29-run" shape="ellipse"];
  "sha256:b8e8cb1a80a9b81c614e846bba5cd3c436bb923b3795330d552bad318d8bd217" [label="/bin/sh -c dnf install -y \t\tgcc-c++ \t\tgcc \t\tgit \t&& dnf clean all" shape="box"];
  "sha256:fbf23c76cb88356180a64baaece13a5944f593e2f583473f01bc2975aa37f5bd" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f8a06c2832ca01001d0ffc68a44a2d4c569285cd485a0a61ee7169bc87adbb0f  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:274f40bc7ac3be66abdb2b91fb6a02b2e82548a11d779d5588b674f1c22fe33f" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:1f89a7212966e09cfdee55879eca945a6a34698a89d002d51af05c69b5b8a847" [label="mkdir{path=/go}" shape="note"];
  "sha256:9fa7714ef5d67a44c714e666e9d69e7513b054a522ee67a7819e015e15bf69e9" [label="sha256:9fa7714ef5d67a44c714e666e9d69e7513b054a522ee67a7819e015e15bf69e9" shape="plaintext"];
  "sha256:fb8ca92cac27d58671d49d6408ab91e39c1c6b300902751f1cb3126eb3d59035" -> "sha256:b8e8cb1a80a9b81c614e846bba5cd3c436bb923b3795330d552bad318d8bd217" [label=""];
  "sha256:b8e8cb1a80a9b81c614e846bba5cd3c436bb923b3795330d552bad318d8bd217" -> "sha256:fbf23c76cb88356180a64baaece13a5944f593e2f583473f01bc2975aa37f5bd" [label=""];
  "sha256:fbf23c76cb88356180a64baaece13a5944f593e2f583473f01bc2975aa37f5bd" -> "sha256:274f40bc7ac3be66abdb2b91fb6a02b2e82548a11d779d5588b674f1c22fe33f" [label=""];
  "sha256:274f40bc7ac3be66abdb2b91fb6a02b2e82548a11d779d5588b674f1c22fe33f" -> "sha256:1f89a7212966e09cfdee55879eca945a6a34698a89d002d51af05c69b5b8a847" [label=""];
  "sha256:1f89a7212966e09cfdee55879eca945a6a34698a89d002d51af05c69b5b8a847" -> "sha256:9fa7714ef5d67a44c714e666e9d69e7513b054a522ee67a7819e015e15bf69e9" [label=""];
}

