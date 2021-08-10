[app/sources/345363104.Dockerfile]
digraph {
  "sha256:918fb84ef9e47bc4bec0b10f9336c86657f2e30a7dc955b080b5bee826be1949" [label="docker-image://docker.io/balenalib/aarch64-alpine:3.8-build" shape="ellipse"];
  "sha256:94a06e3f0184b50caf4f997eb12647c0c514903e5fb4d4f2e12c91c961dc8912" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:b5f84dea043c3f03481f94c6adc7bd6654c0ffec36b687bed751f76a19acc305" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-aarch64.tar.gz\" \t&& echo \"983d78e68083b3ebaf918cdc3be8fa448b1e158d4a184090e8e07a2a250c3bee  go$GO_VERSION.linux-alpine-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-aarch64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-aarch64.tar.gz" shape="box"];
  "sha256:f2d41dcec99c54c8aff00e433999a4698bc23023eb34fb937d2795633a98ea71" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:7301ad1d6c7728d17994c978fa9789ad591f732d26aaf3731ee981e1340424cb" [label="mkdir{path=/go}" shape="note"];
  "sha256:16db2b68a68e8ac2fd857d4900d4b3679c937cb1dd6a148bef9a8614ad1576c4" [label="sha256:16db2b68a68e8ac2fd857d4900d4b3679c937cb1dd6a148bef9a8614ad1576c4" shape="plaintext"];
  "sha256:918fb84ef9e47bc4bec0b10f9336c86657f2e30a7dc955b080b5bee826be1949" -> "sha256:94a06e3f0184b50caf4f997eb12647c0c514903e5fb4d4f2e12c91c961dc8912" [label=""];
  "sha256:94a06e3f0184b50caf4f997eb12647c0c514903e5fb4d4f2e12c91c961dc8912" -> "sha256:b5f84dea043c3f03481f94c6adc7bd6654c0ffec36b687bed751f76a19acc305" [label=""];
  "sha256:b5f84dea043c3f03481f94c6adc7bd6654c0ffec36b687bed751f76a19acc305" -> "sha256:f2d41dcec99c54c8aff00e433999a4698bc23023eb34fb937d2795633a98ea71" [label=""];
  "sha256:f2d41dcec99c54c8aff00e433999a4698bc23023eb34fb937d2795633a98ea71" -> "sha256:7301ad1d6c7728d17994c978fa9789ad591f732d26aaf3731ee981e1340424cb" [label=""];
  "sha256:7301ad1d6c7728d17994c978fa9789ad591f732d26aaf3731ee981e1340424cb" -> "sha256:16db2b68a68e8ac2fd857d4900d4b3679c937cb1dd6a148bef9a8614ad1576c4" [label=""];
}

