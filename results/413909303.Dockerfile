[app/sources/413909303.Dockerfile]
digraph {
  "sha256:ad0ef5a06e423d39ff0e3108d98212ce0ff629e0c76304d1baa14891c6bf3a44" [label="docker-image://docker.io/library/golang:1.7.3" shape="ellipse"];
  "sha256:d632bf6f778baab40d6f1966a5bfa6c6f7b39d16f30d90c7ddd4d8bd6e62ca45" [label="/bin/sh -c mkdir -p /go/src/github.com/aristanetworks/goarista/cmd" shape="box"];
  "sha256:86518d5200b543aab3c0c7290968d1f013df8892d02650a374f0bd4b763e4fde" [label="mkdir{path=/go/src/github.com/aristanetworks/goarista}" shape="note"];
  "sha256:165f1121e3ad2e1f8c7c076e09e2c71051a831669252b54f4b7b47e7258cec20" [label="local://context" shape="ellipse"];
  "sha256:956f209feef0874c294b46ad14fdd2f7224b410c90fb4e3d237d9e27c6d56921" [label="copy{src=/, dest=/go/src/github.com/aristanetworks/goarista/}" shape="note"];
  "sha256:397931a03cc33f3698be6b4107512105ece6a7bd64106a7b7383f4bb3f730c2b" [label="/bin/sh -c go get -d ./cmd/ockafka/...   && go install ./cmd/ockafka" shape="box"];
  "sha256:34c57a6ab59227174694b0ccc0f4905827c94c5f66c882fbad955ab2584ea636" [label="sha256:34c57a6ab59227174694b0ccc0f4905827c94c5f66c882fbad955ab2584ea636" shape="plaintext"];
  "sha256:ad0ef5a06e423d39ff0e3108d98212ce0ff629e0c76304d1baa14891c6bf3a44" -> "sha256:d632bf6f778baab40d6f1966a5bfa6c6f7b39d16f30d90c7ddd4d8bd6e62ca45" [label=""];
  "sha256:d632bf6f778baab40d6f1966a5bfa6c6f7b39d16f30d90c7ddd4d8bd6e62ca45" -> "sha256:86518d5200b543aab3c0c7290968d1f013df8892d02650a374f0bd4b763e4fde" [label=""];
  "sha256:86518d5200b543aab3c0c7290968d1f013df8892d02650a374f0bd4b763e4fde" -> "sha256:956f209feef0874c294b46ad14fdd2f7224b410c90fb4e3d237d9e27c6d56921" [label=""];
  "sha256:165f1121e3ad2e1f8c7c076e09e2c71051a831669252b54f4b7b47e7258cec20" -> "sha256:956f209feef0874c294b46ad14fdd2f7224b410c90fb4e3d237d9e27c6d56921" [label=""];
  "sha256:956f209feef0874c294b46ad14fdd2f7224b410c90fb4e3d237d9e27c6d56921" -> "sha256:397931a03cc33f3698be6b4107512105ece6a7bd64106a7b7383f4bb3f730c2b" [label=""];
  "sha256:397931a03cc33f3698be6b4107512105ece6a7bd64106a7b7383f4bb3f730c2b" -> "sha256:34c57a6ab59227174694b0ccc0f4905827c94c5f66c882fbad955ab2584ea636" [label=""];
}

