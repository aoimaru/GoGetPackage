[app/sources/345360919.Dockerfile]
digraph {
  "sha256:1a5fb8fe229b42244eeced1e6a9c09e3895c0e75ba9073ce9b662f2431a5193a" [label="docker-image://docker.io/balenalib/ts4900-debian:jessie-build" shape="ellipse"];
  "sha256:26331d5185f53ac42fd42ce8288434cd2b0feacb43ac1c14e2c862f038848570" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:d4ac00cdef38095faaff8ab6776515246f4a89df310e2d1792a09cd6fc4e2eeb" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:db86ee600dd9925c4f57654fe3e7cb469cb93766c3061aa52a088dd7778823c8" [label="mkdir{path=/go}" shape="note"];
  "sha256:c37cfaeb27d87c0bcee07d606f297be12e677e2dcb8fac1a74bb450efbef0f36" [label="sha256:c37cfaeb27d87c0bcee07d606f297be12e677e2dcb8fac1a74bb450efbef0f36" shape="plaintext"];
  "sha256:1a5fb8fe229b42244eeced1e6a9c09e3895c0e75ba9073ce9b662f2431a5193a" -> "sha256:26331d5185f53ac42fd42ce8288434cd2b0feacb43ac1c14e2c862f038848570" [label=""];
  "sha256:26331d5185f53ac42fd42ce8288434cd2b0feacb43ac1c14e2c862f038848570" -> "sha256:d4ac00cdef38095faaff8ab6776515246f4a89df310e2d1792a09cd6fc4e2eeb" [label=""];
  "sha256:d4ac00cdef38095faaff8ab6776515246f4a89df310e2d1792a09cd6fc4e2eeb" -> "sha256:db86ee600dd9925c4f57654fe3e7cb469cb93766c3061aa52a088dd7778823c8" [label=""];
  "sha256:db86ee600dd9925c4f57654fe3e7cb469cb93766c3061aa52a088dd7778823c8" -> "sha256:c37cfaeb27d87c0bcee07d606f297be12e677e2dcb8fac1a74bb450efbef0f36" [label=""];
}

