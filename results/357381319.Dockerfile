[app/sources/357381319.Dockerfile]
digraph {
  "sha256:d302ec6909971eb9d7d6572f7e5594b139f6c24f7570602c9a0c0c5218faa2a4" [label="docker-image://docker.io/fedora/tools:latest" shape="ellipse"];
  "sha256:443a47c6e1517b563f975100c55d87c57614b4ac6ae653f6a456330a62a99d70" [label="/bin/sh -c dnf install 9pfs -y && dnf clean all" shape="box"];
  "sha256:72a7e9279aba9a86de4be68b421b6639089f3a0042d36a4c2f69b71e0ad91caf" [label="sha256:72a7e9279aba9a86de4be68b421b6639089f3a0042d36a4c2f69b71e0ad91caf" shape="plaintext"];
  "sha256:d302ec6909971eb9d7d6572f7e5594b139f6c24f7570602c9a0c0c5218faa2a4" -> "sha256:443a47c6e1517b563f975100c55d87c57614b4ac6ae653f6a456330a62a99d70" [label=""];
  "sha256:443a47c6e1517b563f975100c55d87c57614b4ac6ae653f6a456330a62a99d70" -> "sha256:72a7e9279aba9a86de4be68b421b6639089f3a0042d36a4c2f69b71e0ad91caf" [label=""];
}

