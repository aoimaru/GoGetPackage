[app/sources/453590193.Dockerfile]
digraph {
  "sha256:65a2d6a6841bb2da07a60f5a86e7d1027cd5aeda2cc1073a5b02f3de8e033840" [label="local://context" shape="ellipse"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" [label="docker-image://docker.io/library/golang:alpine" shape="ellipse"];
  "sha256:9282b9def46d874365505f9f6bec1d1c91a75b5650f54a784a755bd6ea8988ad" [label="/bin/sh -c apk add --no-cache curl git" shape="box"];
  "sha256:e11d80dd4ff58d25eaa74f8536f1f07f12e9255fd09c1ea9b972b5e4abd3f96b" [label="mkdir{path=/go/src/github.com/chihaya/chihaya}" shape="note"];
  "sha256:3827e118c0c942e0efd4d69329a1001c26bcbd4b47ff6d13e20c1a54a96a812d" [label="copy{src=/, dest=/go/src/github.com/chihaya/chihaya}" shape="note"];
  "sha256:c329244a6acce9407a743f6adfb732d63bed6005af626a3b0d9a63db4f7043a8" [label="/bin/sh -c CGO_ENABLED=0 GO111MODULE=on go install github.com/chihaya/chihaya/cmd/..." shape="box"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:7156115684219992d715d910caa1a89fea8becfe16e4ad29bad6cb66a15151fa" [label="/bin/sh -c apk add --no-cache ca-certificates" shape="box"];
  "sha256:4325bab0a76bb337553e2ee3908138b6fafabf3897077531481744266e3f53e2" [label="copy{src=/go/bin/chihaya, dest=/chihaya}" shape="note"];
  "sha256:834fa7f47e28e426df6d15566d5baf6f879e3b3fc50bad7f174cd656581eda49" [label="/bin/sh -c adduser -D chihaya" shape="box"];
  "sha256:7d06abddff9dbe3899457084bfc55bc981b33bb33d4cce5faba9918ef12241cd" [label="sha256:7d06abddff9dbe3899457084bfc55bc981b33bb33d4cce5faba9918ef12241cd" shape="plaintext"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" -> "sha256:9282b9def46d874365505f9f6bec1d1c91a75b5650f54a784a755bd6ea8988ad" [label=""];
  "sha256:9282b9def46d874365505f9f6bec1d1c91a75b5650f54a784a755bd6ea8988ad" -> "sha256:e11d80dd4ff58d25eaa74f8536f1f07f12e9255fd09c1ea9b972b5e4abd3f96b" [label=""];
  "sha256:e11d80dd4ff58d25eaa74f8536f1f07f12e9255fd09c1ea9b972b5e4abd3f96b" -> "sha256:3827e118c0c942e0efd4d69329a1001c26bcbd4b47ff6d13e20c1a54a96a812d" [label=""];
  "sha256:65a2d6a6841bb2da07a60f5a86e7d1027cd5aeda2cc1073a5b02f3de8e033840" -> "sha256:3827e118c0c942e0efd4d69329a1001c26bcbd4b47ff6d13e20c1a54a96a812d" [label=""];
  "sha256:3827e118c0c942e0efd4d69329a1001c26bcbd4b47ff6d13e20c1a54a96a812d" -> "sha256:c329244a6acce9407a743f6adfb732d63bed6005af626a3b0d9a63db4f7043a8" [label=""];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:7156115684219992d715d910caa1a89fea8becfe16e4ad29bad6cb66a15151fa" [label=""];
  "sha256:7156115684219992d715d910caa1a89fea8becfe16e4ad29bad6cb66a15151fa" -> "sha256:4325bab0a76bb337553e2ee3908138b6fafabf3897077531481744266e3f53e2" [label=""];
  "sha256:c329244a6acce9407a743f6adfb732d63bed6005af626a3b0d9a63db4f7043a8" -> "sha256:4325bab0a76bb337553e2ee3908138b6fafabf3897077531481744266e3f53e2" [label=""];
  "sha256:4325bab0a76bb337553e2ee3908138b6fafabf3897077531481744266e3f53e2" -> "sha256:834fa7f47e28e426df6d15566d5baf6f879e3b3fc50bad7f174cd656581eda49" [label=""];
  "sha256:834fa7f47e28e426df6d15566d5baf6f879e3b3fc50bad7f174cd656581eda49" -> "sha256:7d06abddff9dbe3899457084bfc55bc981b33bb33d4cce5faba9918ef12241cd" [label=""];
}

