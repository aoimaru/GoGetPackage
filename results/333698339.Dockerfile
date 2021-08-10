[app/sources/333698339.Dockerfile]
digraph {
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:70713926bfc16010a91eb048bb70c2320ac4029fcd63a8acd6f09b682d7148ec" [label="/bin/sh -c mkdir -p /go/src   && mkdir -p /go/bin   && mkdir -p /go/pkg" shape="box"];
  "sha256:fe75d7dc52ffbd64e7a005ec149204c4258cfc132e2960e3c89999ef1db606de" [label="/bin/sh -c mkdir -p $GOPATH/src/app" shape="box"];
  "sha256:701271e5ff6ff50893dcb6be22f3b6c6f543a5378266f8ee8179211cbda45857" [label="local://context" shape="ellipse"];
  "sha256:2d47112292f964acae6eb35c154523a419fd2960cef9585c85b9d5af000403da" [label="copy{src=/, dest=/go/src/app}" shape="note"];
  "sha256:c3bab07acf59be66c45d1870dc3b9db8567acf8e8ae8451f57ef24b3b191eb75" [label="mkdir{path=/go/src/app}" shape="note"];
  "sha256:74ecdea8e9452c9c9e7f73b054a4b3f8d999d4bd8d8749917b73bcb01b3d63a7" [label="/bin/sh -c go build -o main ." shape="box"];
  "sha256:ddeadada859f98873de366265b1d9dcf73e145845ddcc9b121cffd56d018b604" [label="sha256:ddeadada859f98873de366265b1d9dcf73e145845ddcc9b121cffd56d018b604" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:70713926bfc16010a91eb048bb70c2320ac4029fcd63a8acd6f09b682d7148ec" [label=""];
  "sha256:70713926bfc16010a91eb048bb70c2320ac4029fcd63a8acd6f09b682d7148ec" -> "sha256:fe75d7dc52ffbd64e7a005ec149204c4258cfc132e2960e3c89999ef1db606de" [label=""];
  "sha256:fe75d7dc52ffbd64e7a005ec149204c4258cfc132e2960e3c89999ef1db606de" -> "sha256:2d47112292f964acae6eb35c154523a419fd2960cef9585c85b9d5af000403da" [label=""];
  "sha256:701271e5ff6ff50893dcb6be22f3b6c6f543a5378266f8ee8179211cbda45857" -> "sha256:2d47112292f964acae6eb35c154523a419fd2960cef9585c85b9d5af000403da" [label=""];
  "sha256:2d47112292f964acae6eb35c154523a419fd2960cef9585c85b9d5af000403da" -> "sha256:c3bab07acf59be66c45d1870dc3b9db8567acf8e8ae8451f57ef24b3b191eb75" [label=""];
  "sha256:c3bab07acf59be66c45d1870dc3b9db8567acf8e8ae8451f57ef24b3b191eb75" -> "sha256:74ecdea8e9452c9c9e7f73b054a4b3f8d999d4bd8d8749917b73bcb01b3d63a7" [label=""];
  "sha256:74ecdea8e9452c9c9e7f73b054a4b3f8d999d4bd8d8749917b73bcb01b3d63a7" -> "sha256:ddeadada859f98873de366265b1d9dcf73e145845ddcc9b121cffd56d018b604" [label=""];
}

