[app/sources/435771320.Dockerfile]
digraph {
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" [label="docker-image://docker.io/library/node:latest" shape="ellipse"];
  "sha256:6b935e82e6fb875dc9a723c187f8874a84abc02e6106583a21debe7a39c285be" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:a09cede4070ae1d07518a048a0ce8aff2e1d6eb9e167310e6932a2de9b2e4983" [label="local://context" shape="ellipse"];
  "sha256:d6f1efa11d6599e0e7793e07c832f20ed0f9a720aa5be03c8a322f9d01daa749" [label="copy{src=/server/package*.json, dest=/usr/src/app/}" shape="note"];
  "sha256:03190035a2520cdcf84733a2c707041cb5f92cf0c190833f5150f6cf6fb0fa53" [label="/bin/sh -c npm install" shape="box"];
  "sha256:4c98868b860fe58129b3e54969770c2160dbc3cc2c7cceab20a166e4a9b94bc1" [label="/bin/sh -c npm i -g nodemon" shape="box"];
  "sha256:bfa454a1b5eec3c5e75ed36181187829187364e7b9c9851ae858b8d4eccde9af" [label="copy{src=/server, dest=/usr/src/app/}" shape="note"];
  "sha256:72f91b8cf9464270df9af050553e482be2006ab874267da8322181304cf4a38a" [label="/bin/sh -c cd .. && mkdir bin" shape="box"];
  "sha256:eedc569b4e2b5293f30a59ff697ad03a12c72f5fa64d9a8557a0cab3f7b6e884" [label="copy{src=/docker/bin/wait-for-it.sh, dest=/usr/src/bin}" shape="note"];
  "sha256:d12d70458ed4186082d4ac09b7f7027253850bde7aee2e8e52e8f0641de73ad4" [label="chmod +x ../bin/wait-for-it.sh" shape="box"];
  "sha256:406dc33d962862227ddf158b77ada6126bf492f96d232d2ba117f4a5fbf69267" [label="sha256:406dc33d962862227ddf158b77ada6126bf492f96d232d2ba117f4a5fbf69267" shape="plaintext"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" -> "sha256:6b935e82e6fb875dc9a723c187f8874a84abc02e6106583a21debe7a39c285be" [label=""];
  "sha256:6b935e82e6fb875dc9a723c187f8874a84abc02e6106583a21debe7a39c285be" -> "sha256:d6f1efa11d6599e0e7793e07c832f20ed0f9a720aa5be03c8a322f9d01daa749" [label=""];
  "sha256:a09cede4070ae1d07518a048a0ce8aff2e1d6eb9e167310e6932a2de9b2e4983" -> "sha256:d6f1efa11d6599e0e7793e07c832f20ed0f9a720aa5be03c8a322f9d01daa749" [label=""];
  "sha256:d6f1efa11d6599e0e7793e07c832f20ed0f9a720aa5be03c8a322f9d01daa749" -> "sha256:03190035a2520cdcf84733a2c707041cb5f92cf0c190833f5150f6cf6fb0fa53" [label=""];
  "sha256:03190035a2520cdcf84733a2c707041cb5f92cf0c190833f5150f6cf6fb0fa53" -> "sha256:4c98868b860fe58129b3e54969770c2160dbc3cc2c7cceab20a166e4a9b94bc1" [label=""];
  "sha256:4c98868b860fe58129b3e54969770c2160dbc3cc2c7cceab20a166e4a9b94bc1" -> "sha256:bfa454a1b5eec3c5e75ed36181187829187364e7b9c9851ae858b8d4eccde9af" [label=""];
  "sha256:a09cede4070ae1d07518a048a0ce8aff2e1d6eb9e167310e6932a2de9b2e4983" -> "sha256:bfa454a1b5eec3c5e75ed36181187829187364e7b9c9851ae858b8d4eccde9af" [label=""];
  "sha256:bfa454a1b5eec3c5e75ed36181187829187364e7b9c9851ae858b8d4eccde9af" -> "sha256:72f91b8cf9464270df9af050553e482be2006ab874267da8322181304cf4a38a" [label=""];
  "sha256:72f91b8cf9464270df9af050553e482be2006ab874267da8322181304cf4a38a" -> "sha256:eedc569b4e2b5293f30a59ff697ad03a12c72f5fa64d9a8557a0cab3f7b6e884" [label=""];
  "sha256:a09cede4070ae1d07518a048a0ce8aff2e1d6eb9e167310e6932a2de9b2e4983" -> "sha256:eedc569b4e2b5293f30a59ff697ad03a12c72f5fa64d9a8557a0cab3f7b6e884" [label=""];
  "sha256:eedc569b4e2b5293f30a59ff697ad03a12c72f5fa64d9a8557a0cab3f7b6e884" -> "sha256:d12d70458ed4186082d4ac09b7f7027253850bde7aee2e8e52e8f0641de73ad4" [label=""];
  "sha256:d12d70458ed4186082d4ac09b7f7027253850bde7aee2e8e52e8f0641de73ad4" -> "sha256:406dc33d962862227ddf158b77ada6126bf492f96d232d2ba117f4a5fbf69267" [label=""];
}

