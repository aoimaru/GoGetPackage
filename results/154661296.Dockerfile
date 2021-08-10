[app/sources/154661296.Dockerfile]
digraph {
  "sha256:659d93c9fc2808a8ab0301dc2707799671a07ca4ba550e06a900d91fed74add1" [label="docker-image://docker.io/dockerhubtrial/base:latest" shape="ellipse"];
  "sha256:051f73cf22cfd43e6d5586a4cc2d7f269833ee5bcba7062d946af8f53aada2dd" [label="/bin/sh -c mkdir -p /opt/app && cd /opt/app && git init && git pull https://github.com/arun-sfdc/Analytics-API.git" shape="box"];
  "sha256:7eeca3d50f42811cbc5bc7ae038b3edc9d558c0dc300a39fb07182c017820a7d" [label="mkdir{path=/opt/app/PublicDashboard}" shape="note"];
  "sha256:a84f51f8ca003558e74e9dca6e66fd64113b50d6c50366b039f8d72452681b7f" [label="/bin/sh -c cd src/ && npm install" shape="box"];
  "sha256:e838a1a369e5adcead2107adf221c9ab7771deacf80701401c13801694478e4d" [label="sha256:e838a1a369e5adcead2107adf221c9ab7771deacf80701401c13801694478e4d" shape="plaintext"];
  "sha256:659d93c9fc2808a8ab0301dc2707799671a07ca4ba550e06a900d91fed74add1" -> "sha256:051f73cf22cfd43e6d5586a4cc2d7f269833ee5bcba7062d946af8f53aada2dd" [label=""];
  "sha256:051f73cf22cfd43e6d5586a4cc2d7f269833ee5bcba7062d946af8f53aada2dd" -> "sha256:7eeca3d50f42811cbc5bc7ae038b3edc9d558c0dc300a39fb07182c017820a7d" [label=""];
  "sha256:7eeca3d50f42811cbc5bc7ae038b3edc9d558c0dc300a39fb07182c017820a7d" -> "sha256:a84f51f8ca003558e74e9dca6e66fd64113b50d6c50366b039f8d72452681b7f" [label=""];
  "sha256:a84f51f8ca003558e74e9dca6e66fd64113b50d6c50366b039f8d72452681b7f" -> "sha256:e838a1a369e5adcead2107adf221c9ab7771deacf80701401c13801694478e4d" [label=""];
}

