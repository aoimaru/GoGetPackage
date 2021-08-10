[app/sources/250381305.Dockerfile]
digraph {
  "sha256:6050b511077fd8b9948ba24af5d45c831a8545d4e78ecd42798c3f914041f906" [label="docker-image://docker.io/library/r-base:latest" shape="ellipse"];
  "sha256:12f03d2eafb8f393f9778b6a89b7b95e2c9d38adf7b5c90dd9fd947df91488c8" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         build-essential libssl-dev pandoc" shape="box"];
  "sha256:ff20378e5ec62279e88507fc1d69aa36bcfc2c6e188faada26ab4081ab8776fd" [label="/bin/sh -c install2.r --error     ggmcmc     gpclib     knitr     maptools     rmarkdown     rstan     spdep" shape="box"];
  "sha256:f5b77df88fe43776c3110dcef1cb9cd66257d27faf5a7b1b129afdee28e8f94d" [label="local://context" shape="ellipse"];
  "sha256:95576c2d9f02b3a558bfdd9e4133a46cb1e091c111344f51ecebe008e5d433c4" [label="copy{src=/, dest=/home/docker/CARstan}" shape="note"];
  "sha256:b921af2ba65663172bf2b43818bd1eb17ffd4ab8ae534021aef965d5cde7a942" [label="mkdir{path=/home/docker/CARstan}" shape="note"];
  "sha256:0ca40929af97c8cdb89ff320ea80e193d10cee9877ae78c45bbd172636e0f2cc" [label="sha256:0ca40929af97c8cdb89ff320ea80e193d10cee9877ae78c45bbd172636e0f2cc" shape="plaintext"];
  "sha256:6050b511077fd8b9948ba24af5d45c831a8545d4e78ecd42798c3f914041f906" -> "sha256:12f03d2eafb8f393f9778b6a89b7b95e2c9d38adf7b5c90dd9fd947df91488c8" [label=""];
  "sha256:12f03d2eafb8f393f9778b6a89b7b95e2c9d38adf7b5c90dd9fd947df91488c8" -> "sha256:ff20378e5ec62279e88507fc1d69aa36bcfc2c6e188faada26ab4081ab8776fd" [label=""];
  "sha256:ff20378e5ec62279e88507fc1d69aa36bcfc2c6e188faada26ab4081ab8776fd" -> "sha256:95576c2d9f02b3a558bfdd9e4133a46cb1e091c111344f51ecebe008e5d433c4" [label=""];
  "sha256:f5b77df88fe43776c3110dcef1cb9cd66257d27faf5a7b1b129afdee28e8f94d" -> "sha256:95576c2d9f02b3a558bfdd9e4133a46cb1e091c111344f51ecebe008e5d433c4" [label=""];
  "sha256:95576c2d9f02b3a558bfdd9e4133a46cb1e091c111344f51ecebe008e5d433c4" -> "sha256:b921af2ba65663172bf2b43818bd1eb17ffd4ab8ae534021aef965d5cde7a942" [label=""];
  "sha256:b921af2ba65663172bf2b43818bd1eb17ffd4ab8ae534021aef965d5cde7a942" -> "sha256:0ca40929af97c8cdb89ff320ea80e193d10cee9877ae78c45bbd172636e0f2cc" [label=""];
}

