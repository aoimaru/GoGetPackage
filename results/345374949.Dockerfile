[app/sources/345374949.Dockerfile]
digraph {
  "sha256:fa4714c4b5de2a32100827fcbaa6ccb4f010feabb7d802423d31d0e5a898a40c" [label="docker-image://docker.io/balenalib/nanopi-neo-air-fedora:26-build" shape="ellipse"];
  "sha256:f0b838a45e239589c1218b67a4a74bfea90ea7f74e23c6d00f9ab665e8bd408b" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:1f21556fe43784070ea8ca53f4689dc15268e4479bc121d963c73b67eb15e4d1" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:3c1267a8a94f28d03a298232e783cf47dcaa12972e4980ce34774ea6f0f48a72" [label="mkdir{path=/go}" shape="note"];
  "sha256:d537351536d9c4bb9890ac9f466f2a073172252b85b8440f51ddd59e187f6fed" [label="sha256:d537351536d9c4bb9890ac9f466f2a073172252b85b8440f51ddd59e187f6fed" shape="plaintext"];
  "sha256:fa4714c4b5de2a32100827fcbaa6ccb4f010feabb7d802423d31d0e5a898a40c" -> "sha256:f0b838a45e239589c1218b67a4a74bfea90ea7f74e23c6d00f9ab665e8bd408b" [label=""];
  "sha256:f0b838a45e239589c1218b67a4a74bfea90ea7f74e23c6d00f9ab665e8bd408b" -> "sha256:1f21556fe43784070ea8ca53f4689dc15268e4479bc121d963c73b67eb15e4d1" [label=""];
  "sha256:1f21556fe43784070ea8ca53f4689dc15268e4479bc121d963c73b67eb15e4d1" -> "sha256:3c1267a8a94f28d03a298232e783cf47dcaa12972e4980ce34774ea6f0f48a72" [label=""];
  "sha256:3c1267a8a94f28d03a298232e783cf47dcaa12972e4980ce34774ea6f0f48a72" -> "sha256:d537351536d9c4bb9890ac9f466f2a073172252b85b8440f51ddd59e187f6fed" [label=""];
}

