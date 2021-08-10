[app/sources/252771061.Dockerfile]
digraph {
  "sha256:300e74f0d9b886a608998da0dc74bd417acc0649098d5a91480e4d2b17c9d434" [label="docker-image://docker.io/mhart/alpine-node:8.10.0" shape="ellipse"];
  "sha256:0f18021742aacb23d0ffcf49dc58217e2474e4c9aaf92835dac13b7b05bb0e62" [label="/bin/sh -c apk add \\--no-cache make gcc g++ python" shape="box"];
  "sha256:3204531b1797e683789221f55c3767eda7f054ec3725d92f5f8f803546148b57" [label="sha256:3204531b1797e683789221f55c3767eda7f054ec3725d92f5f8f803546148b57" shape="plaintext"];
  "sha256:300e74f0d9b886a608998da0dc74bd417acc0649098d5a91480e4d2b17c9d434" -> "sha256:0f18021742aacb23d0ffcf49dc58217e2474e4c9aaf92835dac13b7b05bb0e62" [label=""];
  "sha256:0f18021742aacb23d0ffcf49dc58217e2474e4c9aaf92835dac13b7b05bb0e62" -> "sha256:3204531b1797e683789221f55c3767eda7f054ec3725d92f5f8f803546148b57" [label=""];
}

