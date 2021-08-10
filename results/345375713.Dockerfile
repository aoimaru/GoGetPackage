[app/sources/345375713.Dockerfile]
digraph {
  "sha256:1cb6947bc9d2b6dedfe2f81fd39e9e3c8b856b9b9010136fa5b6469aad8c8123" [label="docker-image://docker.io/balenalib/orange-pi-one-fedora:28-build" shape="ellipse"];
  "sha256:d854e1f4bb7de7f430e1f1d33ee5b5929f9c183e818454bbd0fcafa1e007d971" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f8a06c2832ca01001d0ffc68a44a2d4c569285cd485a0a61ee7169bc87adbb0f  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:417f4ad440eba4e0eccbc941526832310cf2772b81b374662e7a882f65f80b36" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:26ca250708e6c44638098a49637e1a39abff71646cbcf4a4b6cbf6266e24f0ef" [label="mkdir{path=/go}" shape="note"];
  "sha256:07ce1600f6d53d4921efae41f678fc6c18afc034455ad5ca030f0ef16a3e9213" [label="sha256:07ce1600f6d53d4921efae41f678fc6c18afc034455ad5ca030f0ef16a3e9213" shape="plaintext"];
  "sha256:1cb6947bc9d2b6dedfe2f81fd39e9e3c8b856b9b9010136fa5b6469aad8c8123" -> "sha256:d854e1f4bb7de7f430e1f1d33ee5b5929f9c183e818454bbd0fcafa1e007d971" [label=""];
  "sha256:d854e1f4bb7de7f430e1f1d33ee5b5929f9c183e818454bbd0fcafa1e007d971" -> "sha256:417f4ad440eba4e0eccbc941526832310cf2772b81b374662e7a882f65f80b36" [label=""];
  "sha256:417f4ad440eba4e0eccbc941526832310cf2772b81b374662e7a882f65f80b36" -> "sha256:26ca250708e6c44638098a49637e1a39abff71646cbcf4a4b6cbf6266e24f0ef" [label=""];
  "sha256:26ca250708e6c44638098a49637e1a39abff71646cbcf4a4b6cbf6266e24f0ef" -> "sha256:07ce1600f6d53d4921efae41f678fc6c18afc034455ad5ca030f0ef16a3e9213" [label=""];
}

