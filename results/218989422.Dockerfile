[app/sources/218989422.Dockerfile]
digraph {
  "sha256:39e7d044874c119fb4e271a8d431abc9cfac4cec8480cfc25ca04d4da11fa4d6" [label="docker-image://docker.io/hypriot/rpi-node:8.1.3" shape="ellipse"];
  "sha256:c7c87e19ad831a54366f58919f3af2e3eeb6908c4fcc3dccfe8660ced3ea3306" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:b3bb2456229fe957291c667414bee7a7de4eb1224020639a2b277b7d597ce08a" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:756323ced67dc20ec191e75919439ddacf11f9e42b0e0e13d573810e59f30c9c" [label="sha256:756323ced67dc20ec191e75919439ddacf11f9e42b0e0e13d573810e59f30c9c" shape="plaintext"];
  "sha256:39e7d044874c119fb4e271a8d431abc9cfac4cec8480cfc25ca04d4da11fa4d6" -> "sha256:c7c87e19ad831a54366f58919f3af2e3eeb6908c4fcc3dccfe8660ced3ea3306" [label=""];
  "sha256:c7c87e19ad831a54366f58919f3af2e3eeb6908c4fcc3dccfe8660ced3ea3306" -> "sha256:b3bb2456229fe957291c667414bee7a7de4eb1224020639a2b277b7d597ce08a" [label=""];
  "sha256:b3bb2456229fe957291c667414bee7a7de4eb1224020639a2b277b7d597ce08a" -> "sha256:756323ced67dc20ec191e75919439ddacf11f9e42b0e0e13d573810e59f30c9c" [label=""];
}

