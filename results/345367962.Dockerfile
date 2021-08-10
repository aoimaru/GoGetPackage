[app/sources/345367962.Dockerfile]
digraph {
  "sha256:ccc86953a4a055669d86a175abb689409d7e0e95471eb404ac9bbfd86ca1fdd0" [label="docker-image://docker.io/balenalib/artik530-ubuntu:bionic-build" shape="ellipse"];
  "sha256:fe9e9474086833a86f3dacdc559e0662c9b32d250c621eca990ee14f4a974ac2" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:9b68dfc6c6a89680ade3ba792b9b6ee60e671c686968e22f58a8cf3d2690e6da" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:95da45943d562d59013fd5b937f80a935b49998b7f9b26c7ae82cd5db287cb2c" [label="mkdir{path=/go}" shape="note"];
  "sha256:6c8113e6cef58f177357e675489ea6e193c8f520667f101d388d0a9fa2122c32" [label="sha256:6c8113e6cef58f177357e675489ea6e193c8f520667f101d388d0a9fa2122c32" shape="plaintext"];
  "sha256:ccc86953a4a055669d86a175abb689409d7e0e95471eb404ac9bbfd86ca1fdd0" -> "sha256:fe9e9474086833a86f3dacdc559e0662c9b32d250c621eca990ee14f4a974ac2" [label=""];
  "sha256:fe9e9474086833a86f3dacdc559e0662c9b32d250c621eca990ee14f4a974ac2" -> "sha256:9b68dfc6c6a89680ade3ba792b9b6ee60e671c686968e22f58a8cf3d2690e6da" [label=""];
  "sha256:9b68dfc6c6a89680ade3ba792b9b6ee60e671c686968e22f58a8cf3d2690e6da" -> "sha256:95da45943d562d59013fd5b937f80a935b49998b7f9b26c7ae82cd5db287cb2c" [label=""];
  "sha256:95da45943d562d59013fd5b937f80a935b49998b7f9b26c7ae82cd5db287cb2c" -> "sha256:6c8113e6cef58f177357e675489ea6e193c8f520667f101d388d0a9fa2122c32" [label=""];
}

