[app/sources/278362097.Dockerfile]
digraph {
  "sha256:0560e139c8ac82e55e88e85d798ba249bf4321ba1b15f4bb0ed57de8d85ec4c0" [label="docker-image://docker.io/risingstack/alpine:3.4-v8.5.0-4.7.0" shape="ellipse"];
  "sha256:16335f307d519c3ce4e7af39e573ae3d35783578f6074fd93b1c38b7ef46089a" [label="local://context" shape="ellipse"];
  "sha256:353368b9caddc79676617be77beb13659d52a63986a7ef9b89e52aa1c7362de8" [label="copy{src=/package.json, dest=/package.json}" shape="note"];
  "sha256:62b2fdce932eb62d35a856525515198c1be45189aaf75a6d1997bfa78284a3b7" [label="/bin/sh -c npm install" shape="box"];
  "sha256:09a29d6d1022ff9a307e63edc6521bf824d204893c934e7efa3f117c8d01f320" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:ad7f7c651cfe03ebe9bb557978518132d96e56dfa42d06e57c3fcc25c17bc777" [label="sha256:ad7f7c651cfe03ebe9bb557978518132d96e56dfa42d06e57c3fcc25c17bc777" shape="plaintext"];
  "sha256:0560e139c8ac82e55e88e85d798ba249bf4321ba1b15f4bb0ed57de8d85ec4c0" -> "sha256:353368b9caddc79676617be77beb13659d52a63986a7ef9b89e52aa1c7362de8" [label=""];
  "sha256:16335f307d519c3ce4e7af39e573ae3d35783578f6074fd93b1c38b7ef46089a" -> "sha256:353368b9caddc79676617be77beb13659d52a63986a7ef9b89e52aa1c7362de8" [label=""];
  "sha256:353368b9caddc79676617be77beb13659d52a63986a7ef9b89e52aa1c7362de8" -> "sha256:62b2fdce932eb62d35a856525515198c1be45189aaf75a6d1997bfa78284a3b7" [label=""];
  "sha256:62b2fdce932eb62d35a856525515198c1be45189aaf75a6d1997bfa78284a3b7" -> "sha256:09a29d6d1022ff9a307e63edc6521bf824d204893c934e7efa3f117c8d01f320" [label=""];
  "sha256:16335f307d519c3ce4e7af39e573ae3d35783578f6074fd93b1c38b7ef46089a" -> "sha256:09a29d6d1022ff9a307e63edc6521bf824d204893c934e7efa3f117c8d01f320" [label=""];
  "sha256:09a29d6d1022ff9a307e63edc6521bf824d204893c934e7efa3f117c8d01f320" -> "sha256:ad7f7c651cfe03ebe9bb557978518132d96e56dfa42d06e57c3fcc25c17bc777" [label=""];
}

