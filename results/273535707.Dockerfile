[app/sources/273535707.Dockerfile]
digraph {
  "sha256:73079b2eb57010ad8f653e512710f56fbcef68c723ed1a98218de392a8b40b38" [label="docker-image://docker.io/library/python:2.7-slim" shape="ellipse"];
  "sha256:5ee327100a345250b4d2ddaaf2ab7dec245a0617fd3b9c607c3d5d1f4a6f6d3e" [label="/bin/sh -c pip install pyyaml" shape="box"];
  "sha256:d5e88969f8d6ff6b28094faeab5be209c2c05e199b65d5363667f8a5e4b3161f" [label="sha256:d5e88969f8d6ff6b28094faeab5be209c2c05e199b65d5363667f8a5e4b3161f" shape="plaintext"];
  "sha256:73079b2eb57010ad8f653e512710f56fbcef68c723ed1a98218de392a8b40b38" -> "sha256:5ee327100a345250b4d2ddaaf2ab7dec245a0617fd3b9c607c3d5d1f4a6f6d3e" [label=""];
  "sha256:5ee327100a345250b4d2ddaaf2ab7dec245a0617fd3b9c607c3d5d1f4a6f6d3e" -> "sha256:d5e88969f8d6ff6b28094faeab5be209c2c05e199b65d5363667f8a5e4b3161f" [label=""];
}

