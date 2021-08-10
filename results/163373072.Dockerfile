[app/sources/163373072.Dockerfile]
digraph {
  "sha256:62b2ed1dca7e83c5c0338407279584474137eee7480af8ea70e626f4671047bb" [label="docker-image://docker.io/library/spark-test-base:latest" shape="ellipse"];
  "sha256:9186329f9745321f6d48b7930c0e05a502a1a861cc667de44cc775f908956ba5" [label="local://context" shape="ellipse"];
  "sha256:6f1ea58cfa5d78be40067b595a0b5e9e9d41a4805d5dd5725e4d6d6a3249ec27" [label="copy{src=/default_cmd, dest=/root/}" shape="note"];
  "sha256:97cc194aa2ee4eb48230c5f75881f15c945e454fa9cabb1ca070f9dffb88c520" [label="sha256:97cc194aa2ee4eb48230c5f75881f15c945e454fa9cabb1ca070f9dffb88c520" shape="plaintext"];
  "sha256:62b2ed1dca7e83c5c0338407279584474137eee7480af8ea70e626f4671047bb" -> "sha256:6f1ea58cfa5d78be40067b595a0b5e9e9d41a4805d5dd5725e4d6d6a3249ec27" [label=""];
  "sha256:9186329f9745321f6d48b7930c0e05a502a1a861cc667de44cc775f908956ba5" -> "sha256:6f1ea58cfa5d78be40067b595a0b5e9e9d41a4805d5dd5725e4d6d6a3249ec27" [label=""];
  "sha256:6f1ea58cfa5d78be40067b595a0b5e9e9d41a4805d5dd5725e4d6d6a3249ec27" -> "sha256:97cc194aa2ee4eb48230c5f75881f15c945e454fa9cabb1ca070f9dffb88c520" [label=""];
}

