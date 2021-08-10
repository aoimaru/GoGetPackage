[app/sources/340724005.Dockerfile]
digraph {
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" [label="docker-image://docker.io/library/debian:latest" shape="ellipse"];
  "sha256:8b116b94393d1178cffff251c6731f0ce11998495201418cd55da9f8ed4e6fe2" [label="/bin/sh -c apt-get update && apt-get install -yq openssl" shape="box"];
  "sha256:2ff60745c260b1aaf17c9c9244c9f1a0818fda47281d0c27400c8c3f9d2b7382" [label="local://context" shape="ellipse"];
  "sha256:d8385da5577770989bd5099c3684bd28e87bf5bf5a40f75979f8ccd0a4287a36" [label="copy{src=/make_certs.sh, dest=/}" shape="note"];
  "sha256:1b45d51ab1021612c04cd156aec8f5fddccbac0174f36878a5babebb201fdd48" [label="mkdir{path=/data}" shape="note"];
  "sha256:4a47d4ff9152c49096ed957ec17fa66ca3f41724e04c98e25d44765161a1c922" [label="sha256:4a47d4ff9152c49096ed957ec17fa66ca3f41724e04c98e25d44765161a1c922" shape="plaintext"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" -> "sha256:8b116b94393d1178cffff251c6731f0ce11998495201418cd55da9f8ed4e6fe2" [label=""];
  "sha256:8b116b94393d1178cffff251c6731f0ce11998495201418cd55da9f8ed4e6fe2" -> "sha256:d8385da5577770989bd5099c3684bd28e87bf5bf5a40f75979f8ccd0a4287a36" [label=""];
  "sha256:2ff60745c260b1aaf17c9c9244c9f1a0818fda47281d0c27400c8c3f9d2b7382" -> "sha256:d8385da5577770989bd5099c3684bd28e87bf5bf5a40f75979f8ccd0a4287a36" [label=""];
  "sha256:d8385da5577770989bd5099c3684bd28e87bf5bf5a40f75979f8ccd0a4287a36" -> "sha256:1b45d51ab1021612c04cd156aec8f5fddccbac0174f36878a5babebb201fdd48" [label=""];
  "sha256:1b45d51ab1021612c04cd156aec8f5fddccbac0174f36878a5babebb201fdd48" -> "sha256:4a47d4ff9152c49096ed957ec17fa66ca3f41724e04c98e25d44765161a1c922" [label=""];
}

