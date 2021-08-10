[app/sources/252791349.Dockerfile]
digraph {
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:43abf0ce2e667e5907a6065d0cd32d7634cc6e2cc9ab8e904259856f7b7c3c26" [label="/bin/sh -c apt-get install -y git" shape="box"];
  "sha256:b565361e612cebb5d9ecd304e2269fceb342ab6525ca5d77ada824af711a50be" [label="/bin/sh -c go get github.com/czerwonk/udp-mirror" shape="box"];
  "sha256:32737dbba91e6531508f75862f7f47ce688c243423f0568b9398134b07fe72ee" [label="sha256:32737dbba91e6531508f75862f7f47ce688c243423f0568b9398134b07fe72ee" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:43abf0ce2e667e5907a6065d0cd32d7634cc6e2cc9ab8e904259856f7b7c3c26" [label=""];
  "sha256:43abf0ce2e667e5907a6065d0cd32d7634cc6e2cc9ab8e904259856f7b7c3c26" -> "sha256:b565361e612cebb5d9ecd304e2269fceb342ab6525ca5d77ada824af711a50be" [label=""];
  "sha256:b565361e612cebb5d9ecd304e2269fceb342ab6525ca5d77ada824af711a50be" -> "sha256:32737dbba91e6531508f75862f7f47ce688c243423f0568b9398134b07fe72ee" [label=""];
}

