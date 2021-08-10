[app/sources/469337739.Dockerfile]
digraph {
  "sha256:3f9d541bb073664a418208a91c1184ac6a3c87197355867d60edc38c15c5d94c" [label="docker-image://docker.io/cnab/k8sbase:latest" shape="ellipse"];
  "sha256:b05dc249eb156af244e95b48f865663df5e7382f3611d69e1c9ebce5b34e210f" [label="local://context" shape="ellipse"];
  "sha256:f820a2df4970637a0893f303bcb7f4b5df85782fc7f0295fbc1dd43755f3b84a" [label="copy{src=/app/Makefile, dest=/cnab/app/Makefile}" shape="note"];
  "sha256:5b03a67dd68d49f2ee6c1af669118d47219306981aecf2e8d0ef6f6fb2e8133d" [label="copy{src=/app/charts, dest=/cnab/app/charts}" shape="note"];
  "sha256:7c4b49093711a1040f99917194c8ee1d0dfcdd4e105246b323a63c6c7c1a1ba7" [label="sha256:7c4b49093711a1040f99917194c8ee1d0dfcdd4e105246b323a63c6c7c1a1ba7" shape="plaintext"];
  "sha256:3f9d541bb073664a418208a91c1184ac6a3c87197355867d60edc38c15c5d94c" -> "sha256:f820a2df4970637a0893f303bcb7f4b5df85782fc7f0295fbc1dd43755f3b84a" [label=""];
  "sha256:b05dc249eb156af244e95b48f865663df5e7382f3611d69e1c9ebce5b34e210f" -> "sha256:f820a2df4970637a0893f303bcb7f4b5df85782fc7f0295fbc1dd43755f3b84a" [label=""];
  "sha256:f820a2df4970637a0893f303bcb7f4b5df85782fc7f0295fbc1dd43755f3b84a" -> "sha256:5b03a67dd68d49f2ee6c1af669118d47219306981aecf2e8d0ef6f6fb2e8133d" [label=""];
  "sha256:b05dc249eb156af244e95b48f865663df5e7382f3611d69e1c9ebce5b34e210f" -> "sha256:5b03a67dd68d49f2ee6c1af669118d47219306981aecf2e8d0ef6f6fb2e8133d" [label=""];
  "sha256:5b03a67dd68d49f2ee6c1af669118d47219306981aecf2e8d0ef6f6fb2e8133d" -> "sha256:7c4b49093711a1040f99917194c8ee1d0dfcdd4e105246b323a63c6c7c1a1ba7" [label=""];
}

