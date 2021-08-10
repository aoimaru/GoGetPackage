[app/sources/154546576.Dockerfile]
digraph {
  "sha256:c61fcabb788de08ec3bbbc68656a38b8c1bf2b8b8d793509cda93f8e7c33059d" [label="docker-image://docker.io/library/debian:9.8" shape="ellipse"];
  "sha256:018198a3784ca04e32fe67f91723176fe52dc2104e995d9b2bd8242b43fb2dde" [label="/bin/sh -c apt-get update && apt-get install -y     git     ssh     tar     gzip     ca-certificates     cmake     build-essential" shape="box"];
  "sha256:b3229eed16763359119bf45140e9a94b8196a7436961b77cfa177dc9fbe1fa56" [label="sha256:b3229eed16763359119bf45140e9a94b8196a7436961b77cfa177dc9fbe1fa56" shape="plaintext"];
  "sha256:c61fcabb788de08ec3bbbc68656a38b8c1bf2b8b8d793509cda93f8e7c33059d" -> "sha256:018198a3784ca04e32fe67f91723176fe52dc2104e995d9b2bd8242b43fb2dde" [label=""];
  "sha256:018198a3784ca04e32fe67f91723176fe52dc2104e995d9b2bd8242b43fb2dde" -> "sha256:b3229eed16763359119bf45140e9a94b8196a7436961b77cfa177dc9fbe1fa56" [label=""];
}

