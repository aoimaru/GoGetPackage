[app/sources/345363486.Dockerfile]
digraph {
  "sha256:b815d917eb8acbffd240ded90f4301115898901ed43fb1c1eebbf7884dbba957" [label="docker-image://docker.io/balenalib/apalis-imx6q-fedora:28-build" shape="ellipse"];
  "sha256:e1bc9f1f6ee48484bb2b3ad9e9fc9b0f9e3646a06c9cf773c9b1398f7f06bb51" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f8a06c2832ca01001d0ffc68a44a2d4c569285cd485a0a61ee7169bc87adbb0f  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:2ddd9418e72656986992316602d56afa4dc8d31ca8c3928b6acceaa22d4984d6" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:85e703eead43841cdfe0990cd24cca15682c8e2b920e9bb0dc4ddacf55c64867" [label="mkdir{path=/go}" shape="note"];
  "sha256:bd684d6156fb8a22ceec0edb930f028d550f97636ffd48aef4528a4daf3885dc" [label="sha256:bd684d6156fb8a22ceec0edb930f028d550f97636ffd48aef4528a4daf3885dc" shape="plaintext"];
  "sha256:b815d917eb8acbffd240ded90f4301115898901ed43fb1c1eebbf7884dbba957" -> "sha256:e1bc9f1f6ee48484bb2b3ad9e9fc9b0f9e3646a06c9cf773c9b1398f7f06bb51" [label=""];
  "sha256:e1bc9f1f6ee48484bb2b3ad9e9fc9b0f9e3646a06c9cf773c9b1398f7f06bb51" -> "sha256:2ddd9418e72656986992316602d56afa4dc8d31ca8c3928b6acceaa22d4984d6" [label=""];
  "sha256:2ddd9418e72656986992316602d56afa4dc8d31ca8c3928b6acceaa22d4984d6" -> "sha256:85e703eead43841cdfe0990cd24cca15682c8e2b920e9bb0dc4ddacf55c64867" [label=""];
  "sha256:85e703eead43841cdfe0990cd24cca15682c8e2b920e9bb0dc4ddacf55c64867" -> "sha256:bd684d6156fb8a22ceec0edb930f028d550f97636ffd48aef4528a4daf3885dc" [label=""];
}

