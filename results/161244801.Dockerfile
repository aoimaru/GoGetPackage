[app/sources/161244801.Dockerfile]
digraph {
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:2d3f2e1baba17caf22295b9f8634ba0b333ffa4722b1c5e25916683d8623b2c9" [label="local://context" shape="ellipse"];
  "sha256:42d9ffa28440c49df421627225d6b0cf9cd47e827840fbe73080321176f611d5" [label="copy{src=/, dest=/go/src/github.com/coreos/etcd}" shape="note"];
  "sha256:5ede57658551b16d79b24848401b3de2f297698ae0fb3179dd9a543b3a9cd7f0" [label="copy{src=/cmd/vendor, dest=/go/src/github.com/coreos/etcd/vendor}" shape="note"];
  "sha256:fe27e4cc92f51bcb930dab5ec5782f6c11a76f08c5558a07fe1319e7a91e2d2f" [label="/bin/sh -c go install github.com/coreos/etcd" shape="box"];
  "sha256:0fba391bd6de89dd9dc1e2b3573ef18fb5758e8bc59f06ffabcdac3482ff7439" [label="sha256:0fba391bd6de89dd9dc1e2b3573ef18fb5758e8bc59f06ffabcdac3482ff7439" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:42d9ffa28440c49df421627225d6b0cf9cd47e827840fbe73080321176f611d5" [label=""];
  "sha256:2d3f2e1baba17caf22295b9f8634ba0b333ffa4722b1c5e25916683d8623b2c9" -> "sha256:42d9ffa28440c49df421627225d6b0cf9cd47e827840fbe73080321176f611d5" [label=""];
  "sha256:42d9ffa28440c49df421627225d6b0cf9cd47e827840fbe73080321176f611d5" -> "sha256:5ede57658551b16d79b24848401b3de2f297698ae0fb3179dd9a543b3a9cd7f0" [label=""];
  "sha256:2d3f2e1baba17caf22295b9f8634ba0b333ffa4722b1c5e25916683d8623b2c9" -> "sha256:5ede57658551b16d79b24848401b3de2f297698ae0fb3179dd9a543b3a9cd7f0" [label=""];
  "sha256:5ede57658551b16d79b24848401b3de2f297698ae0fb3179dd9a543b3a9cd7f0" -> "sha256:fe27e4cc92f51bcb930dab5ec5782f6c11a76f08c5558a07fe1319e7a91e2d2f" [label=""];
  "sha256:fe27e4cc92f51bcb930dab5ec5782f6c11a76f08c5558a07fe1319e7a91e2d2f" -> "sha256:0fba391bd6de89dd9dc1e2b3573ef18fb5758e8bc59f06ffabcdac3482ff7439" [label=""];
}

