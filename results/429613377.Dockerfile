[app/sources/429613377.Dockerfile]
digraph {
  "sha256:69a71ae2b9169e98caae67a1a2b50ac8f6a37f8b7dd432734def6dd5e56b30f0" [label="docker-image://docker.io/phusion/baseimage:0.10.1" shape="ellipse"];
  "sha256:fbdbfe2fe189b093a337cd2d5e994a03dbf53aa5a81956421d6248ef53927403" [label="local://context" shape="ellipse"];
  "sha256:9292ad36165e496c563d7d5c6dbb52ed95ae31a814abe9df69685e27cb9d6e07" [label="copy{src=/, dest=/paa_build}" shape="note"];
  "sha256:5a25d8ea1234c5bff3d2e2ca530c8ae98b95a31d57adde5008009ea8d81efca9" [label="/bin/sh -c bash /paa_build/install.sh" shape="box"];
  "sha256:217d35cc1216704e98b6302bc7a7b3449f7bb5914d9c129317d3e3fb5c9d5da6" [label="sha256:217d35cc1216704e98b6302bc7a7b3449f7bb5914d9c129317d3e3fb5c9d5da6" shape="plaintext"];
  "sha256:69a71ae2b9169e98caae67a1a2b50ac8f6a37f8b7dd432734def6dd5e56b30f0" -> "sha256:9292ad36165e496c563d7d5c6dbb52ed95ae31a814abe9df69685e27cb9d6e07" [label=""];
  "sha256:fbdbfe2fe189b093a337cd2d5e994a03dbf53aa5a81956421d6248ef53927403" -> "sha256:9292ad36165e496c563d7d5c6dbb52ed95ae31a814abe9df69685e27cb9d6e07" [label=""];
  "sha256:9292ad36165e496c563d7d5c6dbb52ed95ae31a814abe9df69685e27cb9d6e07" -> "sha256:5a25d8ea1234c5bff3d2e2ca530c8ae98b95a31d57adde5008009ea8d81efca9" [label=""];
  "sha256:5a25d8ea1234c5bff3d2e2ca530c8ae98b95a31d57adde5008009ea8d81efca9" -> "sha256:217d35cc1216704e98b6302bc7a7b3449f7bb5914d9c129317d3e3fb5c9d5da6" [label=""];
}

