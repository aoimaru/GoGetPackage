[app/sources/282265549.Dockerfile]
digraph {
  "sha256:3eaeefc2c2841e4bc6516f11f0048ab343bf9072321db0943f73ae52a6ffb13e" [label="docker-image://docker.io/webdevops/hhvm:ubuntu-16.04@sha256:b75f394070bc37e7ec6758a6abf2fec83b0b0a5bfd18425b37fa18efd67087d3" shape="ellipse"];
  "sha256:a60577a868804a65af2bb4fc8c8613d689de1305f2a81d9616a0582b04a0ba11" [label="local://context" shape="ellipse"];
  "sha256:310eb67a5c99a9c67d70e2a76be18681256f6729581d5746b6af95308164e54e" [label="copy{src=/conf, dest=/opt/docker/}" shape="note"];
  "sha256:e1d92f32e4d772aff4981db8a10930e9e53d28e74605ccd4e8065a09e0f7584f" [label="/bin/sh -c set -x     && apt-install         nginx     && docker-run-bootstrap     && docker-image-cleanup" shape="box"];
  "sha256:18ca87c8d04f7f4e30539b7bfdf950956d54eb7fa0600a185b0a1b613a71cc22" [label="sha256:18ca87c8d04f7f4e30539b7bfdf950956d54eb7fa0600a185b0a1b613a71cc22" shape="plaintext"];
  "sha256:3eaeefc2c2841e4bc6516f11f0048ab343bf9072321db0943f73ae52a6ffb13e" -> "sha256:310eb67a5c99a9c67d70e2a76be18681256f6729581d5746b6af95308164e54e" [label=""];
  "sha256:a60577a868804a65af2bb4fc8c8613d689de1305f2a81d9616a0582b04a0ba11" -> "sha256:310eb67a5c99a9c67d70e2a76be18681256f6729581d5746b6af95308164e54e" [label=""];
  "sha256:310eb67a5c99a9c67d70e2a76be18681256f6729581d5746b6af95308164e54e" -> "sha256:e1d92f32e4d772aff4981db8a10930e9e53d28e74605ccd4e8065a09e0f7584f" [label=""];
  "sha256:e1d92f32e4d772aff4981db8a10930e9e53d28e74605ccd4e8065a09e0f7584f" -> "sha256:18ca87c8d04f7f4e30539b7bfdf950956d54eb7fa0600a185b0a1b613a71cc22" [label=""];
}

