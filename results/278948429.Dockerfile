[app/sources/278948429.Dockerfile]
digraph {
  "sha256:1e71746e02371b61079515ec9f465f5596bfe4e9ddd74773cbc5f65f55c65068" [label="local://context" shape="ellipse"];
  "sha256:56e7154efa8c0612a35e54c31f156784c9444b0894a1399b23a162bcfb792f4e" [label="docker-image://docker.io/sordina/ihaskell:0.0.3@sha256:05256bee8a1536d20eb6986d56f3dcb0bf35a71209d9a94ad93bdb75dccbb030" shape="ellipse"];
  "sha256:86cf08d56802532d598ec48f664dc22d0ea72ad5a18442a75901ab9c25e197d2" [label="copy{src=/notebooks, dest=/home/jovyan}" shape="note"];
  "sha256:9e6ad22aa0b169e663a2b3709d692fae73d831ae7c4555378a4a5b2fc75b9e87" [label="/bin/sh -c chown ${NB_USER} ${HOME}/*" shape="box"];
  "sha256:63466b0f1f7ff95e117005c7a3a98eee6e6ed4a3d451abd187a1f708d10e1a6d" [label="copy{src=/css/custom.css, dest=/home/jovyan/.jupyter/custom/custom.css}" shape="note"];
  "sha256:29512693eab4b22acd5f65723a17136c2257d464894b308eba16bf95e647ac15" [label="copy{src=/js/custom.js, dest=/home/jovyan/.jupyter/custom/custom.js}" shape="note"];
  "sha256:8e9d4f174fc4edb5a0086b616f690a80a93b6d7f84695ff63a1d8f465b2cbb89" [label="/bin/sh -c jupyter trust ${HOME}/*.ipynb" shape="box"];
  "sha256:69bc62ed68696f4c68baecd2c126a8988c16c757d58b63dba444333c71c93a9c" [label="sha256:69bc62ed68696f4c68baecd2c126a8988c16c757d58b63dba444333c71c93a9c" shape="plaintext"];
  "sha256:56e7154efa8c0612a35e54c31f156784c9444b0894a1399b23a162bcfb792f4e" -> "sha256:86cf08d56802532d598ec48f664dc22d0ea72ad5a18442a75901ab9c25e197d2" [label=""];
  "sha256:1e71746e02371b61079515ec9f465f5596bfe4e9ddd74773cbc5f65f55c65068" -> "sha256:86cf08d56802532d598ec48f664dc22d0ea72ad5a18442a75901ab9c25e197d2" [label=""];
  "sha256:86cf08d56802532d598ec48f664dc22d0ea72ad5a18442a75901ab9c25e197d2" -> "sha256:9e6ad22aa0b169e663a2b3709d692fae73d831ae7c4555378a4a5b2fc75b9e87" [label=""];
  "sha256:9e6ad22aa0b169e663a2b3709d692fae73d831ae7c4555378a4a5b2fc75b9e87" -> "sha256:63466b0f1f7ff95e117005c7a3a98eee6e6ed4a3d451abd187a1f708d10e1a6d" [label=""];
  "sha256:1e71746e02371b61079515ec9f465f5596bfe4e9ddd74773cbc5f65f55c65068" -> "sha256:63466b0f1f7ff95e117005c7a3a98eee6e6ed4a3d451abd187a1f708d10e1a6d" [label=""];
  "sha256:63466b0f1f7ff95e117005c7a3a98eee6e6ed4a3d451abd187a1f708d10e1a6d" -> "sha256:29512693eab4b22acd5f65723a17136c2257d464894b308eba16bf95e647ac15" [label=""];
  "sha256:1e71746e02371b61079515ec9f465f5596bfe4e9ddd74773cbc5f65f55c65068" -> "sha256:29512693eab4b22acd5f65723a17136c2257d464894b308eba16bf95e647ac15" [label=""];
  "sha256:29512693eab4b22acd5f65723a17136c2257d464894b308eba16bf95e647ac15" -> "sha256:8e9d4f174fc4edb5a0086b616f690a80a93b6d7f84695ff63a1d8f465b2cbb89" [label=""];
  "sha256:8e9d4f174fc4edb5a0086b616f690a80a93b6d7f84695ff63a1d8f465b2cbb89" -> "sha256:69bc62ed68696f4c68baecd2c126a8988c16c757d58b63dba444333c71c93a9c" [label=""];
}

