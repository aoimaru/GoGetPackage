[app/sources/335354766.Dockerfile]
digraph {
  "sha256:0e11de520be654bab925246b9a1e27c712c65f18e631541adac7b768b864df0c" [label="docker-image://docker.io/library/python:3.6-alpine3.7" shape="ellipse"];
  "sha256:5415374443ba84f2004ffc73f1d869ac9ab9ad37b9753f885958d802e268a98e" [label="/bin/sh -c apk add --update tini" shape="box"];
  "sha256:784e7547aae1bdb14bf202e789b77a2758e0acbceb965dc7590d3b55aab8d0bc" [label="/bin/sh -c apk add --update git" shape="box"];
  "sha256:1dd37805b8f1e89e1015edb8abd8469c3b2d3d94a8b103abac40bfa18de98376" [label="/bin/sh -c apk add --update build-base" shape="box"];
  "sha256:da8052edc4ba45763a680e588e370fd985f0dca85e4de2ff9a6f08a7a9f1e9e6" [label="/bin/sh -c apk add --update gcc" shape="box"];
  "sha256:a1e1fea4ff3f5f65be4e2a1fd1e9340968782ad7099eb35d9bb570187f832659" [label="/bin/sh -c apk add --update cmake" shape="box"];
  "sha256:0b0ce31e010342bf76553560fb04f5b5e5d4cce56f4707f72fece708db000e56" [label="/bin/sh -c apk add --update autoconf" shape="box"];
  "sha256:4d9be24e6d3e067f17f43d8b7104ed307ca04f9e2bfe083116f6890f766ceadf" [label="/bin/sh -c apk add --update automake" shape="box"];
  "sha256:51eb24cd2c6473de5d25d77187ef3783861504d01372599cba7fb2b7bafae193" [label="/bin/sh -c apk add --update libtool" shape="box"];
  "sha256:c0964b8cd972ed9805319cbc585cba49c4142c12e9a6a24378d780f407f731e6" [label="sha256:c0964b8cd972ed9805319cbc585cba49c4142c12e9a6a24378d780f407f731e6" shape="plaintext"];
  "sha256:0e11de520be654bab925246b9a1e27c712c65f18e631541adac7b768b864df0c" -> "sha256:5415374443ba84f2004ffc73f1d869ac9ab9ad37b9753f885958d802e268a98e" [label=""];
  "sha256:5415374443ba84f2004ffc73f1d869ac9ab9ad37b9753f885958d802e268a98e" -> "sha256:784e7547aae1bdb14bf202e789b77a2758e0acbceb965dc7590d3b55aab8d0bc" [label=""];
  "sha256:784e7547aae1bdb14bf202e789b77a2758e0acbceb965dc7590d3b55aab8d0bc" -> "sha256:1dd37805b8f1e89e1015edb8abd8469c3b2d3d94a8b103abac40bfa18de98376" [label=""];
  "sha256:1dd37805b8f1e89e1015edb8abd8469c3b2d3d94a8b103abac40bfa18de98376" -> "sha256:da8052edc4ba45763a680e588e370fd985f0dca85e4de2ff9a6f08a7a9f1e9e6" [label=""];
  "sha256:da8052edc4ba45763a680e588e370fd985f0dca85e4de2ff9a6f08a7a9f1e9e6" -> "sha256:a1e1fea4ff3f5f65be4e2a1fd1e9340968782ad7099eb35d9bb570187f832659" [label=""];
  "sha256:a1e1fea4ff3f5f65be4e2a1fd1e9340968782ad7099eb35d9bb570187f832659" -> "sha256:0b0ce31e010342bf76553560fb04f5b5e5d4cce56f4707f72fece708db000e56" [label=""];
  "sha256:0b0ce31e010342bf76553560fb04f5b5e5d4cce56f4707f72fece708db000e56" -> "sha256:4d9be24e6d3e067f17f43d8b7104ed307ca04f9e2bfe083116f6890f766ceadf" [label=""];
  "sha256:4d9be24e6d3e067f17f43d8b7104ed307ca04f9e2bfe083116f6890f766ceadf" -> "sha256:51eb24cd2c6473de5d25d77187ef3783861504d01372599cba7fb2b7bafae193" [label=""];
  "sha256:51eb24cd2c6473de5d25d77187ef3783861504d01372599cba7fb2b7bafae193" -> "sha256:c0964b8cd972ed9805319cbc585cba49c4142c12e9a6a24378d780f407f731e6" [label=""];
}

