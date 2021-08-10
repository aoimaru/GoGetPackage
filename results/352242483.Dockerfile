[app/sources/352242483.Dockerfile]
digraph {
  "sha256:85b709cdfaadecd4e22a195cfe08257ae541788a78e98a6ac636abc22b42eedc" [label="docker-image://docker.io/library/node:9" shape="ellipse"];
  "sha256:d11896cfb5c253d797bf470cdb03fdc805785c6dc1b492fcf98225faf9552c44" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:16240b6f16819d9bc74b83b34ff07f07a23b4ae92f81c45352dad0f087da2455" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:473f9d3b3372c4b3a45cb5dfba8b10597ea4a483a639d9cad2c1eb0cc4f0b72a" [label="local://context" shape="ellipse"];
  "sha256:bbd769e00ff7beca722be69fead43f56f76acbe10eba109f43a93a53cf8bfe1f" [label="copy{src=/package.json, dest=/usr/src/app/}" shape="note"];
  "sha256:df42b2d4c395ceb3bd93b231dea8768e43ac6e652069977356954ee75f57f4ce" [label="/bin/sh -c npm install" shape="box"];
  "sha256:a4ca0fb8c6fc62a41ed9b07af4891634657f3cd5d1d10a89f6c553a37e416e6d" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:14e05a48664f6510dbc75d976f28904c3b566799f863380af5a9aad688f5dd89" [label="sha256:14e05a48664f6510dbc75d976f28904c3b566799f863380af5a9aad688f5dd89" shape="plaintext"];
  "sha256:85b709cdfaadecd4e22a195cfe08257ae541788a78e98a6ac636abc22b42eedc" -> "sha256:d11896cfb5c253d797bf470cdb03fdc805785c6dc1b492fcf98225faf9552c44" [label=""];
  "sha256:d11896cfb5c253d797bf470cdb03fdc805785c6dc1b492fcf98225faf9552c44" -> "sha256:16240b6f16819d9bc74b83b34ff07f07a23b4ae92f81c45352dad0f087da2455" [label=""];
  "sha256:16240b6f16819d9bc74b83b34ff07f07a23b4ae92f81c45352dad0f087da2455" -> "sha256:bbd769e00ff7beca722be69fead43f56f76acbe10eba109f43a93a53cf8bfe1f" [label=""];
  "sha256:473f9d3b3372c4b3a45cb5dfba8b10597ea4a483a639d9cad2c1eb0cc4f0b72a" -> "sha256:bbd769e00ff7beca722be69fead43f56f76acbe10eba109f43a93a53cf8bfe1f" [label=""];
  "sha256:bbd769e00ff7beca722be69fead43f56f76acbe10eba109f43a93a53cf8bfe1f" -> "sha256:df42b2d4c395ceb3bd93b231dea8768e43ac6e652069977356954ee75f57f4ce" [label=""];
  "sha256:df42b2d4c395ceb3bd93b231dea8768e43ac6e652069977356954ee75f57f4ce" -> "sha256:a4ca0fb8c6fc62a41ed9b07af4891634657f3cd5d1d10a89f6c553a37e416e6d" [label=""];
  "sha256:473f9d3b3372c4b3a45cb5dfba8b10597ea4a483a639d9cad2c1eb0cc4f0b72a" -> "sha256:a4ca0fb8c6fc62a41ed9b07af4891634657f3cd5d1d10a89f6c553a37e416e6d" [label=""];
  "sha256:a4ca0fb8c6fc62a41ed9b07af4891634657f3cd5d1d10a89f6c553a37e416e6d" -> "sha256:14e05a48664f6510dbc75d976f28904c3b566799f863380af5a9aad688f5dd89" [label=""];
}

