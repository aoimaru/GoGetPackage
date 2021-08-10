[app/sources/300426882.Dockerfile]
digraph {
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:4915383793dfce957e7ad2cfd51366ca8e1f82472b9c0a582e9c06b75ad52a43" [label="/bin/sh -c mkdir -p $GOPATH/src/github.com/xlab-si/emmy" shape="box"];
  "sha256:bd988de0bde2a39e31496044a1861238a603c3735d76ae0276224ce084d563d3" [label="mkdir{path=/src/github.com/xlab-si/emmy}" shape="note"];
  "sha256:5b614f27633971e0ba3f7b32fc9b4a122faf46bb5840f74f9e83c3131d0f88e3" [label="local://context" shape="ellipse"];
  "sha256:1566946ad8fb6f2f4fbcc7fa9f01d446a8f9b49bbea3adec3780b685d569d679" [label="copy{src=/, dest=/src/github.com/xlab-si/emmy/}" shape="note"];
  "sha256:e45b156b24d51e6579a2e457519e2a936d692c404673dd5106309760e387214f" [label="/bin/sh -c make setup_dep &&     dep ensure &&     go install" shape="box"];
  "sha256:7dac5a2077b38901c32ad925ced7f059e85ada7597d202a566ab9cb748b2d05b" [label="sha256:7dac5a2077b38901c32ad925ced7f059e85ada7597d202a566ab9cb748b2d05b" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:4915383793dfce957e7ad2cfd51366ca8e1f82472b9c0a582e9c06b75ad52a43" [label=""];
  "sha256:4915383793dfce957e7ad2cfd51366ca8e1f82472b9c0a582e9c06b75ad52a43" -> "sha256:bd988de0bde2a39e31496044a1861238a603c3735d76ae0276224ce084d563d3" [label=""];
  "sha256:bd988de0bde2a39e31496044a1861238a603c3735d76ae0276224ce084d563d3" -> "sha256:1566946ad8fb6f2f4fbcc7fa9f01d446a8f9b49bbea3adec3780b685d569d679" [label=""];
  "sha256:5b614f27633971e0ba3f7b32fc9b4a122faf46bb5840f74f9e83c3131d0f88e3" -> "sha256:1566946ad8fb6f2f4fbcc7fa9f01d446a8f9b49bbea3adec3780b685d569d679" [label=""];
  "sha256:1566946ad8fb6f2f4fbcc7fa9f01d446a8f9b49bbea3adec3780b685d569d679" -> "sha256:e45b156b24d51e6579a2e457519e2a936d692c404673dd5106309760e387214f" [label=""];
  "sha256:e45b156b24d51e6579a2e457519e2a936d692c404673dd5106309760e387214f" -> "sha256:7dac5a2077b38901c32ad925ced7f059e85ada7597d202a566ab9cb748b2d05b" [label=""];
}

