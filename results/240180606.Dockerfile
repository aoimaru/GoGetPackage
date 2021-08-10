[app/sources/240180606.Dockerfile]
digraph {
  "sha256:a838c769861ff445dd9ee727190897a8592ead9e44ece8fde189ceb471380649" [label="local://context" shape="ellipse"];
  "sha256:414cd28b99837ee127173add3b2718a4d83d6ecc4b5f169a17d3c6bbd22a83a0" [label="docker-image://docker.io/egovio/apline-jre:8u121" shape="ellipse"];
  "sha256:a8c42aaa0854c9beed5066c9a1a20fa8b7df88c280ba8574064b65380d773321" [label="copy{src=/target/wcms-connection-0.0.1-SNAPSHOT.jar, dest=/opt/egov/wcms-connection.jar}" shape="note"];
  "sha256:2403ccb47b45320784fd9ba1477555c8d3f3ad2d50bf98c5dae90336036b3475" [label="copy{src=/start.sh, dest=/usr/bin/start.sh}" shape="note"];
  "sha256:6c4651c678faf24b924cb9e471d4aa370a9abbb3a5a2c5cb5e74750c83f357eb" [label="/bin/sh -c chmod +x /usr/bin/start.sh" shape="box"];
  "sha256:3a92fd8655e0b07034529eecd920edcd9b3a967c54026e0bc3a2acb3bcbb8f94" [label="sha256:3a92fd8655e0b07034529eecd920edcd9b3a967c54026e0bc3a2acb3bcbb8f94" shape="plaintext"];
  "sha256:414cd28b99837ee127173add3b2718a4d83d6ecc4b5f169a17d3c6bbd22a83a0" -> "sha256:a8c42aaa0854c9beed5066c9a1a20fa8b7df88c280ba8574064b65380d773321" [label=""];
  "sha256:a838c769861ff445dd9ee727190897a8592ead9e44ece8fde189ceb471380649" -> "sha256:a8c42aaa0854c9beed5066c9a1a20fa8b7df88c280ba8574064b65380d773321" [label=""];
  "sha256:a8c42aaa0854c9beed5066c9a1a20fa8b7df88c280ba8574064b65380d773321" -> "sha256:2403ccb47b45320784fd9ba1477555c8d3f3ad2d50bf98c5dae90336036b3475" [label=""];
  "sha256:a838c769861ff445dd9ee727190897a8592ead9e44ece8fde189ceb471380649" -> "sha256:2403ccb47b45320784fd9ba1477555c8d3f3ad2d50bf98c5dae90336036b3475" [label=""];
  "sha256:2403ccb47b45320784fd9ba1477555c8d3f3ad2d50bf98c5dae90336036b3475" -> "sha256:6c4651c678faf24b924cb9e471d4aa370a9abbb3a5a2c5cb5e74750c83f357eb" [label=""];
  "sha256:6c4651c678faf24b924cb9e471d4aa370a9abbb3a5a2c5cb5e74750c83f357eb" -> "sha256:3a92fd8655e0b07034529eecd920edcd9b3a967c54026e0bc3a2acb3bcbb8f94" [label=""];
}

