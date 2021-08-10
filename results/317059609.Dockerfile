[app/sources/317059609.Dockerfile]
digraph {
  "sha256:7997ead0267fe831acdd05d5fa5a571cb20d6e522cfd447e5453494215de6fe1" [label="docker-image://docker.io/library/node:10-alpine" shape="ellipse"];
  "sha256:fcd44bd80d56b46ce18e8e5cd7c1c79d0b2d5b31fd5c6fee20b761d17b75a882" [label="mkdir{path=/src}" shape="note"];
  "sha256:b8638a4eb911439ed4f6fdb082e8427d81f77a11a8402a46e2609828b6d1941b" [label="local://context" shape="ellipse"];
  "sha256:b8bc80e9aac7ae165ad6cb1138e544ee3153c6347fc454d1e67b23f305c25b26" [label="copy{src=/yarn.lock, dest=/src/},copy{src=/package.json, dest=/src/}" shape="note"];
  "sha256:e9ddc9dec9fcb585582081f68c94edd3a5cc5d559ced16aa329ae3a8305e7cb6" [label="/bin/sh -c yarn" shape="box"];
  "sha256:b073876a7fc9ee0ecc428eb070c9c9d68c1997562b43cbfc46f422eeab6a0911" [label="copy{src=/, dest=/src}" shape="note"];
  "sha256:590f3bdf7444cd8a0dc4362b345efbb47a8e09555d4c448e832175758937f55e" [label="sha256:590f3bdf7444cd8a0dc4362b345efbb47a8e09555d4c448e832175758937f55e" shape="plaintext"];
  "sha256:7997ead0267fe831acdd05d5fa5a571cb20d6e522cfd447e5453494215de6fe1" -> "sha256:fcd44bd80d56b46ce18e8e5cd7c1c79d0b2d5b31fd5c6fee20b761d17b75a882" [label=""];
  "sha256:fcd44bd80d56b46ce18e8e5cd7c1c79d0b2d5b31fd5c6fee20b761d17b75a882" -> "sha256:b8bc80e9aac7ae165ad6cb1138e544ee3153c6347fc454d1e67b23f305c25b26" [label=""];
  "sha256:b8638a4eb911439ed4f6fdb082e8427d81f77a11a8402a46e2609828b6d1941b" -> "sha256:b8bc80e9aac7ae165ad6cb1138e544ee3153c6347fc454d1e67b23f305c25b26" [label=""];
  "sha256:b8bc80e9aac7ae165ad6cb1138e544ee3153c6347fc454d1e67b23f305c25b26" -> "sha256:e9ddc9dec9fcb585582081f68c94edd3a5cc5d559ced16aa329ae3a8305e7cb6" [label=""];
  "sha256:e9ddc9dec9fcb585582081f68c94edd3a5cc5d559ced16aa329ae3a8305e7cb6" -> "sha256:b073876a7fc9ee0ecc428eb070c9c9d68c1997562b43cbfc46f422eeab6a0911" [label=""];
  "sha256:b8638a4eb911439ed4f6fdb082e8427d81f77a11a8402a46e2609828b6d1941b" -> "sha256:b073876a7fc9ee0ecc428eb070c9c9d68c1997562b43cbfc46f422eeab6a0911" [label=""];
  "sha256:b073876a7fc9ee0ecc428eb070c9c9d68c1997562b43cbfc46f422eeab6a0911" -> "sha256:590f3bdf7444cd8a0dc4362b345efbb47a8e09555d4c448e832175758937f55e" [label=""];
}

