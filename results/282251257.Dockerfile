[app/sources/282251257.Dockerfile]
digraph {
  "sha256:b32a9ea301f84b4978ba2bfaa9f09dcb887232bda77a1059c63b359df0102708" [label="docker-image://docker.io/webdevops/php:5.6@sha256:9d674e51924e80af2060bc49eb79b1e55ab26d6aacc5e6c0371a1f5552dcc841" shape="ellipse"];
  "sha256:95a0a2411b4c040cdd3c3e8ff7a0936ab31b0f1aec1ea8b95d9467527127f587" [label="local://context" shape="ellipse"];
  "sha256:784b087b3748f606703c3ce8dbd01bcfe061e662e2522e629b8d747b08d77b86" [label="copy{src=/conf, dest=/opt/docker/}" shape="note"];
  "sha256:32974a1964c36f33737404fcca611712c2e6b37bf87f076d49bf6db187a0ba99" [label="/bin/sh -c set -x     && apt-install         nginx     && docker-run-bootstrap     && docker-image-cleanup" shape="box"];
  "sha256:6a4ed1cacf53bb08e504e02550fede7735da05b15be061e026ac27a935524a57" [label="sha256:6a4ed1cacf53bb08e504e02550fede7735da05b15be061e026ac27a935524a57" shape="plaintext"];
  "sha256:b32a9ea301f84b4978ba2bfaa9f09dcb887232bda77a1059c63b359df0102708" -> "sha256:784b087b3748f606703c3ce8dbd01bcfe061e662e2522e629b8d747b08d77b86" [label=""];
  "sha256:95a0a2411b4c040cdd3c3e8ff7a0936ab31b0f1aec1ea8b95d9467527127f587" -> "sha256:784b087b3748f606703c3ce8dbd01bcfe061e662e2522e629b8d747b08d77b86" [label=""];
  "sha256:784b087b3748f606703c3ce8dbd01bcfe061e662e2522e629b8d747b08d77b86" -> "sha256:32974a1964c36f33737404fcca611712c2e6b37bf87f076d49bf6db187a0ba99" [label=""];
  "sha256:32974a1964c36f33737404fcca611712c2e6b37bf87f076d49bf6db187a0ba99" -> "sha256:6a4ed1cacf53bb08e504e02550fede7735da05b15be061e026ac27a935524a57" [label=""];
}

