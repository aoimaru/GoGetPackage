[app/sources/346357517.Dockerfile]
digraph {
  "sha256:5019399616561ceaeac5479dcebcc6aa13926f7b0cd0c36a7cea395e727f7d39" [label="docker-image://docker.io/library/alpine:3.1" shape="ellipse"];
  "sha256:d34f1ee5897d2e2b94f21fd2613e6bb69543c36618f6fd2f8b08b5aaeac14809" [label="/bin/sh -c mkdir -p /go" shape="box"];
  "sha256:99d5c53223e2ab80ad524c2d35c26469c418c398e13e43a67b33e76de8b9a376" [label="/bin/sh -c apk add --update             go             git             && export GOPATH=/go" shape="box"];
  "sha256:5e00be1c59e2a3f159b056ee346ad94fb4802f97f3054140d61bed361e529b0d" [label="mkdir{path=/go}" shape="note"];
  "sha256:8d7d6c5c5eef077d6f1078e8ba0acf862c14b453245bbba5d73e7617bfbd98e2" [label="/bin/sh -c go get github.com/samalba/dockerclient" shape="box"];
  "sha256:160d3e14109fd98711486308addda66f2d131c82b455d6f963b9c9045dc183ab" [label="local://context" shape="ellipse"];
  "sha256:5ed28e69b3210df25ceab315c76cd197f16907d68b0a4c7cd24e19516420004b" [label="copy{src=/, dest=/go/src/github.com/mjbright/thephedds}" shape="note"];
  "sha256:d15e919ddd7a139197f241ef72e522ef16b83624d1808efcaef2cb80580d6396" [label="mkdir{path=/go/src/github.com/mjbright/thephedds}" shape="note"];
  "sha256:8b2d13dab0dac90eecc5235de566f84c780bad5c544f2f14b3065d1e3b9bc89c" [label="/bin/sh -c go install github.com/mjbright/thephedds" shape="box"];
  "sha256:a5841fc7f62ba9bc598bd467eac9fe13e95bca6429578664ec986f2f3ccfbe05" [label="sha256:a5841fc7f62ba9bc598bd467eac9fe13e95bca6429578664ec986f2f3ccfbe05" shape="plaintext"];
  "sha256:5019399616561ceaeac5479dcebcc6aa13926f7b0cd0c36a7cea395e727f7d39" -> "sha256:d34f1ee5897d2e2b94f21fd2613e6bb69543c36618f6fd2f8b08b5aaeac14809" [label=""];
  "sha256:d34f1ee5897d2e2b94f21fd2613e6bb69543c36618f6fd2f8b08b5aaeac14809" -> "sha256:99d5c53223e2ab80ad524c2d35c26469c418c398e13e43a67b33e76de8b9a376" [label=""];
  "sha256:99d5c53223e2ab80ad524c2d35c26469c418c398e13e43a67b33e76de8b9a376" -> "sha256:5e00be1c59e2a3f159b056ee346ad94fb4802f97f3054140d61bed361e529b0d" [label=""];
  "sha256:5e00be1c59e2a3f159b056ee346ad94fb4802f97f3054140d61bed361e529b0d" -> "sha256:8d7d6c5c5eef077d6f1078e8ba0acf862c14b453245bbba5d73e7617bfbd98e2" [label=""];
  "sha256:8d7d6c5c5eef077d6f1078e8ba0acf862c14b453245bbba5d73e7617bfbd98e2" -> "sha256:5ed28e69b3210df25ceab315c76cd197f16907d68b0a4c7cd24e19516420004b" [label=""];
  "sha256:160d3e14109fd98711486308addda66f2d131c82b455d6f963b9c9045dc183ab" -> "sha256:5ed28e69b3210df25ceab315c76cd197f16907d68b0a4c7cd24e19516420004b" [label=""];
  "sha256:5ed28e69b3210df25ceab315c76cd197f16907d68b0a4c7cd24e19516420004b" -> "sha256:d15e919ddd7a139197f241ef72e522ef16b83624d1808efcaef2cb80580d6396" [label=""];
  "sha256:d15e919ddd7a139197f241ef72e522ef16b83624d1808efcaef2cb80580d6396" -> "sha256:8b2d13dab0dac90eecc5235de566f84c780bad5c544f2f14b3065d1e3b9bc89c" [label=""];
  "sha256:8b2d13dab0dac90eecc5235de566f84c780bad5c544f2f14b3065d1e3b9bc89c" -> "sha256:a5841fc7f62ba9bc598bd467eac9fe13e95bca6429578664ec986f2f3ccfbe05" [label=""];
}

