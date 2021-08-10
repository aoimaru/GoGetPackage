[app/sources/252784478.Dockerfile]
digraph {
  "sha256:dedd3f05607beb5089e34de23b43a6e6559127cb2d5369126dcbc535532366bc" [label="docker-image://docker.io/bizztreat/docker-ruby-keboola-gd:latest" shape="ellipse"];
  "sha256:d8d8c605b9c019c3a8e5ac019e0516b8151c63318f1d8c53cb006f97e48d3d6b" [label="/bin/sh -c gem install aws-sdk" shape="box"];
  "sha256:2b9610c56a410968a02a55ac33787c30bfc9c289963e8342cddc92d2d07a02bc" [label="sha256:2b9610c56a410968a02a55ac33787c30bfc9c289963e8342cddc92d2d07a02bc" shape="plaintext"];
  "sha256:dedd3f05607beb5089e34de23b43a6e6559127cb2d5369126dcbc535532366bc" -> "sha256:d8d8c605b9c019c3a8e5ac019e0516b8151c63318f1d8c53cb006f97e48d3d6b" [label=""];
  "sha256:d8d8c605b9c019c3a8e5ac019e0516b8151c63318f1d8c53cb006f97e48d3d6b" -> "sha256:2b9610c56a410968a02a55ac33787c30bfc9c289963e8342cddc92d2d07a02bc" [label=""];
}

