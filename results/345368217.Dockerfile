[app/sources/345368217.Dockerfile]
digraph {
  "sha256:96ff2224b8489a3bcfd88abff27e7cdc5a9eef99d90e55536d5b7502b5515699" [label="docker-image://docker.io/balenalib/asus-tinker-board-s-alpine:3.7-run" shape="ellipse"];
  "sha256:9f70e893733cd5a57dd9bcbe5e0d8c7fdb54ec0fdbaed33086c800b4293aeb0e" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:cf7ef43ff9ce1abf774670170e9de749f3e1ecd6562c7e185545eaed047600b7" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:dfc21e5c1c78cfd10de2e48b1428a0c6c839e5b3defa83264d9e61c97ccfd63f" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"92e208c8828ea41fb61e881b49fe883fba12f3730ec72a49b64be0ae74bb486d  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:2a6286599bf2303452ce09c8934eeab88c7b2c3ea4e4d2c414212c0cc553da86" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:d305c30b4bc2cd9d30e81857e1892f59d8892b684732b009c779db8f4e51af88" [label="mkdir{path=/go}" shape="note"];
  "sha256:9b15bc9c11a529d07a863eb63a35efe922cc8e0c45c1cce6d6d78a4c4d3f97bc" [label="sha256:9b15bc9c11a529d07a863eb63a35efe922cc8e0c45c1cce6d6d78a4c4d3f97bc" shape="plaintext"];
  "sha256:96ff2224b8489a3bcfd88abff27e7cdc5a9eef99d90e55536d5b7502b5515699" -> "sha256:9f70e893733cd5a57dd9bcbe5e0d8c7fdb54ec0fdbaed33086c800b4293aeb0e" [label=""];
  "sha256:9f70e893733cd5a57dd9bcbe5e0d8c7fdb54ec0fdbaed33086c800b4293aeb0e" -> "sha256:cf7ef43ff9ce1abf774670170e9de749f3e1ecd6562c7e185545eaed047600b7" [label=""];
  "sha256:cf7ef43ff9ce1abf774670170e9de749f3e1ecd6562c7e185545eaed047600b7" -> "sha256:dfc21e5c1c78cfd10de2e48b1428a0c6c839e5b3defa83264d9e61c97ccfd63f" [label=""];
  "sha256:dfc21e5c1c78cfd10de2e48b1428a0c6c839e5b3defa83264d9e61c97ccfd63f" -> "sha256:2a6286599bf2303452ce09c8934eeab88c7b2c3ea4e4d2c414212c0cc553da86" [label=""];
  "sha256:2a6286599bf2303452ce09c8934eeab88c7b2c3ea4e4d2c414212c0cc553da86" -> "sha256:d305c30b4bc2cd9d30e81857e1892f59d8892b684732b009c779db8f4e51af88" [label=""];
  "sha256:d305c30b4bc2cd9d30e81857e1892f59d8892b684732b009c779db8f4e51af88" -> "sha256:9b15bc9c11a529d07a863eb63a35efe922cc8e0c45c1cce6d6d78a4c4d3f97bc" [label=""];
}

