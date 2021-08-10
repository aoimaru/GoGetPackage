[app/sources/223037315.Dockerfile]
digraph {
  "sha256:be7f72d58225eb22e4de98811a40f2894475aa1a36444806f38addb93cf47938" [label="docker-image://docker.io/library/node:8-slim" shape="ellipse"];
  "sha256:3b1b0e2e4e70a1204eb16173b81bb005d0cf448fba4ef0f80bae5379a42091fa" [label="/bin/sh -c npm install pm2 -g" shape="box"];
  "sha256:050344a5f52f6eca3788c916e05698d64a143b14b24f1b1b0d18aac03deea71a" [label="sha256:050344a5f52f6eca3788c916e05698d64a143b14b24f1b1b0d18aac03deea71a" shape="plaintext"];
  "sha256:be7f72d58225eb22e4de98811a40f2894475aa1a36444806f38addb93cf47938" -> "sha256:3b1b0e2e4e70a1204eb16173b81bb005d0cf448fba4ef0f80bae5379a42091fa" [label=""];
  "sha256:3b1b0e2e4e70a1204eb16173b81bb005d0cf448fba4ef0f80bae5379a42091fa" -> "sha256:050344a5f52f6eca3788c916e05698d64a143b14b24f1b1b0d18aac03deea71a" [label=""];
}

