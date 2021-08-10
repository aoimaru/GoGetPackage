[app/sources/345373457.Dockerfile]
digraph {
  "sha256:0486217f05ce9fdb54ce5a885b339ec9b88a039d3fa91278dce42c4b0814186f" [label="docker-image://docker.io/balenalib/kitra520-alpine:3.8-build" shape="ellipse"];
  "sha256:6ab046b264e6955cf9b7bf98fe5133a1709d6fa752a3ab7681b596f768b19eb5" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:8eb6a2df4c652d5ef306d59b5ea00d7b10b2eb148325be3b7e4ff49e8c781fc5" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"92e208c8828ea41fb61e881b49fe883fba12f3730ec72a49b64be0ae74bb486d  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz" shape="box"];
  "sha256:d8890e0b861206e777c36c259906ec5f31b2a62c290b54825957e62681dd4929" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:5fba5502b60bc9832ce739c4ee9140b106ac0f01e60c8bd0b45bc692fd4beeeb" [label="mkdir{path=/go}" shape="note"];
  "sha256:60b6e9f98f2c99b74162d8ba21e8c1f7c2dbac83584f17b7c08602fb219b96a5" [label="sha256:60b6e9f98f2c99b74162d8ba21e8c1f7c2dbac83584f17b7c08602fb219b96a5" shape="plaintext"];
  "sha256:0486217f05ce9fdb54ce5a885b339ec9b88a039d3fa91278dce42c4b0814186f" -> "sha256:6ab046b264e6955cf9b7bf98fe5133a1709d6fa752a3ab7681b596f768b19eb5" [label=""];
  "sha256:6ab046b264e6955cf9b7bf98fe5133a1709d6fa752a3ab7681b596f768b19eb5" -> "sha256:8eb6a2df4c652d5ef306d59b5ea00d7b10b2eb148325be3b7e4ff49e8c781fc5" [label=""];
  "sha256:8eb6a2df4c652d5ef306d59b5ea00d7b10b2eb148325be3b7e4ff49e8c781fc5" -> "sha256:d8890e0b861206e777c36c259906ec5f31b2a62c290b54825957e62681dd4929" [label=""];
  "sha256:d8890e0b861206e777c36c259906ec5f31b2a62c290b54825957e62681dd4929" -> "sha256:5fba5502b60bc9832ce739c4ee9140b106ac0f01e60c8bd0b45bc692fd4beeeb" [label=""];
  "sha256:5fba5502b60bc9832ce739c4ee9140b106ac0f01e60c8bd0b45bc692fd4beeeb" -> "sha256:60b6e9f98f2c99b74162d8ba21e8c1f7c2dbac83584f17b7c08602fb219b96a5" [label=""];
}

