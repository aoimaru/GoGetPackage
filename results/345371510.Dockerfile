[app/sources/345371510.Dockerfile]
digraph {
  "sha256:d39cef4fc33b531683a64a1360acc82b15fa7617c25e2301ce0c9ed0b3e3eec0" [label="docker-image://docker.io/balenalib/cl-som-imx8-ubuntu:xenial-build" shape="ellipse"];
  "sha256:800059fd6ab7672de6cf54614d4bb55aca743d864991f539530e552360cda93a" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-arm64.tar.gz\" \t&& echo \"ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8  go$GO_VERSION.linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-arm64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-arm64.tar.gz" shape="box"];
  "sha256:666e41bd2aa8c50ac6b3e57fe8305daa02c068ef15ca9a7cce98a889912f9049" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:80c3ba9a80969e2151752b712e11c73befcc84f9512271953012fb4dbd5da0e4" [label="mkdir{path=/go}" shape="note"];
  "sha256:55377e1787d452178dcddd30d5f186fc0b8c2662d1b70f61ed79c163fc409ae1" [label="sha256:55377e1787d452178dcddd30d5f186fc0b8c2662d1b70f61ed79c163fc409ae1" shape="plaintext"];
  "sha256:d39cef4fc33b531683a64a1360acc82b15fa7617c25e2301ce0c9ed0b3e3eec0" -> "sha256:800059fd6ab7672de6cf54614d4bb55aca743d864991f539530e552360cda93a" [label=""];
  "sha256:800059fd6ab7672de6cf54614d4bb55aca743d864991f539530e552360cda93a" -> "sha256:666e41bd2aa8c50ac6b3e57fe8305daa02c068ef15ca9a7cce98a889912f9049" [label=""];
  "sha256:666e41bd2aa8c50ac6b3e57fe8305daa02c068ef15ca9a7cce98a889912f9049" -> "sha256:80c3ba9a80969e2151752b712e11c73befcc84f9512271953012fb4dbd5da0e4" [label=""];
  "sha256:80c3ba9a80969e2151752b712e11c73befcc84f9512271953012fb4dbd5da0e4" -> "sha256:55377e1787d452178dcddd30d5f186fc0b8c2662d1b70f61ed79c163fc409ae1" [label=""];
}

