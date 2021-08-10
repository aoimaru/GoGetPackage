[app/sources/345368334.Dockerfile]
digraph {
  "sha256:0d9bde6ddf2d0121b8d6858dee530b0b3a3dd5d142d965e61462923e560a1597" [label="docker-image://docker.io/balenalib/asus-tinker-board-alpine:3.8-build" shape="ellipse"];
  "sha256:b9ce60dd97c38c8cb8a2ecc98a5aa049d476c09c6a09c3e389f3409871d35970" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:1d35a87deeaeace6be8233e621105ac70ca9865b5ec588e5636c9af83a66561c" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"76be47e1f6979af4fc7c0c06d883a082f78a98b9948cf28359702877a8b2b9b2  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz" shape="box"];
  "sha256:eb40c756e92bff70f75100598085c4b9e6c8358c130e952a8735dc841953ef30" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:0a253d67c53fdd594dea51600a4d32dcc18ce5fc3980142d640a916d2a22d365" [label="mkdir{path=/go}" shape="note"];
  "sha256:bede6b664592249abb2170c2d7cffa2d769f2ac26205af33b88507f419c7d0ae" [label="sha256:bede6b664592249abb2170c2d7cffa2d769f2ac26205af33b88507f419c7d0ae" shape="plaintext"];
  "sha256:0d9bde6ddf2d0121b8d6858dee530b0b3a3dd5d142d965e61462923e560a1597" -> "sha256:b9ce60dd97c38c8cb8a2ecc98a5aa049d476c09c6a09c3e389f3409871d35970" [label=""];
  "sha256:b9ce60dd97c38c8cb8a2ecc98a5aa049d476c09c6a09c3e389f3409871d35970" -> "sha256:1d35a87deeaeace6be8233e621105ac70ca9865b5ec588e5636c9af83a66561c" [label=""];
  "sha256:1d35a87deeaeace6be8233e621105ac70ca9865b5ec588e5636c9af83a66561c" -> "sha256:eb40c756e92bff70f75100598085c4b9e6c8358c130e952a8735dc841953ef30" [label=""];
  "sha256:eb40c756e92bff70f75100598085c4b9e6c8358c130e952a8735dc841953ef30" -> "sha256:0a253d67c53fdd594dea51600a4d32dcc18ce5fc3980142d640a916d2a22d365" [label=""];
  "sha256:0a253d67c53fdd594dea51600a4d32dcc18ce5fc3980142d640a916d2a22d365" -> "sha256:bede6b664592249abb2170c2d7cffa2d769f2ac26205af33b88507f419c7d0ae" [label=""];
}

