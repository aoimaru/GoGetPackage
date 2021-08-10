[app/sources/252765519.Dockerfile]
digraph {
  "sha256:588d85221083631acba641690ef562572381299bb3906afee9e62f0052721460" [label="docker-image://docker.io/library/golang:1.6.0-alpine" shape="ellipse"];
  "sha256:b65de35e8557fb64d7f9127259cf4e30b7a73793d7d9bfa1f551bc3af9703abc" [label="/bin/sh -c apk add --update git" shape="box"];
  "sha256:68d5ec9d78f570478fb2a91b9f5121729340010e81918c260705f17bed5d57d6" [label="/bin/sh -c go get github.com/opencontrol/compliance-masonry" shape="box"];
  "sha256:ffc2b63d7023102f1f50fbed84eac9376af653ebd99577cb9b24eed8ca47c051" [label="mkdir{path=/code}" shape="note"];
  "sha256:1f8321028ead43ad4b66f8d98c5ed5437caebc346a11c04265d92b3858b7a7a4" [label="sha256:1f8321028ead43ad4b66f8d98c5ed5437caebc346a11c04265d92b3858b7a7a4" shape="plaintext"];
  "sha256:588d85221083631acba641690ef562572381299bb3906afee9e62f0052721460" -> "sha256:b65de35e8557fb64d7f9127259cf4e30b7a73793d7d9bfa1f551bc3af9703abc" [label=""];
  "sha256:b65de35e8557fb64d7f9127259cf4e30b7a73793d7d9bfa1f551bc3af9703abc" -> "sha256:68d5ec9d78f570478fb2a91b9f5121729340010e81918c260705f17bed5d57d6" [label=""];
  "sha256:68d5ec9d78f570478fb2a91b9f5121729340010e81918c260705f17bed5d57d6" -> "sha256:ffc2b63d7023102f1f50fbed84eac9376af653ebd99577cb9b24eed8ca47c051" [label=""];
  "sha256:ffc2b63d7023102f1f50fbed84eac9376af653ebd99577cb9b24eed8ca47c051" -> "sha256:1f8321028ead43ad4b66f8d98c5ed5437caebc346a11c04265d92b3858b7a7a4" [label=""];
}

