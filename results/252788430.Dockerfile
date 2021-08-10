[app/sources/252788430.Dockerfile]
digraph {
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:62675811095ca2efe6fdccdb9c69a61d29d35a0e8a88e9170f91e23b7f70b256" [label="/bin/sh -c mkdir -p /go/src/bitbucket.org/crowbits/worker-math_add/" shape="box"];
  "sha256:daed17a338caecd791ced35d995e4d8cde3f02abe2af593962256c898898a702" [label="local://context" shape="ellipse"];
  "sha256:794c998318658980497749c227f7edaebb48a5a305736452d61e9b5f9c246136" [label="copy{src=/, dest=/go/src/bitbucket.org/crowbits/worker-math_add/}" shape="note"];
  "sha256:2bc582b1289d6ebf7e3bb61c9e566d9ca8bd1e82f0d38a86dd8c0f9230d1a8fd" [label="mkdir{path=/go/src/bitbucket.org/crowbits/worker-math_add}" shape="note"];
  "sha256:ba2c1b6bc67d543678d059e49bfabed00a972feb586c940d5dc9f62acb38ca04" [label="/bin/sh -c go-wrapper install" shape="box"];
  "sha256:8d8e47d0899f3ea58553c6477dc52f6de881ee3b5414b9318809bb509852a86e" [label="sha256:8d8e47d0899f3ea58553c6477dc52f6de881ee3b5414b9318809bb509852a86e" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:62675811095ca2efe6fdccdb9c69a61d29d35a0e8a88e9170f91e23b7f70b256" [label=""];
  "sha256:62675811095ca2efe6fdccdb9c69a61d29d35a0e8a88e9170f91e23b7f70b256" -> "sha256:794c998318658980497749c227f7edaebb48a5a305736452d61e9b5f9c246136" [label=""];
  "sha256:daed17a338caecd791ced35d995e4d8cde3f02abe2af593962256c898898a702" -> "sha256:794c998318658980497749c227f7edaebb48a5a305736452d61e9b5f9c246136" [label=""];
  "sha256:794c998318658980497749c227f7edaebb48a5a305736452d61e9b5f9c246136" -> "sha256:2bc582b1289d6ebf7e3bb61c9e566d9ca8bd1e82f0d38a86dd8c0f9230d1a8fd" [label=""];
  "sha256:2bc582b1289d6ebf7e3bb61c9e566d9ca8bd1e82f0d38a86dd8c0f9230d1a8fd" -> "sha256:ba2c1b6bc67d543678d059e49bfabed00a972feb586c940d5dc9f62acb38ca04" [label=""];
  "sha256:ba2c1b6bc67d543678d059e49bfabed00a972feb586c940d5dc9f62acb38ca04" -> "sha256:8d8e47d0899f3ea58553c6477dc52f6de881ee3b5414b9318809bb509852a86e" [label=""];
}

