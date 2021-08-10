[app/sources/208304838.Dockerfile]
digraph {
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" [label="docker-image://docker.io/library/debian:latest" shape="ellipse"];
  "sha256:8b116b94393d1178cffff251c6731f0ce11998495201418cd55da9f8ed4e6fe2" [label="/bin/sh -c apt-get update && apt-get install -yq openssl" shape="box"];
  "sha256:642c8b6d1a804a397e4d42ea21ca285c65fef2894909ea45baf5c860b383eb6c" [label="local://context" shape="ellipse"];
  "sha256:966d5da971a10f69670d79a5ced50b6fc1b6f593a459211aea892bac2a260307" [label="copy{src=/make_certs.sh, dest=/}" shape="note"];
  "sha256:cd77a5a149ed6b5ef2bcc988d2fbfc2dc365850aa6ae79442a77ddf09ed31965" [label="mkdir{path=/data}" shape="note"];
  "sha256:5bc9fcfcfbc0851565225633503e02829114ab50c872c1c01ef23cf80e245d43" [label="sha256:5bc9fcfcfbc0851565225633503e02829114ab50c872c1c01ef23cf80e245d43" shape="plaintext"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" -> "sha256:8b116b94393d1178cffff251c6731f0ce11998495201418cd55da9f8ed4e6fe2" [label=""];
  "sha256:8b116b94393d1178cffff251c6731f0ce11998495201418cd55da9f8ed4e6fe2" -> "sha256:966d5da971a10f69670d79a5ced50b6fc1b6f593a459211aea892bac2a260307" [label=""];
  "sha256:642c8b6d1a804a397e4d42ea21ca285c65fef2894909ea45baf5c860b383eb6c" -> "sha256:966d5da971a10f69670d79a5ced50b6fc1b6f593a459211aea892bac2a260307" [label=""];
  "sha256:966d5da971a10f69670d79a5ced50b6fc1b6f593a459211aea892bac2a260307" -> "sha256:cd77a5a149ed6b5ef2bcc988d2fbfc2dc365850aa6ae79442a77ddf09ed31965" [label=""];
  "sha256:cd77a5a149ed6b5ef2bcc988d2fbfc2dc365850aa6ae79442a77ddf09ed31965" -> "sha256:5bc9fcfcfbc0851565225633503e02829114ab50c872c1c01ef23cf80e245d43" [label=""];
}

