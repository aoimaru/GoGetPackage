[app/sources/197455704.Dockerfile]
digraph {
  "sha256:d3575ac41a0b0874a0b92f2376b4357024823d0228fc1c0f154ab0100b2b60d9" [label="docker-image://docker.io/library/golang:1.6" shape="ellipse"];
  "sha256:a76691ff1ef057bbf4be6616abd6228dec22fbc48020b785524dcd017e2de6b9" [label="local://context" shape="ellipse"];
  "sha256:5798d30eb61a7fb9342e6a30e14797d25a4a3ecf668ffab74d8d3dfeccebd9da" [label="copy{src=/, dest=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:3fa8dc5cab93f8d7843bf499cc23a87e57e1872b5bacb05f4c78a3590c5e1a7b" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tvim \t&& rm -rf /var/list/apt/lists/*" shape="box"];
  "sha256:577f953c101fa56b07d735066fd18e10def825fd5ad0ef7a22535d9efec9b2f6" [label="mkdir{path=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:a02f53c6c63192d48852effa59f9aa31c5095e44ddfe18807683290c6a981083" [label="sha256:a02f53c6c63192d48852effa59f9aa31c5095e44ddfe18807683290c6a981083" shape="plaintext"];
  "sha256:d3575ac41a0b0874a0b92f2376b4357024823d0228fc1c0f154ab0100b2b60d9" -> "sha256:5798d30eb61a7fb9342e6a30e14797d25a4a3ecf668ffab74d8d3dfeccebd9da" [label=""];
  "sha256:a76691ff1ef057bbf4be6616abd6228dec22fbc48020b785524dcd017e2de6b9" -> "sha256:5798d30eb61a7fb9342e6a30e14797d25a4a3ecf668ffab74d8d3dfeccebd9da" [label=""];
  "sha256:5798d30eb61a7fb9342e6a30e14797d25a4a3ecf668ffab74d8d3dfeccebd9da" -> "sha256:3fa8dc5cab93f8d7843bf499cc23a87e57e1872b5bacb05f4c78a3590c5e1a7b" [label=""];
  "sha256:3fa8dc5cab93f8d7843bf499cc23a87e57e1872b5bacb05f4c78a3590c5e1a7b" -> "sha256:577f953c101fa56b07d735066fd18e10def825fd5ad0ef7a22535d9efec9b2f6" [label=""];
  "sha256:577f953c101fa56b07d735066fd18e10def825fd5ad0ef7a22535d9efec9b2f6" -> "sha256:a02f53c6c63192d48852effa59f9aa31c5095e44ddfe18807683290c6a981083" [label=""];
}

