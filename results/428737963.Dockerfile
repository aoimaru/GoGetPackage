[app/sources/428737963.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:d8a5a79b379d214a3613f1ea4cb15f83c6cab8aa2e1fca328d78b8be2d1d44f5" [label="local://context" shape="ellipse"];
  "sha256:9a9c90b73df075eb9883e0e85860db5bff1bc49a84a847d322f315d217759db4" [label="copy{src=/kubemark, dest=/kubemark}" shape="note"];
  "sha256:bb1ca061ce5cb54487d8f2c2041ff504119b942c9b25b22f39bdbdd56ad027a8" [label="sha256:bb1ca061ce5cb54487d8f2c2041ff504119b942c9b25b22f39bdbdd56ad027a8" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:9a9c90b73df075eb9883e0e85860db5bff1bc49a84a847d322f315d217759db4" [label=""];
  "sha256:d8a5a79b379d214a3613f1ea4cb15f83c6cab8aa2e1fca328d78b8be2d1d44f5" -> "sha256:9a9c90b73df075eb9883e0e85860db5bff1bc49a84a847d322f315d217759db4" [label=""];
  "sha256:9a9c90b73df075eb9883e0e85860db5bff1bc49a84a847d322f315d217759db4" -> "sha256:bb1ca061ce5cb54487d8f2c2041ff504119b942c9b25b22f39bdbdd56ad027a8" [label=""];
}

