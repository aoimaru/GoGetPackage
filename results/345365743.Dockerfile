[app/sources/345365743.Dockerfile]
digraph {
  "sha256:66bd28d969c3f3a3baa817cd391704047dd36576624fc2be27738deebeaaaa97" [label="docker-image://docker.io/balenalib/dl-pm6x-fedora:28-run" shape="ellipse"];
  "sha256:2f27db8d05a3e170e985a08caa8a05b8a2b4cd084594e121878e3ae4e167c9de" [label="/bin/sh -c dnf install -y \t\tgcc-c++ \t\tgcc \t\tgit \t&& dnf clean all" shape="box"];
  "sha256:add419ec06978bea71f46beb326044c9da55e8b22ce4e57bc655c606fb726234" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f8a06c2832ca01001d0ffc68a44a2d4c569285cd485a0a61ee7169bc87adbb0f  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:9b7eacc231d3e49c94201e8fd299af806988ddb3726346f02177534f5aea0b6b" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:67b75a4b8cf8fae02cf6bb1a8b31341fc4d4668c2619b91ab1f2e470e42ba238" [label="mkdir{path=/go}" shape="note"];
  "sha256:08586f94c4ef11691ce8089566e7c91171608168fe0afa958bed821a3d040eb3" [label="sha256:08586f94c4ef11691ce8089566e7c91171608168fe0afa958bed821a3d040eb3" shape="plaintext"];
  "sha256:66bd28d969c3f3a3baa817cd391704047dd36576624fc2be27738deebeaaaa97" -> "sha256:2f27db8d05a3e170e985a08caa8a05b8a2b4cd084594e121878e3ae4e167c9de" [label=""];
  "sha256:2f27db8d05a3e170e985a08caa8a05b8a2b4cd084594e121878e3ae4e167c9de" -> "sha256:add419ec06978bea71f46beb326044c9da55e8b22ce4e57bc655c606fb726234" [label=""];
  "sha256:add419ec06978bea71f46beb326044c9da55e8b22ce4e57bc655c606fb726234" -> "sha256:9b7eacc231d3e49c94201e8fd299af806988ddb3726346f02177534f5aea0b6b" [label=""];
  "sha256:9b7eacc231d3e49c94201e8fd299af806988ddb3726346f02177534f5aea0b6b" -> "sha256:67b75a4b8cf8fae02cf6bb1a8b31341fc4d4668c2619b91ab1f2e470e42ba238" [label=""];
  "sha256:67b75a4b8cf8fae02cf6bb1a8b31341fc4d4668c2619b91ab1f2e470e42ba238" -> "sha256:08586f94c4ef11691ce8089566e7c91171608168fe0afa958bed821a3d040eb3" [label=""];
}

