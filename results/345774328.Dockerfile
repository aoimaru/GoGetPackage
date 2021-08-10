[app/sources/345774328.Dockerfile]
digraph {
  "sha256:84e0d76a916a2a3cdcd616c815ba83581e08f4f5ed6068d3816af23f45c008d8" [label="docker-image://docker.io/library/golang:1.12" shape="ellipse"];
  "sha256:54ebb06cc13241182d615306265890a67235276e8440d85103bbdadaf6d8b871" [label="/bin/sh -c apt-get update && apt-get install -y make git apt-transport-https ca-certificates curl software-properties-common build-essential zip xmlsec1" shape="box"];
  "sha256:83752ff996a5d935886d402a92b6cd67e4c8ba031ef893d471b0bf2584b8df39" [label="sha256:83752ff996a5d935886d402a92b6cd67e4c8ba031ef893d471b0bf2584b8df39" shape="plaintext"];
  "sha256:84e0d76a916a2a3cdcd616c815ba83581e08f4f5ed6068d3816af23f45c008d8" -> "sha256:54ebb06cc13241182d615306265890a67235276e8440d85103bbdadaf6d8b871" [label=""];
  "sha256:54ebb06cc13241182d615306265890a67235276e8440d85103bbdadaf6d8b871" -> "sha256:83752ff996a5d935886d402a92b6cd67e4c8ba031ef893d471b0bf2584b8df39" [label=""];
}

