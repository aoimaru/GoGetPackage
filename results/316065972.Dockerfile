[app/sources/316065972.Dockerfile]
digraph {
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" [label="docker-image://docker.io/library/busybox:latest" shape="ellipse"];
  "sha256:10c5416742311734deb9f724e2aaef67c1132fa9a803df24435718c9ef4fd02a" [label="local://context" shape="ellipse"];
  "sha256:6fd8ef23991cf9d9e4fcab101724281c557f4becc9f533365ddae2a9dc416fb1" [label="copy{src=/cauldron, dest=/cauldron}" shape="note"];
  "sha256:55070dc5c92eac86d8886f7e6d935b03ae8654a81b0d2eed468fc3e32f4812ba" [label="copy{src=/cauldron.go, dest=/cauldron.go}" shape="note"];
  "sha256:7edbb10d4c31ba512e1c1fb8338a31822d54cd19a9741e0973c95742e6802333" [label="sha256:7edbb10d4c31ba512e1c1fb8338a31822d54cd19a9741e0973c95742e6802333" shape="plaintext"];
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" -> "sha256:6fd8ef23991cf9d9e4fcab101724281c557f4becc9f533365ddae2a9dc416fb1" [label=""];
  "sha256:10c5416742311734deb9f724e2aaef67c1132fa9a803df24435718c9ef4fd02a" -> "sha256:6fd8ef23991cf9d9e4fcab101724281c557f4becc9f533365ddae2a9dc416fb1" [label=""];
  "sha256:6fd8ef23991cf9d9e4fcab101724281c557f4becc9f533365ddae2a9dc416fb1" -> "sha256:55070dc5c92eac86d8886f7e6d935b03ae8654a81b0d2eed468fc3e32f4812ba" [label=""];
  "sha256:10c5416742311734deb9f724e2aaef67c1132fa9a803df24435718c9ef4fd02a" -> "sha256:55070dc5c92eac86d8886f7e6d935b03ae8654a81b0d2eed468fc3e32f4812ba" [label=""];
  "sha256:55070dc5c92eac86d8886f7e6d935b03ae8654a81b0d2eed468fc3e32f4812ba" -> "sha256:7edbb10d4c31ba512e1c1fb8338a31822d54cd19a9741e0973c95742e6802333" [label=""];
}

