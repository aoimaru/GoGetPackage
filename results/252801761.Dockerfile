[app/sources/252801761.Dockerfile]
digraph {
  "sha256:be8baa64a232f6f71b9cb602ecadfd99eda591ac0e9304c7d2efbb9834d78750" [label="docker-image://docker.io/library/node:9.3.0-alpine" shape="ellipse"];
  "sha256:c3a4cdd129837d5d0ef0dec3c4ab3f81614849a8b1157fd1bdfc3f25d553db43" [label="local://context" shape="ellipse"];
  "sha256:1059cc20c5729d057ce33be00c64edcee59f5eb05b58cc1d091317cc5e3da264" [label="copy{src=/app, dest=/app}" shape="note"];
  "sha256:50bb704a83bf42eb5df87cd011e2e54de00d1e338e7c16c69f4afe68cd97952b" [label="/bin/sh -c cd /app && npm i" shape="box"];
  "sha256:05f0f593514c67a8c2ebc1bb3abc2751f09e6007d9299ba0700fc7e81309278f" [label="mkdir{path=/app}" shape="note"];
  "sha256:a609c2bfa360bfe010f9b0e18f66295cdcc65560ffb2b6e47a4db08261feb77b" [label="sha256:a609c2bfa360bfe010f9b0e18f66295cdcc65560ffb2b6e47a4db08261feb77b" shape="plaintext"];
  "sha256:be8baa64a232f6f71b9cb602ecadfd99eda591ac0e9304c7d2efbb9834d78750" -> "sha256:1059cc20c5729d057ce33be00c64edcee59f5eb05b58cc1d091317cc5e3da264" [label=""];
  "sha256:c3a4cdd129837d5d0ef0dec3c4ab3f81614849a8b1157fd1bdfc3f25d553db43" -> "sha256:1059cc20c5729d057ce33be00c64edcee59f5eb05b58cc1d091317cc5e3da264" [label=""];
  "sha256:1059cc20c5729d057ce33be00c64edcee59f5eb05b58cc1d091317cc5e3da264" -> "sha256:50bb704a83bf42eb5df87cd011e2e54de00d1e338e7c16c69f4afe68cd97952b" [label=""];
  "sha256:50bb704a83bf42eb5df87cd011e2e54de00d1e338e7c16c69f4afe68cd97952b" -> "sha256:05f0f593514c67a8c2ebc1bb3abc2751f09e6007d9299ba0700fc7e81309278f" [label=""];
  "sha256:05f0f593514c67a8c2ebc1bb3abc2751f09e6007d9299ba0700fc7e81309278f" -> "sha256:a609c2bfa360bfe010f9b0e18f66295cdcc65560ffb2b6e47a4db08261feb77b" [label=""];
}

