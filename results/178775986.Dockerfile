[app/sources/178775986.Dockerfile]
digraph {
  "sha256:c87ec59635d50ef7064397225acdda392bdfa01234887506ccd126548dabde0f" [label="docker-image://docker.io/imiell/sd_shutit:latest" shape="ellipse"];
  "sha256:34b308f3c3057fd167507520454c0cb7edc863ea44b92f762c1b6b2504944310" [label="mkdir{path=/opt}" shape="note"];
  "sha256:f724b366ed0461ce63c07adda6ae5741526beb76d4617f61e3df2e77630b27dd" [label="/bin/sh -c git clone https://github.com/ianmiell/shutit-distro.git" shape="box"];
  "sha256:4d22e51d4cac0eecefeb0e2708342905fbb709a809a891462bf93f715209794c" [label="mkdir{path=/opt/shutit-distro/freetype2}" shape="note"];
  "sha256:d8723bfe1a483c8302d2bc6bf43aed46a4342d5ace7d8ac2f878ec86356de770" [label="/bin/sh -c /opt/shutit/shutit build --shutit_module_path .. --delivery bash" shape="box"];
  "sha256:1ca3a6e1f324f319b8cd18e7a7c0f830e877cbbb485982d90a13cf13e2695d41" [label="sha256:1ca3a6e1f324f319b8cd18e7a7c0f830e877cbbb485982d90a13cf13e2695d41" shape="plaintext"];
  "sha256:c87ec59635d50ef7064397225acdda392bdfa01234887506ccd126548dabde0f" -> "sha256:34b308f3c3057fd167507520454c0cb7edc863ea44b92f762c1b6b2504944310" [label=""];
  "sha256:34b308f3c3057fd167507520454c0cb7edc863ea44b92f762c1b6b2504944310" -> "sha256:f724b366ed0461ce63c07adda6ae5741526beb76d4617f61e3df2e77630b27dd" [label=""];
  "sha256:f724b366ed0461ce63c07adda6ae5741526beb76d4617f61e3df2e77630b27dd" -> "sha256:4d22e51d4cac0eecefeb0e2708342905fbb709a809a891462bf93f715209794c" [label=""];
  "sha256:4d22e51d4cac0eecefeb0e2708342905fbb709a809a891462bf93f715209794c" -> "sha256:d8723bfe1a483c8302d2bc6bf43aed46a4342d5ace7d8ac2f878ec86356de770" [label=""];
  "sha256:d8723bfe1a483c8302d2bc6bf43aed46a4342d5ace7d8ac2f878ec86356de770" -> "sha256:1ca3a6e1f324f319b8cd18e7a7c0f830e877cbbb485982d90a13cf13e2695d41" [label=""];
}

