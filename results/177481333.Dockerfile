[app/sources/177481333.Dockerfile]
digraph {
  "sha256:d98d8301bb59b68bd6607578029166eb693640f5d8e71f25cf85f6f417b14350" [label="http://master.bioconductor.org/todays-date" shape="ellipse"];
  "sha256:56d7b7654f5d953a5c12b7ae94f929085ccc788789644433d8c65b051068ff33" [label="docker-image://docker.io/bioconductor/devel_protmetcore2:latest" shape="ellipse"];
  "sha256:376bc9e4684afcf269cd57bf35b8c210b6b8c4cf65d5895308d6cbecb097d62b" [label="/bin/sh -c apt-get update && apt-get -y install     libudunits2-dev     tcl8.6-dev     tk" shape="box"];
  "sha256:9608bb0b7e9ae02afa0c78a465067fcbc0da740ff8671350761289e750ba48d4" [label="local://context" shape="ellipse"];
  "sha256:736bf52a00ea9dc42ffdc9f836c79c19ddd1224d05e069b08bdd56251557e87e" [label="copy{src=/install.R, dest=/tmp/}" shape="note"];
  "sha256:e5fa895ea8c54eae203c0d1784ee9e002315b22723645a71abd1e4f9b0532437" [label="copy{src=/todays-date, dest=/tmp/}" shape="note"];
  "sha256:5ed49623d51a9d2c1e8116afc7308f52aa163c1bc27d84fae75f8ea61284070a" [label="/bin/sh -c R -f /tmp/install.R" shape="box"];
  "sha256:a4c3ebc60b73cd4dc33ee9331f99a31c52a6e9c76d764cd3d3f8d5ec714f71d4" [label="sha256:a4c3ebc60b73cd4dc33ee9331f99a31c52a6e9c76d764cd3d3f8d5ec714f71d4" shape="plaintext"];
  "sha256:56d7b7654f5d953a5c12b7ae94f929085ccc788789644433d8c65b051068ff33" -> "sha256:376bc9e4684afcf269cd57bf35b8c210b6b8c4cf65d5895308d6cbecb097d62b" [label=""];
  "sha256:376bc9e4684afcf269cd57bf35b8c210b6b8c4cf65d5895308d6cbecb097d62b" -> "sha256:736bf52a00ea9dc42ffdc9f836c79c19ddd1224d05e069b08bdd56251557e87e" [label=""];
  "sha256:9608bb0b7e9ae02afa0c78a465067fcbc0da740ff8671350761289e750ba48d4" -> "sha256:736bf52a00ea9dc42ffdc9f836c79c19ddd1224d05e069b08bdd56251557e87e" [label=""];
  "sha256:736bf52a00ea9dc42ffdc9f836c79c19ddd1224d05e069b08bdd56251557e87e" -> "sha256:e5fa895ea8c54eae203c0d1784ee9e002315b22723645a71abd1e4f9b0532437" [label=""];
  "sha256:d98d8301bb59b68bd6607578029166eb693640f5d8e71f25cf85f6f417b14350" -> "sha256:e5fa895ea8c54eae203c0d1784ee9e002315b22723645a71abd1e4f9b0532437" [label=""];
  "sha256:e5fa895ea8c54eae203c0d1784ee9e002315b22723645a71abd1e4f9b0532437" -> "sha256:5ed49623d51a9d2c1e8116afc7308f52aa163c1bc27d84fae75f8ea61284070a" [label=""];
  "sha256:5ed49623d51a9d2c1e8116afc7308f52aa163c1bc27d84fae75f8ea61284070a" -> "sha256:a4c3ebc60b73cd4dc33ee9331f99a31c52a6e9c76d764cd3d3f8d5ec714f71d4" [label=""];
}

