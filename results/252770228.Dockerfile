[app/sources/252770228.Dockerfile]
digraph {
  "sha256:04f9932afa5889cc089fa2d5bad74e6c3b260a0f8eb9befe52cce7d5f784daaa" [label="docker-image://docker.io/library/node:4-slim" shape="ellipse"];
  "sha256:9894cb6db841a0d22e588f9bff60271c704c67c73745f65a21809015449e8b18" [label="/bin/sh -c npm install -g rainbow-dns" shape="box"];
  "sha256:9eca73e467d24a9388f79c297995aa86a094a52c1d64bc9998a66a6af967a629" [label="sha256:9eca73e467d24a9388f79c297995aa86a094a52c1d64bc9998a66a6af967a629" shape="plaintext"];
  "sha256:04f9932afa5889cc089fa2d5bad74e6c3b260a0f8eb9befe52cce7d5f784daaa" -> "sha256:9894cb6db841a0d22e588f9bff60271c704c67c73745f65a21809015449e8b18" [label=""];
  "sha256:9894cb6db841a0d22e588f9bff60271c704c67c73745f65a21809015449e8b18" -> "sha256:9eca73e467d24a9388f79c297995aa86a094a52c1d64bc9998a66a6af967a629" [label=""];
}

