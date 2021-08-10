[app/sources/252768565.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:d784416d9c0a8e37c0dd9be1dd2cd82fcdf961b512b6be7320eeb99dddc555c6" [label="/bin/sh -c apk upgrade --update && apk add php-cli" shape="box"];
  "sha256:c22d981afc65a5bf6185c7588e3e846c028d9984a48bb1ffea4a8a32dbce275b" [label="local://context" shape="ellipse"];
  "sha256:d9bae1d3aa328a1b4f2b779fe3da4ce9a659f9e64b7ae292d1cc8f396d550b57" [label="copy{src=/www/*, dest=/app/}" shape="note"];
  "sha256:67217ead9a6390a09f637591dd7ebe048a7e8acc5be1832dde07abe1d7b4ad4a" [label="mkdir{path=/app}" shape="note"];
  "sha256:bfa6fb3e9ead7d6e6bab87aee8ba780f7ca74d1109fdb1c1b085e09f69171945" [label="sha256:bfa6fb3e9ead7d6e6bab87aee8ba780f7ca74d1109fdb1c1b085e09f69171945" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:d784416d9c0a8e37c0dd9be1dd2cd82fcdf961b512b6be7320eeb99dddc555c6" [label=""];
  "sha256:d784416d9c0a8e37c0dd9be1dd2cd82fcdf961b512b6be7320eeb99dddc555c6" -> "sha256:d9bae1d3aa328a1b4f2b779fe3da4ce9a659f9e64b7ae292d1cc8f396d550b57" [label=""];
  "sha256:c22d981afc65a5bf6185c7588e3e846c028d9984a48bb1ffea4a8a32dbce275b" -> "sha256:d9bae1d3aa328a1b4f2b779fe3da4ce9a659f9e64b7ae292d1cc8f396d550b57" [label=""];
  "sha256:d9bae1d3aa328a1b4f2b779fe3da4ce9a659f9e64b7ae292d1cc8f396d550b57" -> "sha256:67217ead9a6390a09f637591dd7ebe048a7e8acc5be1832dde07abe1d7b4ad4a" [label=""];
  "sha256:67217ead9a6390a09f637591dd7ebe048a7e8acc5be1832dde07abe1d7b4ad4a" -> "sha256:bfa6fb3e9ead7d6e6bab87aee8ba780f7ca74d1109fdb1c1b085e09f69171945" [label=""];
}

