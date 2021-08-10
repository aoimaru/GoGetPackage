[app/sources/345373460.Dockerfile]
digraph {
  "sha256:f5c78efab1286a6d6864dbbef7b274f7875265ee31e78ba3c4b72a4aaa7e74d4" [label="docker-image://docker.io/balenalib/kitra520-alpine:3.8-run" shape="ellipse"];
  "sha256:aac7617ce4296dafafb2b5c3d5a58549c3d3802c75f1c6dc165fd79c63966349" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:796cacab4a9780e2b91ead4745f89be13562bbc31cf3ed844d53d2f7df9d87e3" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:76ad2a0bb46da50b8e965ef1b8d522eba6dc15d5f86e2ca51462b942fee3d451" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"296db57c7981a871e1cee0059a90385d39c73386ffc23002a26bfa9b05f514c4  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:cee54e76fd23e4bdd225ddd82ff830098300bb51ad07ebe214bb1302cd074d3a" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:5cb4402f8a85ddf136ad54d3d6f04f07956f9986c207266e80ffcd0f1a7dec45" [label="mkdir{path=/go}" shape="note"];
  "sha256:59163721271d2b1ec2c897f4d02788ccb0df39641f3b8878bd6421e78c0dfc33" [label="sha256:59163721271d2b1ec2c897f4d02788ccb0df39641f3b8878bd6421e78c0dfc33" shape="plaintext"];
  "sha256:f5c78efab1286a6d6864dbbef7b274f7875265ee31e78ba3c4b72a4aaa7e74d4" -> "sha256:aac7617ce4296dafafb2b5c3d5a58549c3d3802c75f1c6dc165fd79c63966349" [label=""];
  "sha256:aac7617ce4296dafafb2b5c3d5a58549c3d3802c75f1c6dc165fd79c63966349" -> "sha256:796cacab4a9780e2b91ead4745f89be13562bbc31cf3ed844d53d2f7df9d87e3" [label=""];
  "sha256:796cacab4a9780e2b91ead4745f89be13562bbc31cf3ed844d53d2f7df9d87e3" -> "sha256:76ad2a0bb46da50b8e965ef1b8d522eba6dc15d5f86e2ca51462b942fee3d451" [label=""];
  "sha256:76ad2a0bb46da50b8e965ef1b8d522eba6dc15d5f86e2ca51462b942fee3d451" -> "sha256:cee54e76fd23e4bdd225ddd82ff830098300bb51ad07ebe214bb1302cd074d3a" [label=""];
  "sha256:cee54e76fd23e4bdd225ddd82ff830098300bb51ad07ebe214bb1302cd074d3a" -> "sha256:5cb4402f8a85ddf136ad54d3d6f04f07956f9986c207266e80ffcd0f1a7dec45" [label=""];
  "sha256:5cb4402f8a85ddf136ad54d3d6f04f07956f9986c207266e80ffcd0f1a7dec45" -> "sha256:59163721271d2b1ec2c897f4d02788ccb0df39641f3b8878bd6421e78c0dfc33" [label=""];
}

