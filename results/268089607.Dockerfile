[app/sources/268089607.Dockerfile]
digraph {
  "sha256:ad0ef5a06e423d39ff0e3108d98212ce0ff629e0c76304d1baa14891c6bf3a44" [label="docker-image://docker.io/library/golang:1.7.3" shape="ellipse"];
  "sha256:d632bf6f778baab40d6f1966a5bfa6c6f7b39d16f30d90c7ddd4d8bd6e62ca45" [label="/bin/sh -c mkdir -p /go/src/github.com/aristanetworks/goarista/cmd" shape="box"];
  "sha256:86518d5200b543aab3c0c7290968d1f013df8892d02650a374f0bd4b763e4fde" [label="mkdir{path=/go/src/github.com/aristanetworks/goarista}" shape="note"];
  "sha256:ac295d2d0b6ea8bbda1b9cccb1e1dac78231e5aafd5d3a02cab316efeffffbd3" [label="local://context" shape="ellipse"];
  "sha256:d2f9000edfd14c4fca950e07c0023dadce47719d5589ca89ec5b73e1a8c91439" [label="copy{src=/, dest=/go/src/github.com/aristanetworks/goarista/}" shape="note"];
  "sha256:01a117dfcba514748bae26fb529ef87d63a9eeedc1d15bd20904c447834e61e6" [label="/bin/sh -c go get -d ./cmd/ockafka/...   && go install ./cmd/ockafka" shape="box"];
  "sha256:adbf1d3eab2147755851817a3c85836bd9323cf57724bb7dd1fa5eba71a7e826" [label="sha256:adbf1d3eab2147755851817a3c85836bd9323cf57724bb7dd1fa5eba71a7e826" shape="plaintext"];
  "sha256:ad0ef5a06e423d39ff0e3108d98212ce0ff629e0c76304d1baa14891c6bf3a44" -> "sha256:d632bf6f778baab40d6f1966a5bfa6c6f7b39d16f30d90c7ddd4d8bd6e62ca45" [label=""];
  "sha256:d632bf6f778baab40d6f1966a5bfa6c6f7b39d16f30d90c7ddd4d8bd6e62ca45" -> "sha256:86518d5200b543aab3c0c7290968d1f013df8892d02650a374f0bd4b763e4fde" [label=""];
  "sha256:86518d5200b543aab3c0c7290968d1f013df8892d02650a374f0bd4b763e4fde" -> "sha256:d2f9000edfd14c4fca950e07c0023dadce47719d5589ca89ec5b73e1a8c91439" [label=""];
  "sha256:ac295d2d0b6ea8bbda1b9cccb1e1dac78231e5aafd5d3a02cab316efeffffbd3" -> "sha256:d2f9000edfd14c4fca950e07c0023dadce47719d5589ca89ec5b73e1a8c91439" [label=""];
  "sha256:d2f9000edfd14c4fca950e07c0023dadce47719d5589ca89ec5b73e1a8c91439" -> "sha256:01a117dfcba514748bae26fb529ef87d63a9eeedc1d15bd20904c447834e61e6" [label=""];
  "sha256:01a117dfcba514748bae26fb529ef87d63a9eeedc1d15bd20904c447834e61e6" -> "sha256:adbf1d3eab2147755851817a3c85836bd9323cf57724bb7dd1fa5eba71a7e826" [label=""];
}

