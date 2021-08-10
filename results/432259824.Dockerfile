[app/sources/432259824.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:8e494bc665f394ac48a636ff9032c053783effa685da1973bad09af910d32917" [label="/bin/sh -c apt-get update && apt-get install -y g++ cmake doxygen valgrind" shape="box"];
  "sha256:704c7c8b6d54a436567925439b7036f26695aea9507b1c9c0165aeb59b3f56ee" [label="sha256:704c7c8b6d54a436567925439b7036f26695aea9507b1c9c0165aeb59b3f56ee" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:8e494bc665f394ac48a636ff9032c053783effa685da1973bad09af910d32917" [label=""];
  "sha256:8e494bc665f394ac48a636ff9032c053783effa685da1973bad09af910d32917" -> "sha256:704c7c8b6d54a436567925439b7036f26695aea9507b1c9c0165aeb59b3f56ee" [label=""];
}

