[app/sources/345358301.Dockerfile]
digraph {
  "sha256:9f750bea40db5e63fed8aa72d07f2c90dc1edd24bcda077718b13f841d963470" [label="docker-image://docker.io/balenalib/revpi-core-3-alpine:3.5-build" shape="ellipse"];
  "sha256:5a9a63380351e5a09db81afc8d8fd82d8d30a2ec1fde220757af9b4975ad202d" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:675cae4e94314181e0c04fa380e68d185a1c5b4d4607479a0ec8a98189305189" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"92e208c8828ea41fb61e881b49fe883fba12f3730ec72a49b64be0ae74bb486d  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz" shape="box"];
  "sha256:64238af1bcb3574f9f7637182148f88adb310b070a807b71844d6818b3a24559" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:c88358dd8aad192bdec848bf328a2ab6720c5b10a728e76f64f4599778b3f918" [label="mkdir{path=/go}" shape="note"];
  "sha256:371be791e367c9cb5126bcffe35ed5bf87ab1ca13f2a6082a026012175584c00" [label="sha256:371be791e367c9cb5126bcffe35ed5bf87ab1ca13f2a6082a026012175584c00" shape="plaintext"];
  "sha256:9f750bea40db5e63fed8aa72d07f2c90dc1edd24bcda077718b13f841d963470" -> "sha256:5a9a63380351e5a09db81afc8d8fd82d8d30a2ec1fde220757af9b4975ad202d" [label=""];
  "sha256:5a9a63380351e5a09db81afc8d8fd82d8d30a2ec1fde220757af9b4975ad202d" -> "sha256:675cae4e94314181e0c04fa380e68d185a1c5b4d4607479a0ec8a98189305189" [label=""];
  "sha256:675cae4e94314181e0c04fa380e68d185a1c5b4d4607479a0ec8a98189305189" -> "sha256:64238af1bcb3574f9f7637182148f88adb310b070a807b71844d6818b3a24559" [label=""];
  "sha256:64238af1bcb3574f9f7637182148f88adb310b070a807b71844d6818b3a24559" -> "sha256:c88358dd8aad192bdec848bf328a2ab6720c5b10a728e76f64f4599778b3f918" [label=""];
  "sha256:c88358dd8aad192bdec848bf328a2ab6720c5b10a728e76f64f4599778b3f918" -> "sha256:371be791e367c9cb5126bcffe35ed5bf87ab1ca13f2a6082a026012175584c00" [label=""];
}

