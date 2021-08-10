[app/sources/206048573.Dockerfile]
digraph {
  "sha256:e3d9f6e4c0421b67d1a4cbc0080f3af90cdb53ec9e964d91f472335f149b4103" [label="local://context" shape="ellipse"];
  "sha256:7e8c688afd08094f8f9517a9e016e0d3c11526cb454cbbe2febc298acf1bbad3" [label="docker-image://docker.io/library/golang:1.7" shape="ellipse"];
  "sha256:f0413ea4f8f0913b001d8c94924bd4ac975125f021c57228ec937d45f1230584" [label="copy{src=/, dest=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:9f6d7e3b8508c34c0d256bcdfb763fe205a742dcc5ccdbcb69a6ac4fbbe0e1df" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tvim \t&& rm -rf /var/list/apt/lists/*" shape="box"];
  "sha256:3fdc8e294c6415f405ce6da4c58f0860a5a416ad8d634995a2feb6bbf6504b12" [label="mkdir{path=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:901b4360b122ebe5b36e5111c0526ac2a3cce7b006bbcb766dbed8d623e994af" [label="sha256:901b4360b122ebe5b36e5111c0526ac2a3cce7b006bbcb766dbed8d623e994af" shape="plaintext"];
  "sha256:7e8c688afd08094f8f9517a9e016e0d3c11526cb454cbbe2febc298acf1bbad3" -> "sha256:f0413ea4f8f0913b001d8c94924bd4ac975125f021c57228ec937d45f1230584" [label=""];
  "sha256:e3d9f6e4c0421b67d1a4cbc0080f3af90cdb53ec9e964d91f472335f149b4103" -> "sha256:f0413ea4f8f0913b001d8c94924bd4ac975125f021c57228ec937d45f1230584" [label=""];
  "sha256:f0413ea4f8f0913b001d8c94924bd4ac975125f021c57228ec937d45f1230584" -> "sha256:9f6d7e3b8508c34c0d256bcdfb763fe205a742dcc5ccdbcb69a6ac4fbbe0e1df" [label=""];
  "sha256:9f6d7e3b8508c34c0d256bcdfb763fe205a742dcc5ccdbcb69a6ac4fbbe0e1df" -> "sha256:3fdc8e294c6415f405ce6da4c58f0860a5a416ad8d634995a2feb6bbf6504b12" [label=""];
  "sha256:3fdc8e294c6415f405ce6da4c58f0860a5a416ad8d634995a2feb6bbf6504b12" -> "sha256:901b4360b122ebe5b36e5111c0526ac2a3cce7b006bbcb766dbed8d623e994af" [label=""];
}

