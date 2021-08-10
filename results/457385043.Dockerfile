[app/sources/457385043.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" [label="docker-image://docker.io/library/golang:alpine" shape="ellipse"];
  "sha256:1c33fbf5ffddc75f706f577a5851963c30c8ed4fa556983159a48d191bda492d" [label="local://context" shape="ellipse"];
  "sha256:c892c80f7fdd76057ebfc145a58b9468acdbc4ffca5cefeffd6ac47b87927109" [label="copy{src=/, dest=/src}" shape="note"];
  "sha256:0df6be54ff7b9b9c93f5f1962007ea1c716314e03facda0d6d4c21a58aac11e0" [label="mkdir{path=/src}" shape="note"];
  "sha256:5e49dc5c548d176ba0a13648ad59bce472f03506797fc3b4f4386880bfcf0e24" [label="/bin/sh -c apk add git && ./build" shape="box"];
  "sha256:c217f1e7e71d288d5ede2ea2da7ebdcdd5226485a4c5d1e89f336955675f529d" [label="copy{src=/src/yggdrasil, dest=/usr/bin/yggdrasil}" shape="note"];
  "sha256:b3f898740675cf66572eca406780dfbc301348dc252f7d0ab14a3132123f60e4" [label="copy{src=/src/yggdrasilctl, dest=/usr/bin/yggdrasilctl}" shape="note"];
  "sha256:cf97dca9b3e53f3e226821a135c605e8e9d8ef795de2eed773886448594cb6ed" [label="copy{src=/contrib/docker/entrypoint.sh, dest=/usr/bin/entrypoint.sh}" shape="note"];
  "sha256:c837cbfe817da1c0b07dac158ec0b917402c913ee41de3ab47cfff8f39ddcbc6" [label="sha256:c837cbfe817da1c0b07dac158ec0b917402c913ee41de3ab47cfff8f39ddcbc6" shape="plaintext"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" -> "sha256:c892c80f7fdd76057ebfc145a58b9468acdbc4ffca5cefeffd6ac47b87927109" [label=""];
  "sha256:1c33fbf5ffddc75f706f577a5851963c30c8ed4fa556983159a48d191bda492d" -> "sha256:c892c80f7fdd76057ebfc145a58b9468acdbc4ffca5cefeffd6ac47b87927109" [label=""];
  "sha256:c892c80f7fdd76057ebfc145a58b9468acdbc4ffca5cefeffd6ac47b87927109" -> "sha256:0df6be54ff7b9b9c93f5f1962007ea1c716314e03facda0d6d4c21a58aac11e0" [label=""];
  "sha256:0df6be54ff7b9b9c93f5f1962007ea1c716314e03facda0d6d4c21a58aac11e0" -> "sha256:5e49dc5c548d176ba0a13648ad59bce472f03506797fc3b4f4386880bfcf0e24" [label=""];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:c217f1e7e71d288d5ede2ea2da7ebdcdd5226485a4c5d1e89f336955675f529d" [label=""];
  "sha256:5e49dc5c548d176ba0a13648ad59bce472f03506797fc3b4f4386880bfcf0e24" -> "sha256:c217f1e7e71d288d5ede2ea2da7ebdcdd5226485a4c5d1e89f336955675f529d" [label=""];
  "sha256:c217f1e7e71d288d5ede2ea2da7ebdcdd5226485a4c5d1e89f336955675f529d" -> "sha256:b3f898740675cf66572eca406780dfbc301348dc252f7d0ab14a3132123f60e4" [label=""];
  "sha256:5e49dc5c548d176ba0a13648ad59bce472f03506797fc3b4f4386880bfcf0e24" -> "sha256:b3f898740675cf66572eca406780dfbc301348dc252f7d0ab14a3132123f60e4" [label=""];
  "sha256:b3f898740675cf66572eca406780dfbc301348dc252f7d0ab14a3132123f60e4" -> "sha256:cf97dca9b3e53f3e226821a135c605e8e9d8ef795de2eed773886448594cb6ed" [label=""];
  "sha256:1c33fbf5ffddc75f706f577a5851963c30c8ed4fa556983159a48d191bda492d" -> "sha256:cf97dca9b3e53f3e226821a135c605e8e9d8ef795de2eed773886448594cb6ed" [label=""];
  "sha256:cf97dca9b3e53f3e226821a135c605e8e9d8ef795de2eed773886448594cb6ed" -> "sha256:c837cbfe817da1c0b07dac158ec0b917402c913ee41de3ab47cfff8f39ddcbc6" [label=""];
}

