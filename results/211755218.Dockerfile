[app/sources/211755218.Dockerfile]
digraph {
  "sha256:e09a417d6ba5d85f9300bd9bf198dccc5297b49061ea65d9a6752db25cdef32d" [label="docker-image://docker.io/library/golang:1.9" shape="ellipse"];
  "sha256:0b59372252b3c4a60e369c74e6e41ef369f2c9d32d3e03368b4c3f4df0299b32" [label="/bin/sh -c mkdir -p /go/src/github.com/getconversio/go-shopify" shape="box"];
  "sha256:c0555c14e6baebe883eeef04eaf8d5d069288f3d7eaaa7fe6d865ea67a0dea81" [label="mkdir{path=/go/src/github.com/getconversio/go-shopify}" shape="note"];
  "sha256:1c434ec772a9ee58da2693bab82c04ac821aad75957f44d6a8829ed0d5201854" [label="local://context" shape="ellipse"];
  "sha256:faace182db2dacfae074765229b35bb34ba2d6bd2bfedbb4646a97aa7caa6321" [label="copy{src=/, dest=/go/src/github.com/getconversio/go-shopify}" shape="note"];
  "sha256:455b0cf7bdd3a4243bb114ac316f42543695f3e1a43112905fcc00aa6be4e042" [label="/bin/sh -c go get -v -d -t" shape="box"];
  "sha256:115b22b3a6e8d9fbc6eda9056ebd584ae4aa2a33511f7afeb37a2f940608460c" [label="sha256:115b22b3a6e8d9fbc6eda9056ebd584ae4aa2a33511f7afeb37a2f940608460c" shape="plaintext"];
  "sha256:e09a417d6ba5d85f9300bd9bf198dccc5297b49061ea65d9a6752db25cdef32d" -> "sha256:0b59372252b3c4a60e369c74e6e41ef369f2c9d32d3e03368b4c3f4df0299b32" [label=""];
  "sha256:0b59372252b3c4a60e369c74e6e41ef369f2c9d32d3e03368b4c3f4df0299b32" -> "sha256:c0555c14e6baebe883eeef04eaf8d5d069288f3d7eaaa7fe6d865ea67a0dea81" [label=""];
  "sha256:c0555c14e6baebe883eeef04eaf8d5d069288f3d7eaaa7fe6d865ea67a0dea81" -> "sha256:faace182db2dacfae074765229b35bb34ba2d6bd2bfedbb4646a97aa7caa6321" [label=""];
  "sha256:1c434ec772a9ee58da2693bab82c04ac821aad75957f44d6a8829ed0d5201854" -> "sha256:faace182db2dacfae074765229b35bb34ba2d6bd2bfedbb4646a97aa7caa6321" [label=""];
  "sha256:faace182db2dacfae074765229b35bb34ba2d6bd2bfedbb4646a97aa7caa6321" -> "sha256:455b0cf7bdd3a4243bb114ac316f42543695f3e1a43112905fcc00aa6be4e042" [label=""];
  "sha256:455b0cf7bdd3a4243bb114ac316f42543695f3e1a43112905fcc00aa6be4e042" -> "sha256:115b22b3a6e8d9fbc6eda9056ebd584ae4aa2a33511f7afeb37a2f940608460c" [label=""];
}

