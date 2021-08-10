[app/sources/345373543.Dockerfile]
digraph {
  "sha256:71c490b164b233fd486d34706c89d7b61b10a523df08d548149087634c7bee2a" [label="docker-image://docker.io/balenalib/kitra520-ubuntu:xenial-build" shape="ellipse"];
  "sha256:5dda50edaa49874f56ed3720ccf391cc8473864b30b9e64106864ae04794139c" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f8a06c2832ca01001d0ffc68a44a2d4c569285cd485a0a61ee7169bc87adbb0f  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:46b137fb582788c418ec9f88b22f1dc68f6ad15f22925b618322f724044332b3" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:a12d9292979c25f6cbe900d10cef5475bdce085460f86b29a5c0c646da94f253" [label="mkdir{path=/go}" shape="note"];
  "sha256:c8504a567bdaf13fe6358cf181401f09f9b9d4f0ee969838550bf83710b6aeaf" [label="sha256:c8504a567bdaf13fe6358cf181401f09f9b9d4f0ee969838550bf83710b6aeaf" shape="plaintext"];
  "sha256:71c490b164b233fd486d34706c89d7b61b10a523df08d548149087634c7bee2a" -> "sha256:5dda50edaa49874f56ed3720ccf391cc8473864b30b9e64106864ae04794139c" [label=""];
  "sha256:5dda50edaa49874f56ed3720ccf391cc8473864b30b9e64106864ae04794139c" -> "sha256:46b137fb582788c418ec9f88b22f1dc68f6ad15f22925b618322f724044332b3" [label=""];
  "sha256:46b137fb582788c418ec9f88b22f1dc68f6ad15f22925b618322f724044332b3" -> "sha256:a12d9292979c25f6cbe900d10cef5475bdce085460f86b29a5c0c646da94f253" [label=""];
  "sha256:a12d9292979c25f6cbe900d10cef5475bdce085460f86b29a5c0c646da94f253" -> "sha256:c8504a567bdaf13fe6358cf181401f09f9b9d4f0ee969838550bf83710b6aeaf" [label=""];
}

