[app/sources/345361657.Dockerfile]
digraph {
  "sha256:0f0b68e0f68906affbad8388265cc37582f5a9c9aad626745fc591be1aaa7786" [label="docker-image://docker.io/balenalib/via-vab820-quad-fedora:29-run" shape="ellipse"];
  "sha256:6264838a19d950d8b12d2558eba13b3b97f888054443298df4a2cdc95d18eb40" [label="/bin/sh -c dnf install -y \t\tgcc-c++ \t\tgcc \t\tgit \t&& dnf clean all" shape="box"];
  "sha256:008af9fc5da87d6261245999e415c625d0d1a944691a6843972e9624d4e5278b" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f8a06c2832ca01001d0ffc68a44a2d4c569285cd485a0a61ee7169bc87adbb0f  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:10bda169c57394b8937678d70137d5f1a61cb09873dc53e65312db61016c0f12" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:3892ea51455f9aeb3a2e2028e781b6e7603222a37e15458e2fcc9e80160b8b2e" [label="mkdir{path=/go}" shape="note"];
  "sha256:f0d1959d26d36268be5981f7cda85b02a9a24fb49d5ac6fe1f033591bf92d35f" [label="sha256:f0d1959d26d36268be5981f7cda85b02a9a24fb49d5ac6fe1f033591bf92d35f" shape="plaintext"];
  "sha256:0f0b68e0f68906affbad8388265cc37582f5a9c9aad626745fc591be1aaa7786" -> "sha256:6264838a19d950d8b12d2558eba13b3b97f888054443298df4a2cdc95d18eb40" [label=""];
  "sha256:6264838a19d950d8b12d2558eba13b3b97f888054443298df4a2cdc95d18eb40" -> "sha256:008af9fc5da87d6261245999e415c625d0d1a944691a6843972e9624d4e5278b" [label=""];
  "sha256:008af9fc5da87d6261245999e415c625d0d1a944691a6843972e9624d4e5278b" -> "sha256:10bda169c57394b8937678d70137d5f1a61cb09873dc53e65312db61016c0f12" [label=""];
  "sha256:10bda169c57394b8937678d70137d5f1a61cb09873dc53e65312db61016c0f12" -> "sha256:3892ea51455f9aeb3a2e2028e781b6e7603222a37e15458e2fcc9e80160b8b2e" [label=""];
  "sha256:3892ea51455f9aeb3a2e2028e781b6e7603222a37e15458e2fcc9e80160b8b2e" -> "sha256:f0d1959d26d36268be5981f7cda85b02a9a24fb49d5ac6fe1f033591bf92d35f" [label=""];
}

