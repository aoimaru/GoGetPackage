[app/sources/345361102.Dockerfile]
digraph {
  "sha256:bd7fe080a12bc936d4a0a9b3fa985ffcbac9dfbc9be50feb5351da3843e3de5c" [label="docker-image://docker.io/balenalib/up-board-alpine:3.5-build" shape="ellipse"];
  "sha256:156fe6c2ae64273385797cba93fc9428c70b8a9739601842db1d66af373322a7" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:0574c9696bb4f5b2a8e09ff366fcec2b9e1c70f63f50c291a1513b78042ec702" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-amd64.tar.gz\" \t&& echo \"6e010100facdbae49d3226c6b1f67ad3212d5cd941050cef721e2e6145c4f1b8  go$GO_VERSION.linux-alpine-amd64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-amd64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-amd64.tar.gz" shape="box"];
  "sha256:1641fca108df130b10ce35562b289024073a24e26e7d2610f8398672552f7c30" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:113b2141a9cf676697000aac9937a1a75e286eb96dc2d65d0c9c23049828a8fe" [label="mkdir{path=/go}" shape="note"];
  "sha256:58d6ea8c6b0b226f5ff7019362df0f46c2a98ee7fd73a2c996971364b43b70f1" [label="sha256:58d6ea8c6b0b226f5ff7019362df0f46c2a98ee7fd73a2c996971364b43b70f1" shape="plaintext"];
  "sha256:bd7fe080a12bc936d4a0a9b3fa985ffcbac9dfbc9be50feb5351da3843e3de5c" -> "sha256:156fe6c2ae64273385797cba93fc9428c70b8a9739601842db1d66af373322a7" [label=""];
  "sha256:156fe6c2ae64273385797cba93fc9428c70b8a9739601842db1d66af373322a7" -> "sha256:0574c9696bb4f5b2a8e09ff366fcec2b9e1c70f63f50c291a1513b78042ec702" [label=""];
  "sha256:0574c9696bb4f5b2a8e09ff366fcec2b9e1c70f63f50c291a1513b78042ec702" -> "sha256:1641fca108df130b10ce35562b289024073a24e26e7d2610f8398672552f7c30" [label=""];
  "sha256:1641fca108df130b10ce35562b289024073a24e26e7d2610f8398672552f7c30" -> "sha256:113b2141a9cf676697000aac9937a1a75e286eb96dc2d65d0c9c23049828a8fe" [label=""];
  "sha256:113b2141a9cf676697000aac9937a1a75e286eb96dc2d65d0c9c23049828a8fe" -> "sha256:58d6ea8c6b0b226f5ff7019362df0f46c2a98ee7fd73a2c996971364b43b70f1" [label=""];
}

