[app/sources/252781843.Dockerfile]
digraph {
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" [label="docker-image://docker.io/library/node:latest" shape="ellipse"];
  "sha256:6f110fabb0e1933904cd86912a9e6a70d27d67b99d09d19b77954e1a58136aa2" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:e199d4a15bc860a3a12a96d5e1408d9aabe489c229aa02806b02fa0add755034" [label="/bin/sh -c apt-get install libgnome-keyring-dev -y" shape="box"];
  "sha256:dee9314ab18d06a691661fd6fa4418598c1105f5c9dca0a8244fba85282bf4f8" [label="/bin/sh -c npm install -g semantic-release-cli" shape="box"];
  "sha256:267406a6484ecf115f309974be518b495180ebe8805e529fd2a41c46fc66d135" [label="sha256:267406a6484ecf115f309974be518b495180ebe8805e529fd2a41c46fc66d135" shape="plaintext"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" -> "sha256:6f110fabb0e1933904cd86912a9e6a70d27d67b99d09d19b77954e1a58136aa2" [label=""];
  "sha256:6f110fabb0e1933904cd86912a9e6a70d27d67b99d09d19b77954e1a58136aa2" -> "sha256:e199d4a15bc860a3a12a96d5e1408d9aabe489c229aa02806b02fa0add755034" [label=""];
  "sha256:e199d4a15bc860a3a12a96d5e1408d9aabe489c229aa02806b02fa0add755034" -> "sha256:dee9314ab18d06a691661fd6fa4418598c1105f5c9dca0a8244fba85282bf4f8" [label=""];
  "sha256:dee9314ab18d06a691661fd6fa4418598c1105f5c9dca0a8244fba85282bf4f8" -> "sha256:267406a6484ecf115f309974be518b495180ebe8805e529fd2a41c46fc66d135" [label=""];
}

