[app/sources/345373015.Dockerfile]
digraph {
  "sha256:6b971062df06962948604fd45d149518d90364a9144951654fd8dcb09644d56c" [label="docker-image://docker.io/balenalib/intel-nuc-ubuntu:artful-build" shape="ellipse"];
  "sha256:6bb2bc90465950d137893a0fdf793676c1430d8be48369085e155d57359a5138" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-amd64.tar.gz\" \t&& echo \"aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0  go$GO_VERSION.linux-amd64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-amd64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-amd64.tar.gz" shape="box"];
  "sha256:66eba32870c249c057647feac3bb6665fe8a97954d72bee320fce61188f4321c" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:d3a7564d47ae8538c154734c84fb9fa910e487404d58ea5a1cf5a892f5b2a827" [label="mkdir{path=/go}" shape="note"];
  "sha256:9ec5dbdc90e8aabff808b52fe561f9e18a04c9af48dcc6f30ae5c4fe749e7b2c" [label="sha256:9ec5dbdc90e8aabff808b52fe561f9e18a04c9af48dcc6f30ae5c4fe749e7b2c" shape="plaintext"];
  "sha256:6b971062df06962948604fd45d149518d90364a9144951654fd8dcb09644d56c" -> "sha256:6bb2bc90465950d137893a0fdf793676c1430d8be48369085e155d57359a5138" [label=""];
  "sha256:6bb2bc90465950d137893a0fdf793676c1430d8be48369085e155d57359a5138" -> "sha256:66eba32870c249c057647feac3bb6665fe8a97954d72bee320fce61188f4321c" [label=""];
  "sha256:66eba32870c249c057647feac3bb6665fe8a97954d72bee320fce61188f4321c" -> "sha256:d3a7564d47ae8538c154734c84fb9fa910e487404d58ea5a1cf5a892f5b2a827" [label=""];
  "sha256:d3a7564d47ae8538c154734c84fb9fa910e487404d58ea5a1cf5a892f5b2a827" -> "sha256:9ec5dbdc90e8aabff808b52fe561f9e18a04c9af48dcc6f30ae5c4fe749e7b2c" [label=""];
}

