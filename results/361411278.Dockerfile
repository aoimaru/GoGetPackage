[app/sources/361411278.Dockerfile]
digraph {
  "sha256:84e0d76a916a2a3cdcd616c815ba83581e08f4f5ed6068d3816af23f45c008d8" [label="docker-image://docker.io/library/golang:1.12" shape="ellipse"];
  "sha256:9a3df08417b62198c981d517f393417d218dc82af19acd04f6bee6232d50d2b2" [label="/bin/sh -c apt update && apt install pcregrep && apt clean" shape="box"];
  "sha256:66a4a0ee7d8fabc933ad07d1e798f9892a7e9c31e9be4ecb19c798a0ff44d917" [label="mkdir{path=/cothority}" shape="note"];
  "sha256:4af71a5a5d92df6c163b42552d82d6eb8bbd2055b516e56eba98dd5737232a5d" [label="sha256:4af71a5a5d92df6c163b42552d82d6eb8bbd2055b516e56eba98dd5737232a5d" shape="plaintext"];
  "sha256:84e0d76a916a2a3cdcd616c815ba83581e08f4f5ed6068d3816af23f45c008d8" -> "sha256:9a3df08417b62198c981d517f393417d218dc82af19acd04f6bee6232d50d2b2" [label=""];
  "sha256:9a3df08417b62198c981d517f393417d218dc82af19acd04f6bee6232d50d2b2" -> "sha256:66a4a0ee7d8fabc933ad07d1e798f9892a7e9c31e9be4ecb19c798a0ff44d917" [label=""];
  "sha256:66a4a0ee7d8fabc933ad07d1e798f9892a7e9c31e9be4ecb19c798a0ff44d917" -> "sha256:4af71a5a5d92df6c163b42552d82d6eb8bbd2055b516e56eba98dd5737232a5d" [label=""];
}

