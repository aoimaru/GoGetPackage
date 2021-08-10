[app/sources/345375499.Dockerfile]
digraph {
  "sha256:4f81797b2f0f6f924ffee402f79304f9eeb7f04696cdc2c42666ca38b6a4c464" [label="docker-image://docker.io/balenalib/odroid-xu4-fedora:28-build" shape="ellipse"];
  "sha256:4008c18bfa89b34e9dca4182e8258bcbb2262dad05d6ed0a2f34510d72a37966" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:06d3517c6306d5ba97d9c6ffa8c782e861d4d872040213c12416cf8be7b324b3" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:58fbb3007e8700b522df8fdcbd17f2cd8064175c4cbdd038ef1dbdedcd6e280b" [label="mkdir{path=/go}" shape="note"];
  "sha256:d16362be62e4f8eacc58341af2c8ce2c7e1fcf6f8c229ff06be428227d7ab1a2" [label="sha256:d16362be62e4f8eacc58341af2c8ce2c7e1fcf6f8c229ff06be428227d7ab1a2" shape="plaintext"];
  "sha256:4f81797b2f0f6f924ffee402f79304f9eeb7f04696cdc2c42666ca38b6a4c464" -> "sha256:4008c18bfa89b34e9dca4182e8258bcbb2262dad05d6ed0a2f34510d72a37966" [label=""];
  "sha256:4008c18bfa89b34e9dca4182e8258bcbb2262dad05d6ed0a2f34510d72a37966" -> "sha256:06d3517c6306d5ba97d9c6ffa8c782e861d4d872040213c12416cf8be7b324b3" [label=""];
  "sha256:06d3517c6306d5ba97d9c6ffa8c782e861d4d872040213c12416cf8be7b324b3" -> "sha256:58fbb3007e8700b522df8fdcbd17f2cd8064175c4cbdd038ef1dbdedcd6e280b" [label=""];
  "sha256:58fbb3007e8700b522df8fdcbd17f2cd8064175c4cbdd038ef1dbdedcd6e280b" -> "sha256:d16362be62e4f8eacc58341af2c8ce2c7e1fcf6f8c229ff06be428227d7ab1a2" [label=""];
}

