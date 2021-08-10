[app/sources/335000046.Dockerfile]
digraph {
  "sha256:e04ad0b393d8db3de2dc0e9a2b0a83c9e58a7908ac46c2e50f51f88b47b4241b" [label="docker-image://docker.io/library/node:9-slim" shape="ellipse"];
  "sha256:85b709cdfaadecd4e22a195cfe08257ae541788a78e98a6ac636abc22b42eedc" [label="docker-image://docker.io/library/node:9" shape="ellipse"];
  "sha256:210bdbe4f683c3349db806f824da32554891c231415ba05f8e7e005a4a136b9b" [label="mkdir{path=/srv}" shape="note"];
  "sha256:fa383817fdfb8d69efbf2be183c7391c548fff6f65fd6017b6afcd08db69bc0a" [label="local://context" shape="ellipse"];
  "sha256:2671f29c8c1ba41f5a9438424e4c416e34d7506e692bfb3b3349ff2eac25c864" [label="copy{src=/package.json, dest=/srv/}" shape="note"];
  "sha256:97c369b2d0c85c0df9f142029bb9fdda21718de62853ea25bf5fdf0a41d659fa" [label="/bin/sh -c npm install" shape="box"];
  "sha256:73122124f4445ec06d37ea45175f8bc525f84cc69cf1c31e89390e923b2a5ecd" [label="copy{src=/srv, dest=/}" shape="note"];
  "sha256:85205eb960d9c5dd14c4fa9b1d4076e0f0de1ddf5ccdd80ae6160d76d364591b" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:df69c6b3c90e23854e972b7309a64aad876a516df1f91cac83c104ca52643f61" [label="sha256:df69c6b3c90e23854e972b7309a64aad876a516df1f91cac83c104ca52643f61" shape="plaintext"];
  "sha256:85b709cdfaadecd4e22a195cfe08257ae541788a78e98a6ac636abc22b42eedc" -> "sha256:210bdbe4f683c3349db806f824da32554891c231415ba05f8e7e005a4a136b9b" [label=""];
  "sha256:210bdbe4f683c3349db806f824da32554891c231415ba05f8e7e005a4a136b9b" -> "sha256:2671f29c8c1ba41f5a9438424e4c416e34d7506e692bfb3b3349ff2eac25c864" [label=""];
  "sha256:fa383817fdfb8d69efbf2be183c7391c548fff6f65fd6017b6afcd08db69bc0a" -> "sha256:2671f29c8c1ba41f5a9438424e4c416e34d7506e692bfb3b3349ff2eac25c864" [label=""];
  "sha256:2671f29c8c1ba41f5a9438424e4c416e34d7506e692bfb3b3349ff2eac25c864" -> "sha256:97c369b2d0c85c0df9f142029bb9fdda21718de62853ea25bf5fdf0a41d659fa" [label=""];
  "sha256:e04ad0b393d8db3de2dc0e9a2b0a83c9e58a7908ac46c2e50f51f88b47b4241b" -> "sha256:73122124f4445ec06d37ea45175f8bc525f84cc69cf1c31e89390e923b2a5ecd" [label=""];
  "sha256:97c369b2d0c85c0df9f142029bb9fdda21718de62853ea25bf5fdf0a41d659fa" -> "sha256:73122124f4445ec06d37ea45175f8bc525f84cc69cf1c31e89390e923b2a5ecd" [label=""];
  "sha256:73122124f4445ec06d37ea45175f8bc525f84cc69cf1c31e89390e923b2a5ecd" -> "sha256:85205eb960d9c5dd14c4fa9b1d4076e0f0de1ddf5ccdd80ae6160d76d364591b" [label=""];
  "sha256:fa383817fdfb8d69efbf2be183c7391c548fff6f65fd6017b6afcd08db69bc0a" -> "sha256:85205eb960d9c5dd14c4fa9b1d4076e0f0de1ddf5ccdd80ae6160d76d364591b" [label=""];
  "sha256:85205eb960d9c5dd14c4fa9b1d4076e0f0de1ddf5ccdd80ae6160d76d364591b" -> "sha256:df69c6b3c90e23854e972b7309a64aad876a516df1f91cac83c104ca52643f61" [label=""];
}

