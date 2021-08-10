[app/sources/148544241.Dockerfile]
digraph {
  "sha256:2b581387a274b1c30543dc01e7bfc9a440e08af1286b09556e022d6a4425aed0" [label="docker-image://docker.io/library/alpine@sha256:eb3e4e175ba6d212ba1d6e04fc0782916c08e1c9d7b45892e9796141b1d379ae" shape="ellipse"];
  "sha256:9c3a67f6df85c9bf0e2e27b3ad5f30b4ef4a0eead63119e8b93fe9e00b7fe92d" [label="/bin/sh -c apk add --no-cache curl" shape="box"];
  "sha256:04f398b56c7edee50d0093c898b0a553d89bbae5e6de5a24a3fed906dffc3bef" [label="mkdir{path=/src}" shape="note"];
  "sha256:2e82ed5785aac279dfe9b2d6eba6863ad2bf2138bc1814d3b471ccd37a21fb41" [label="local://context" shape="ellipse"];
  "sha256:0540e4ccdc3d58e45025952ed66b4209e5d3c74ec955f67b95d0bcba4c9538e5" [label="copy{src=/, dest=/src/}" shape="note"];
  "sha256:e0983424e973b2eddf52594b8c82c7f0f3205aa719e5cfdbe436c879626c4efe" [label="sha256:e0983424e973b2eddf52594b8c82c7f0f3205aa719e5cfdbe436c879626c4efe" shape="plaintext"];
  "sha256:2b581387a274b1c30543dc01e7bfc9a440e08af1286b09556e022d6a4425aed0" -> "sha256:9c3a67f6df85c9bf0e2e27b3ad5f30b4ef4a0eead63119e8b93fe9e00b7fe92d" [label=""];
  "sha256:9c3a67f6df85c9bf0e2e27b3ad5f30b4ef4a0eead63119e8b93fe9e00b7fe92d" -> "sha256:04f398b56c7edee50d0093c898b0a553d89bbae5e6de5a24a3fed906dffc3bef" [label=""];
  "sha256:04f398b56c7edee50d0093c898b0a553d89bbae5e6de5a24a3fed906dffc3bef" -> "sha256:0540e4ccdc3d58e45025952ed66b4209e5d3c74ec955f67b95d0bcba4c9538e5" [label=""];
  "sha256:2e82ed5785aac279dfe9b2d6eba6863ad2bf2138bc1814d3b471ccd37a21fb41" -> "sha256:0540e4ccdc3d58e45025952ed66b4209e5d3c74ec955f67b95d0bcba4c9538e5" [label=""];
  "sha256:0540e4ccdc3d58e45025952ed66b4209e5d3c74ec955f67b95d0bcba4c9538e5" -> "sha256:e0983424e973b2eddf52594b8c82c7f0f3205aa719e5cfdbe436c879626c4efe" [label=""];
}

