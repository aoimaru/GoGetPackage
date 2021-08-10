[app/sources/252776532.Dockerfile]
digraph {
  "sha256:be7f72d58225eb22e4de98811a40f2894475aa1a36444806f38addb93cf47938" [label="docker-image://docker.io/library/node:8-slim" shape="ellipse"];
  "sha256:cf7872e5cabec057b1a8f1d37559747f69775b6524d294a045803f659023483c" [label="/bin/sh -c npm i -g coin-hive-stratum --unsafe-perm=true \\--allow-root" shape="box"];
  "sha256:bbba268b125f5433bd4e13e5deaeef65260b7159db0ae8b26c3b91c87f375a8a" [label="sha256:bbba268b125f5433bd4e13e5deaeef65260b7159db0ae8b26c3b91c87f375a8a" shape="plaintext"];
  "sha256:be7f72d58225eb22e4de98811a40f2894475aa1a36444806f38addb93cf47938" -> "sha256:cf7872e5cabec057b1a8f1d37559747f69775b6524d294a045803f659023483c" [label=""];
  "sha256:cf7872e5cabec057b1a8f1d37559747f69775b6524d294a045803f659023483c" -> "sha256:bbba268b125f5433bd4e13e5deaeef65260b7159db0ae8b26c3b91c87f375a8a" [label=""];
}

