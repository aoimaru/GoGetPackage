[app/sources/292514737.Dockerfile]
digraph {
  "sha256:d3dab3a69083ca9303ba7d184785be8a7d780040297f3a2a0483aa8fec6eabfd" [label="docker-image://docker.io/library/golang:1.12.6-alpine" shape="ellipse"];
  "sha256:b7a172ba812a6f049d4a6120ad42dd7b892fba7952f40ebc1ddf56b622d1d7d8" [label="/bin/sh -c apk add -U git bash coreutils gcc musl-dev" shape="box"];
  "sha256:bc25751e28c2c38225641a004c9ddaa6d3f6608976ef1a22c78d7c57f55796a1" [label="mkdir{path=/go/src/github.com/docker/cli}" shape="note"];
  "sha256:bff13f2f74bb01c00057f90bd8a2abc49c7dd1c04855f8b979921d763f960822" [label="sha256:bff13f2f74bb01c00057f90bd8a2abc49c7dd1c04855f8b979921d763f960822" shape="plaintext"];
  "sha256:d3dab3a69083ca9303ba7d184785be8a7d780040297f3a2a0483aa8fec6eabfd" -> "sha256:b7a172ba812a6f049d4a6120ad42dd7b892fba7952f40ebc1ddf56b622d1d7d8" [label=""];
  "sha256:b7a172ba812a6f049d4a6120ad42dd7b892fba7952f40ebc1ddf56b622d1d7d8" -> "sha256:bc25751e28c2c38225641a004c9ddaa6d3f6608976ef1a22c78d7c57f55796a1" [label=""];
  "sha256:bc25751e28c2c38225641a004c9ddaa6d3f6608976ef1a22c78d7c57f55796a1" -> "sha256:bff13f2f74bb01c00057f90bd8a2abc49c7dd1c04855f8b979921d763f960822" [label=""];
}

