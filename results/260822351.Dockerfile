[app/sources/260822351.Dockerfile]
digraph {
  "sha256:ad0ef5a06e423d39ff0e3108d98212ce0ff629e0c76304d1baa14891c6bf3a44" [label="docker-image://docker.io/library/golang:1.7.3" shape="ellipse"];
  "sha256:d632bf6f778baab40d6f1966a5bfa6c6f7b39d16f30d90c7ddd4d8bd6e62ca45" [label="/bin/sh -c mkdir -p /go/src/github.com/aristanetworks/goarista/cmd" shape="box"];
  "sha256:86518d5200b543aab3c0c7290968d1f013df8892d02650a374f0bd4b763e4fde" [label="mkdir{path=/go/src/github.com/aristanetworks/goarista}" shape="note"];
  "sha256:aa05f32e92e7e993ce65ea996fdd8da96285f4641190c50f6c72f93dd8d1c0c0" [label="local://context" shape="ellipse"];
  "sha256:e52e64b10a19680b814fe29b2135f552025792a87bb3997c03d84c2d839e6664" [label="copy{src=/, dest=/go/src/github.com/aristanetworks/goarista/}" shape="note"];
  "sha256:7929f1c4428cd14a5a63e68af897c128b278ed1d41d1457af95604ffcd798eb1" [label="/bin/sh -c go get -d ./cmd/ockafka/...   && go install ./cmd/ockafka" shape="box"];
  "sha256:1c07a76acc5fbfafb1de99479f474548812cdd33d70f73f3deb093a1d29f7d01" [label="sha256:1c07a76acc5fbfafb1de99479f474548812cdd33d70f73f3deb093a1d29f7d01" shape="plaintext"];
  "sha256:ad0ef5a06e423d39ff0e3108d98212ce0ff629e0c76304d1baa14891c6bf3a44" -> "sha256:d632bf6f778baab40d6f1966a5bfa6c6f7b39d16f30d90c7ddd4d8bd6e62ca45" [label=""];
  "sha256:d632bf6f778baab40d6f1966a5bfa6c6f7b39d16f30d90c7ddd4d8bd6e62ca45" -> "sha256:86518d5200b543aab3c0c7290968d1f013df8892d02650a374f0bd4b763e4fde" [label=""];
  "sha256:86518d5200b543aab3c0c7290968d1f013df8892d02650a374f0bd4b763e4fde" -> "sha256:e52e64b10a19680b814fe29b2135f552025792a87bb3997c03d84c2d839e6664" [label=""];
  "sha256:aa05f32e92e7e993ce65ea996fdd8da96285f4641190c50f6c72f93dd8d1c0c0" -> "sha256:e52e64b10a19680b814fe29b2135f552025792a87bb3997c03d84c2d839e6664" [label=""];
  "sha256:e52e64b10a19680b814fe29b2135f552025792a87bb3997c03d84c2d839e6664" -> "sha256:7929f1c4428cd14a5a63e68af897c128b278ed1d41d1457af95604ffcd798eb1" [label=""];
  "sha256:7929f1c4428cd14a5a63e68af897c128b278ed1d41d1457af95604ffcd798eb1" -> "sha256:1c07a76acc5fbfafb1de99479f474548812cdd33d70f73f3deb093a1d29f7d01" [label=""];
}

