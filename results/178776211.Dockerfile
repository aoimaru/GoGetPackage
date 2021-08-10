[app/sources/178776211.Dockerfile]
digraph {
  "sha256:c87ec59635d50ef7064397225acdda392bdfa01234887506ccd126548dabde0f" [label="docker-image://docker.io/imiell/sd_shutit:latest" shape="ellipse"];
  "sha256:34b308f3c3057fd167507520454c0cb7edc863ea44b92f762c1b6b2504944310" [label="mkdir{path=/opt}" shape="note"];
  "sha256:f724b366ed0461ce63c07adda6ae5741526beb76d4617f61e3df2e77630b27dd" [label="/bin/sh -c git clone https://github.com/ianmiell/shutit-distro.git" shape="box"];
  "sha256:cff93f3d4ec3abf6c592eaac441dd8d14b646852539f41d39261e9206af5b6ee" [label="mkdir{path=/opt/shutit-distro/libdbus}" shape="note"];
  "sha256:aedba4e55b90316ddaa7669b193a6f073a8bc0c8a5aea9768dcf3b77c57be5df" [label="/bin/sh -c /opt/shutit/shutit build --shutit_module_path .. --delivery bash" shape="box"];
  "sha256:e6864bc12dd972d3a7ade5d15869060b75cb01b7645ee97ee484207c5c375a06" [label="sha256:e6864bc12dd972d3a7ade5d15869060b75cb01b7645ee97ee484207c5c375a06" shape="plaintext"];
  "sha256:c87ec59635d50ef7064397225acdda392bdfa01234887506ccd126548dabde0f" -> "sha256:34b308f3c3057fd167507520454c0cb7edc863ea44b92f762c1b6b2504944310" [label=""];
  "sha256:34b308f3c3057fd167507520454c0cb7edc863ea44b92f762c1b6b2504944310" -> "sha256:f724b366ed0461ce63c07adda6ae5741526beb76d4617f61e3df2e77630b27dd" [label=""];
  "sha256:f724b366ed0461ce63c07adda6ae5741526beb76d4617f61e3df2e77630b27dd" -> "sha256:cff93f3d4ec3abf6c592eaac441dd8d14b646852539f41d39261e9206af5b6ee" [label=""];
  "sha256:cff93f3d4ec3abf6c592eaac441dd8d14b646852539f41d39261e9206af5b6ee" -> "sha256:aedba4e55b90316ddaa7669b193a6f073a8bc0c8a5aea9768dcf3b77c57be5df" [label=""];
  "sha256:aedba4e55b90316ddaa7669b193a6f073a8bc0c8a5aea9768dcf3b77c57be5df" -> "sha256:e6864bc12dd972d3a7ade5d15869060b75cb01b7645ee97ee484207c5c375a06" [label=""];
}

