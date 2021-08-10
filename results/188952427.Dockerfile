[app/sources/188952427.Dockerfile]
digraph {
  "sha256:f0ca3dca451a131768f00fd340bffd6f980104740bb746e664a018902c743dd8" [label="docker-image://docker.io/rocker/tidyverse@sha256:be147128e86afe198302665b6cde86963c2368b28796af37fff99705e5ad231d" shape="ellipse"];
  "sha256:d29ed3706ad3d99de5fa384a6f2644db1556467814a00a7cc5a0e40b2f3bae0a" [label="local://context" shape="ellipse"];
  "sha256:b45c35a4a6003631600c8fcb14e541241007fba4de4ed7bb1da54d8866fe0573" [label="copy{src=/, dest=/home/ggExtra}" shape="note"];
  "sha256:b291418c61af3912944dd39e60b4928bd15bcfffd5ba1277a38368d732921f12" [label="mkdir{path=/home/ggExtra}" shape="note"];
  "sha256:aa04df6f59efb5ff2242753c8f49a361dcc9836a3acb58b3c97d7cc86ee50b90" [label="/bin/sh -c apt-get update;   apt-get install -y --no-install-recommends libfreetype6;   Rscript -e \"devtools::install_deps(dependencies = TRUE, quiet = TRUE)\";   Rscript -e \"install.packages('rlang', repos = 'https://cran.rstudio.com/')\"" shape="box"];
  "sha256:3df74a773770b23a5ef93e68e49d4b635df6be08c73f87fdaa4e5c55657040b4" [label="sha256:3df74a773770b23a5ef93e68e49d4b635df6be08c73f87fdaa4e5c55657040b4" shape="plaintext"];
  "sha256:f0ca3dca451a131768f00fd340bffd6f980104740bb746e664a018902c743dd8" -> "sha256:b45c35a4a6003631600c8fcb14e541241007fba4de4ed7bb1da54d8866fe0573" [label=""];
  "sha256:d29ed3706ad3d99de5fa384a6f2644db1556467814a00a7cc5a0e40b2f3bae0a" -> "sha256:b45c35a4a6003631600c8fcb14e541241007fba4de4ed7bb1da54d8866fe0573" [label=""];
  "sha256:b45c35a4a6003631600c8fcb14e541241007fba4de4ed7bb1da54d8866fe0573" -> "sha256:b291418c61af3912944dd39e60b4928bd15bcfffd5ba1277a38368d732921f12" [label=""];
  "sha256:b291418c61af3912944dd39e60b4928bd15bcfffd5ba1277a38368d732921f12" -> "sha256:aa04df6f59efb5ff2242753c8f49a361dcc9836a3acb58b3c97d7cc86ee50b90" [label=""];
  "sha256:aa04df6f59efb5ff2242753c8f49a361dcc9836a3acb58b3c97d7cc86ee50b90" -> "sha256:3df74a773770b23a5ef93e68e49d4b635df6be08c73f87fdaa4e5c55657040b4" [label=""];
}

