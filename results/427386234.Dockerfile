[app/sources/427386234.Dockerfile]
digraph {
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" [label="docker-image://docker.io/library/busybox:latest" shape="ellipse"];
  "sha256:ab94546b1c42c30416903a0d5c52cf118c26cdbc8ce9a345af4f579b214f634d" [label="/bin/sh -c mkdir -p /usr/local/bin" shape="box"];
  "sha256:1ca56ada4badc7fa494b80f23abc3d599d18248e9b8687e9b1d3de2ea20856da" [label="sha256:1ca56ada4badc7fa494b80f23abc3d599d18248e9b8687e9b1d3de2ea20856da" shape="plaintext"];
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" -> "sha256:ab94546b1c42c30416903a0d5c52cf118c26cdbc8ce9a345af4f579b214f634d" [label=""];
  "sha256:ab94546b1c42c30416903a0d5c52cf118c26cdbc8ce9a345af4f579b214f634d" -> "sha256:1ca56ada4badc7fa494b80f23abc3d599d18248e9b8687e9b1d3de2ea20856da" [label=""];
}

