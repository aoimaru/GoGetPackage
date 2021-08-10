[app/sources/196357880.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:04bfdfb33e7e2a9e8947664c325ac9af23283ef091147e8d22821531a8e9a08b" [label="/bin/sh -c apt-get update && apt-get install -y     chromium     chromium-l10n     libcanberra-gtk-module     libexif-dev     --no-install-recommends" shape="box"];
  "sha256:5490b3eb3c70461be4522932fe3bf1af71be5b7aac68ce12140a72f21b4d3fac" [label="sha256:5490b3eb3c70461be4522932fe3bf1af71be5b7aac68ce12140a72f21b4d3fac" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:04bfdfb33e7e2a9e8947664c325ac9af23283ef091147e8d22821531a8e9a08b" [label=""];
  "sha256:04bfdfb33e7e2a9e8947664c325ac9af23283ef091147e8d22821531a8e9a08b" -> "sha256:5490b3eb3c70461be4522932fe3bf1af71be5b7aac68ce12140a72f21b4d3fac" [label=""];
}

