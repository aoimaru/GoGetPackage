[app/sources/419979463.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:e0b1b0ee6e69e1d8cb0b166686e9d7fd84a30901c445fc5193db654d1f7cd67f" [label="/bin/sh -c mkdir -p $GOPATH/src $GOPATH/bin && chmod -R 777 $GO_HOME" shape="box"];
  "sha256:b52c59cb2d1511a17e2c4a09cc82fa291aae5d00f1fb98b7e32dcb00efc2eb06" [label="/bin/sh -c apk update && apk add bash curl git mercurial bzr subversion openssh-client ca-certificates go && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:252f0ce999307774de14ce0729f62337e5031bead9dcb64334460a85c5e93f60" [label="sha256:252f0ce999307774de14ce0729f62337e5031bead9dcb64334460a85c5e93f60" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:e0b1b0ee6e69e1d8cb0b166686e9d7fd84a30901c445fc5193db654d1f7cd67f" [label=""];
  "sha256:e0b1b0ee6e69e1d8cb0b166686e9d7fd84a30901c445fc5193db654d1f7cd67f" -> "sha256:b52c59cb2d1511a17e2c4a09cc82fa291aae5d00f1fb98b7e32dcb00efc2eb06" [label=""];
  "sha256:b52c59cb2d1511a17e2c4a09cc82fa291aae5d00f1fb98b7e32dcb00efc2eb06" -> "sha256:252f0ce999307774de14ce0729f62337e5031bead9dcb64334460a85c5e93f60" [label=""];
}

