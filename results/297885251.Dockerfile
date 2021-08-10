[app/sources/297885251.Dockerfile]
digraph {
  "sha256:e0d271bcd484959ecefab77a805800c3fae51ffbe840cb4daf0881b4a5f6fe8c" [label="docker-image://docker.io/library/golang:1.8.0" shape="ellipse"];
  "sha256:ee32d01e6b5c9e245b48a0d85cecae839997fa55d30c041b4733b67f83e96aba" [label="/bin/sh -c apt-get update && apt-get install -y netcat" shape="box"];
  "sha256:5ffb3070310e848bc2a70a5530e14d832caa2834d2f37093f0f81103ac2110f0" [label="/bin/sh -c go get github.com/jstemmer/go-junit-report" shape="box"];
  "sha256:bbdd7b72a748a2a2842986678db1f5e0954441e759ce062ee01e179c68878211" [label="sha256:bbdd7b72a748a2a2842986678db1f5e0954441e759ce062ee01e179c68878211" shape="plaintext"];
  "sha256:e0d271bcd484959ecefab77a805800c3fae51ffbe840cb4daf0881b4a5f6fe8c" -> "sha256:ee32d01e6b5c9e245b48a0d85cecae839997fa55d30c041b4733b67f83e96aba" [label=""];
  "sha256:ee32d01e6b5c9e245b48a0d85cecae839997fa55d30c041b4733b67f83e96aba" -> "sha256:5ffb3070310e848bc2a70a5530e14d832caa2834d2f37093f0f81103ac2110f0" [label=""];
  "sha256:5ffb3070310e848bc2a70a5530e14d832caa2834d2f37093f0f81103ac2110f0" -> "sha256:bbdd7b72a748a2a2842986678db1f5e0954441e759ce062ee01e179c68878211" [label=""];
}

