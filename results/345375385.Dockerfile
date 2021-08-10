[app/sources/345375385.Dockerfile]
digraph {
  "sha256:d2eb239986339f44fbdbde0612d40afe46e9a957b123d3dba592f80e5665730a" [label="docker-image://docker.io/balenalib/odroid-c1-fedora:26-build" shape="ellipse"];
  "sha256:4fcda4f71058b49ae14228a1403ae1d84e32dc0b9cbae9f8f5dcfe03bd83a0f0" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:64e667a6c1a4b071c6edcbc9045ef96792256aef190fb9bc1779c4d1f9fe11cd" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:045319637d6191a93d953c71d9d3bd522129c17621ca94993e4c44be83fef8c4" [label="mkdir{path=/go}" shape="note"];
  "sha256:b4c5fcfca76bbf4370f34be0c5b01f242b80aabb4186aafed47a24d7cef5d2f2" [label="sha256:b4c5fcfca76bbf4370f34be0c5b01f242b80aabb4186aafed47a24d7cef5d2f2" shape="plaintext"];
  "sha256:d2eb239986339f44fbdbde0612d40afe46e9a957b123d3dba592f80e5665730a" -> "sha256:4fcda4f71058b49ae14228a1403ae1d84e32dc0b9cbae9f8f5dcfe03bd83a0f0" [label=""];
  "sha256:4fcda4f71058b49ae14228a1403ae1d84e32dc0b9cbae9f8f5dcfe03bd83a0f0" -> "sha256:64e667a6c1a4b071c6edcbc9045ef96792256aef190fb9bc1779c4d1f9fe11cd" [label=""];
  "sha256:64e667a6c1a4b071c6edcbc9045ef96792256aef190fb9bc1779c4d1f9fe11cd" -> "sha256:045319637d6191a93d953c71d9d3bd522129c17621ca94993e4c44be83fef8c4" [label=""];
  "sha256:045319637d6191a93d953c71d9d3bd522129c17621ca94993e4c44be83fef8c4" -> "sha256:b4c5fcfca76bbf4370f34be0c5b01f242b80aabb4186aafed47a24d7cef5d2f2" [label=""];
}

