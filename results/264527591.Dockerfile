[app/sources/264527591.Dockerfile]
digraph {
  "sha256:ad0ef5a06e423d39ff0e3108d98212ce0ff629e0c76304d1baa14891c6bf3a44" [label="docker-image://docker.io/library/golang:1.7.3" shape="ellipse"];
  "sha256:d632bf6f778baab40d6f1966a5bfa6c6f7b39d16f30d90c7ddd4d8bd6e62ca45" [label="/bin/sh -c mkdir -p /go/src/github.com/aristanetworks/goarista/cmd" shape="box"];
  "sha256:86518d5200b543aab3c0c7290968d1f013df8892d02650a374f0bd4b763e4fde" [label="mkdir{path=/go/src/github.com/aristanetworks/goarista}" shape="note"];
  "sha256:c8cbad0497e9e4916770e3ceac7576fede06e8f30ad1eafb932e645c2a915b59" [label="local://context" shape="ellipse"];
  "sha256:1b7cc8ff008182fb32bf81b3c1d31e4709d1dd2238f01b74fbfb0ef793317b8b" [label="copy{src=/, dest=/go/src/github.com/aristanetworks/goarista/}" shape="note"];
  "sha256:227a2d5e8006d6595d507675bf5c81a52789ed7e9ad56f3c37d1611faf3862a9" [label="/bin/sh -c go get -d ./cmd/ockafka/...   && go install ./cmd/ockafka" shape="box"];
  "sha256:e80beafa37f47831551bfc787f25fbb3fcdb080adb159a902ca00d54d07d9b53" [label="sha256:e80beafa37f47831551bfc787f25fbb3fcdb080adb159a902ca00d54d07d9b53" shape="plaintext"];
  "sha256:ad0ef5a06e423d39ff0e3108d98212ce0ff629e0c76304d1baa14891c6bf3a44" -> "sha256:d632bf6f778baab40d6f1966a5bfa6c6f7b39d16f30d90c7ddd4d8bd6e62ca45" [label=""];
  "sha256:d632bf6f778baab40d6f1966a5bfa6c6f7b39d16f30d90c7ddd4d8bd6e62ca45" -> "sha256:86518d5200b543aab3c0c7290968d1f013df8892d02650a374f0bd4b763e4fde" [label=""];
  "sha256:86518d5200b543aab3c0c7290968d1f013df8892d02650a374f0bd4b763e4fde" -> "sha256:1b7cc8ff008182fb32bf81b3c1d31e4709d1dd2238f01b74fbfb0ef793317b8b" [label=""];
  "sha256:c8cbad0497e9e4916770e3ceac7576fede06e8f30ad1eafb932e645c2a915b59" -> "sha256:1b7cc8ff008182fb32bf81b3c1d31e4709d1dd2238f01b74fbfb0ef793317b8b" [label=""];
  "sha256:1b7cc8ff008182fb32bf81b3c1d31e4709d1dd2238f01b74fbfb0ef793317b8b" -> "sha256:227a2d5e8006d6595d507675bf5c81a52789ed7e9ad56f3c37d1611faf3862a9" [label=""];
  "sha256:227a2d5e8006d6595d507675bf5c81a52789ed7e9ad56f3c37d1611faf3862a9" -> "sha256:e80beafa37f47831551bfc787f25fbb3fcdb080adb159a902ca00d54d07d9b53" [label=""];
}

