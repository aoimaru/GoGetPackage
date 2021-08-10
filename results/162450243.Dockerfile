[app/sources/162450243.Dockerfile]
digraph {
  "sha256:964e11df39cda4e4d4be60ca2e1c4d5af45d3eea1bd69e653733bbb8057d46c8" [label="docker-image://docker.io/google/golang:latest" shape="ellipse"];
  "sha256:a02e109e528ef09e6e99fe828269f40cb14fa26102237534b5278ca69af9dafe" [label="mkdir{path=/gopath/src/blockchain}" shape="note"];
  "sha256:06e46f3fa13ca6527ba5e2083cbda2318b94a657c76afb0787a3986f6137162e" [label="local://context" shape="ellipse"];
  "sha256:06d669efd31f4a25a9688f50bae6cb1a367eb2a1e1aed3e055b52cb99a978bf2" [label="copy{src=/, dest=/gopath/src/blockchain}" shape="note"];
  "sha256:4dfbc7f02832faa9b046ab1d0fcfdc28835e0edb36effa09beae66bba74682f2" [label="/bin/sh -c go get blockchain/cli" shape="box"];
  "sha256:5ac2d043891fb7d27318c225662229a620d574f6fc02971be1732f21d0e91a87" [label="sha256:5ac2d043891fb7d27318c225662229a620d574f6fc02971be1732f21d0e91a87" shape="plaintext"];
  "sha256:964e11df39cda4e4d4be60ca2e1c4d5af45d3eea1bd69e653733bbb8057d46c8" -> "sha256:a02e109e528ef09e6e99fe828269f40cb14fa26102237534b5278ca69af9dafe" [label=""];
  "sha256:a02e109e528ef09e6e99fe828269f40cb14fa26102237534b5278ca69af9dafe" -> "sha256:06d669efd31f4a25a9688f50bae6cb1a367eb2a1e1aed3e055b52cb99a978bf2" [label=""];
  "sha256:06e46f3fa13ca6527ba5e2083cbda2318b94a657c76afb0787a3986f6137162e" -> "sha256:06d669efd31f4a25a9688f50bae6cb1a367eb2a1e1aed3e055b52cb99a978bf2" [label=""];
  "sha256:06d669efd31f4a25a9688f50bae6cb1a367eb2a1e1aed3e055b52cb99a978bf2" -> "sha256:4dfbc7f02832faa9b046ab1d0fcfdc28835e0edb36effa09beae66bba74682f2" [label=""];
  "sha256:4dfbc7f02832faa9b046ab1d0fcfdc28835e0edb36effa09beae66bba74682f2" -> "sha256:5ac2d043891fb7d27318c225662229a620d574f6fc02971be1732f21d0e91a87" [label=""];
}

