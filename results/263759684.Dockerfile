[app/sources/263759684.Dockerfile]
digraph {
  "sha256:e6643a35a992c13c12fbbfe59815e1d14cfae352992052203c6a99f54b2d545d" [label="docker-image://docker.io/library/solaris:latest" shape="ellipse"];
  "sha256:59541e3ed3227b1a6a7a90388e4ed0d3f0664e98b0d8bab6b467e9d997e41916" [label="/bin/sh -c pkg install --accept \t\tgit \t\tgnu-coreutils \t\tgnu-make \t\tgnu-tar \t\tdiagnostic/top \t\tgolang \t\tlibrary/golang/* \t\tdeveloper/gcc-*" shape="box"];
  "sha256:5654660b40b1396626de2c1d1234e97e36e504cd0492cee51807e93ba4a13861" [label="mkdir{path=/go/src/github.com/docker/docker}" shape="note"];
  "sha256:c002e284e0a71f5975a5449103511eb7dfd68c37cf96c8d36fe244795dbf4dc4" [label="local://context" shape="ellipse"];
  "sha256:568b6c9d19b6603c85a0e25db6f5086a73b87a7691d0b2e26d816f82ed61e3dc" [label="copy{src=/, dest=/go/src/github.com/docker/docker}" shape="note"];
  "sha256:8e3b4c5ce41900416301c8e0fc5e4b4321dc1c03c31de3aa6387ce8dbbf9198e" [label="sha256:8e3b4c5ce41900416301c8e0fc5e4b4321dc1c03c31de3aa6387ce8dbbf9198e" shape="plaintext"];
  "sha256:e6643a35a992c13c12fbbfe59815e1d14cfae352992052203c6a99f54b2d545d" -> "sha256:59541e3ed3227b1a6a7a90388e4ed0d3f0664e98b0d8bab6b467e9d997e41916" [label=""];
  "sha256:59541e3ed3227b1a6a7a90388e4ed0d3f0664e98b0d8bab6b467e9d997e41916" -> "sha256:5654660b40b1396626de2c1d1234e97e36e504cd0492cee51807e93ba4a13861" [label=""];
  "sha256:5654660b40b1396626de2c1d1234e97e36e504cd0492cee51807e93ba4a13861" -> "sha256:568b6c9d19b6603c85a0e25db6f5086a73b87a7691d0b2e26d816f82ed61e3dc" [label=""];
  "sha256:c002e284e0a71f5975a5449103511eb7dfd68c37cf96c8d36fe244795dbf4dc4" -> "sha256:568b6c9d19b6603c85a0e25db6f5086a73b87a7691d0b2e26d816f82ed61e3dc" [label=""];
  "sha256:568b6c9d19b6603c85a0e25db6f5086a73b87a7691d0b2e26d816f82ed61e3dc" -> "sha256:8e3b4c5ce41900416301c8e0fc5e4b4321dc1c03c31de3aa6387ce8dbbf9198e" [label=""];
}

