[app/sources/345371527.Dockerfile]
digraph {
  "sha256:dce442b20e3c970553bffd264e3779a1e8855d5a8161f01caeda310d03374fd8" [label="docker-image://docker.io/balenalib/colibri-imx6dl-alpine:3.7-run" shape="ellipse"];
  "sha256:9607b9a20bbbb8414ad3e258570b32f9c6af828395ae83cdef9f7e43c5aa0001" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:8b6dd1926d6c9e853136f1cc23ec449cb31fde42e729c65ace1abd34fb577437" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:ef1fd0da52e1132764fd691a6d8024b710df5287b307b4c468575b8d6fe1a370" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"296db57c7981a871e1cee0059a90385d39c73386ffc23002a26bfa9b05f514c4  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:9a0b5d9d55f3dab5cd471fbce485d4935ff89c92c96e9f0441f44b654a49d8dc" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:558b392bed9c4b200f31889005dfcd6d99555fa2290f94e70c378e768db50985" [label="mkdir{path=/go}" shape="note"];
  "sha256:f9df9c112d24d976f927476ec49601a44a95b1f134fa052052a3fa1cd9935600" [label="sha256:f9df9c112d24d976f927476ec49601a44a95b1f134fa052052a3fa1cd9935600" shape="plaintext"];
  "sha256:dce442b20e3c970553bffd264e3779a1e8855d5a8161f01caeda310d03374fd8" -> "sha256:9607b9a20bbbb8414ad3e258570b32f9c6af828395ae83cdef9f7e43c5aa0001" [label=""];
  "sha256:9607b9a20bbbb8414ad3e258570b32f9c6af828395ae83cdef9f7e43c5aa0001" -> "sha256:8b6dd1926d6c9e853136f1cc23ec449cb31fde42e729c65ace1abd34fb577437" [label=""];
  "sha256:8b6dd1926d6c9e853136f1cc23ec449cb31fde42e729c65ace1abd34fb577437" -> "sha256:ef1fd0da52e1132764fd691a6d8024b710df5287b307b4c468575b8d6fe1a370" [label=""];
  "sha256:ef1fd0da52e1132764fd691a6d8024b710df5287b307b4c468575b8d6fe1a370" -> "sha256:9a0b5d9d55f3dab5cd471fbce485d4935ff89c92c96e9f0441f44b654a49d8dc" [label=""];
  "sha256:9a0b5d9d55f3dab5cd471fbce485d4935ff89c92c96e9f0441f44b654a49d8dc" -> "sha256:558b392bed9c4b200f31889005dfcd6d99555fa2290f94e70c378e768db50985" [label=""];
  "sha256:558b392bed9c4b200f31889005dfcd6d99555fa2290f94e70c378e768db50985" -> "sha256:f9df9c112d24d976f927476ec49601a44a95b1f134fa052052a3fa1cd9935600" [label=""];
}

