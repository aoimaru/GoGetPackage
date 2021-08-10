[app/sources/249900724.Dockerfile]
digraph {
  "sha256:9c0f10bbb79e89e95fb7e60164485ee1a02f9a4e0c5d5d092838ebcf434d5475" [label="docker-image://docker.io/library/node:4.5" shape="ellipse"];
  "sha256:4a51565c69fa6e0a2a6a3a4c072699dc17d0ec083ce8e06432e42fe474deb444" [label="/bin/sh -c npm i -g npm@3" shape="box"];
  "sha256:b7a3f75bee421a91873e05c20999de6a750f19d8e0b9214d7c6892e9abfb2a14" [label="/bin/sh -c mkdir -p $DIR" shape="box"];
  "sha256:fefc18efbcae88751bd21a472895a61f2ccaa3d192d271b28134e1fa1f989df8" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:d77acd1072975c3bdd73600042cedaa7941f6c6b46958f866a6bcc9fd379d27a" [label="local://context" shape="ellipse"];
  "sha256:bc29a3bb140f4b7599f240799847a17ab6205c119726e207e1c79db3442b4c02" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:cdaf83e58339c9bddab28daec8d35891e94835f94bc48712e93b8863752b5c68" [label="/bin/sh -c npm install" shape="box"];
  "sha256:b702135cb02edd16ff358410de178c6f37db9d008cb6313ef019ffc64fd78c30" [label="/bin/sh -c $DIR/node_modules/.bin/gulp build" shape="box"];
  "sha256:1f9b407cf77cbb8cfa84e12ede1da80e008e33121e0bcdd08b9361f757c719f4" [label="sha256:1f9b407cf77cbb8cfa84e12ede1da80e008e33121e0bcdd08b9361f757c719f4" shape="plaintext"];
  "sha256:9c0f10bbb79e89e95fb7e60164485ee1a02f9a4e0c5d5d092838ebcf434d5475" -> "sha256:4a51565c69fa6e0a2a6a3a4c072699dc17d0ec083ce8e06432e42fe474deb444" [label=""];
  "sha256:4a51565c69fa6e0a2a6a3a4c072699dc17d0ec083ce8e06432e42fe474deb444" -> "sha256:b7a3f75bee421a91873e05c20999de6a750f19d8e0b9214d7c6892e9abfb2a14" [label=""];
  "sha256:b7a3f75bee421a91873e05c20999de6a750f19d8e0b9214d7c6892e9abfb2a14" -> "sha256:fefc18efbcae88751bd21a472895a61f2ccaa3d192d271b28134e1fa1f989df8" [label=""];
  "sha256:fefc18efbcae88751bd21a472895a61f2ccaa3d192d271b28134e1fa1f989df8" -> "sha256:bc29a3bb140f4b7599f240799847a17ab6205c119726e207e1c79db3442b4c02" [label=""];
  "sha256:d77acd1072975c3bdd73600042cedaa7941f6c6b46958f866a6bcc9fd379d27a" -> "sha256:bc29a3bb140f4b7599f240799847a17ab6205c119726e207e1c79db3442b4c02" [label=""];
  "sha256:bc29a3bb140f4b7599f240799847a17ab6205c119726e207e1c79db3442b4c02" -> "sha256:cdaf83e58339c9bddab28daec8d35891e94835f94bc48712e93b8863752b5c68" [label=""];
  "sha256:cdaf83e58339c9bddab28daec8d35891e94835f94bc48712e93b8863752b5c68" -> "sha256:b702135cb02edd16ff358410de178c6f37db9d008cb6313ef019ffc64fd78c30" [label=""];
  "sha256:b702135cb02edd16ff358410de178c6f37db9d008cb6313ef019ffc64fd78c30" -> "sha256:1f9b407cf77cbb8cfa84e12ede1da80e008e33121e0bcdd08b9361f757c719f4" [label=""];
}

