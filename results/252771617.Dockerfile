[app/sources/252771617.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:ed3410da9693529e54f0c4fcab7d568b22ba574c8e569f88fe98d871e144a75c" [label="/bin/sh -c apk update && apk add openssl nginx gettext" shape="box"];
  "sha256:be3c26f67ec4379fa98ed1cad5481d759749887b5f89568375f91ab99ac71db5" [label="local://context" shape="ellipse"];
  "sha256:04bee80bd655402edd40ffc396d9114dfb12f9770253632a5cb21d66bbb5fd15" [label="copy{src=/overlay, dest=/}" shape="note"];
  "sha256:bc03b1adf39ff661826dbaa968a9b02506bcf17816de19f86d87d3eac1aaebf5" [label="mkdir{path=/scripts}" shape="note"];
  "sha256:2a5d983b8447debfd73b5fbf0262dd4f28a20a89f1aba1d1738aa528f374ffe2" [label="sha256:2a5d983b8447debfd73b5fbf0262dd4f28a20a89f1aba1d1738aa528f374ffe2" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:ed3410da9693529e54f0c4fcab7d568b22ba574c8e569f88fe98d871e144a75c" [label=""];
  "sha256:ed3410da9693529e54f0c4fcab7d568b22ba574c8e569f88fe98d871e144a75c" -> "sha256:04bee80bd655402edd40ffc396d9114dfb12f9770253632a5cb21d66bbb5fd15" [label=""];
  "sha256:be3c26f67ec4379fa98ed1cad5481d759749887b5f89568375f91ab99ac71db5" -> "sha256:04bee80bd655402edd40ffc396d9114dfb12f9770253632a5cb21d66bbb5fd15" [label=""];
  "sha256:04bee80bd655402edd40ffc396d9114dfb12f9770253632a5cb21d66bbb5fd15" -> "sha256:bc03b1adf39ff661826dbaa968a9b02506bcf17816de19f86d87d3eac1aaebf5" [label=""];
  "sha256:bc03b1adf39ff661826dbaa968a9b02506bcf17816de19f86d87d3eac1aaebf5" -> "sha256:2a5d983b8447debfd73b5fbf0262dd4f28a20a89f1aba1d1738aa528f374ffe2" [label=""];
}

