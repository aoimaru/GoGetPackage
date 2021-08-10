[app/sources/129342834.Dockerfile]
digraph {
  "sha256:eb308923b6316a78cdcbcbeee88176ed49f94037a2cba49ccf7a9de96ff6deea" [label="local://context" shape="ellipse"];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" [label="docker-image://docker.io/library/alpine:3.9" shape="ellipse"];
  "sha256:e48c6928290c9cd348ef20cc2601f4c4ed3a512af1bd8e73200f25458b034d35" [label="/bin/sh -c apk add ca-certificates" shape="box"];
  "sha256:432eb6ba08b719d5fb4f60fa333a36a72387fe806e103de4f838ff493014beb4" [label="/bin/sh -c apk add git" shape="box"];
  "sha256:c208e778889b2148013f147d2b61b220762c41853bbf7c061d54ea4565ce5a6f" [label="mkdir{path=/npmfs}" shape="note"];
  "sha256:fc8f7a5a931404bb996ee93e11e03292efdfdf9a150192d59616c38f4796d934" [label="docker-image://docker.io/library/golang:1.12-alpine" shape="ellipse"];
  "sha256:c4f000457255f0211229f79ad31b58f117cb4348b4a5b2edbe034dbe89d4fede" [label="/bin/sh -c apk add git" shape="box"];
  "sha256:9acc3c8262bb223108ad9fbf292bb591c54605281736e7fbe7bdd9385d56d901" [label="mkdir{path=/npmfs}" shape="note"];
  "sha256:dc97507ff3aad192b81455e2b82aa3b3d011c492293b04af6c7696d18b9dff84" [label="copy{src=/, dest=/npmfs/}" shape="note"];
  "sha256:c002083d47d66c59f288d6a4517a22d34e1d67a8b7f45fb66cb4458e195ac870" [label="/bin/sh -c go build -o website ." shape="box"];
  "sha256:9cdd4e1a33d639c07b11f7c092090031a4b7946736b2236a17984022c0e9dee0" [label="copy{src=/npmfs/website, dest=/npmfs/}" shape="note"];
  "sha256:fe32eb4649e91471c18870cbcd126dda477876f1d34f4d8134b1bacdfeb2f755" [label="copy{src=/assets, dest=/npmfs/assets}" shape="note"];
  "sha256:3dfb4dc9bde1504689a6792cacd091523288d646d30638372ebdb94335af3204" [label="copy{src=/templates, dest=/npmfs/templates}" shape="note"];
  "sha256:98b496b0965522fbf092a63cef422b1ce8434a95caaf62aef2b719274257a7e0" [label="sha256:98b496b0965522fbf092a63cef422b1ce8434a95caaf62aef2b719274257a7e0" shape="plaintext"];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" -> "sha256:e48c6928290c9cd348ef20cc2601f4c4ed3a512af1bd8e73200f25458b034d35" [label=""];
  "sha256:e48c6928290c9cd348ef20cc2601f4c4ed3a512af1bd8e73200f25458b034d35" -> "sha256:432eb6ba08b719d5fb4f60fa333a36a72387fe806e103de4f838ff493014beb4" [label=""];
  "sha256:432eb6ba08b719d5fb4f60fa333a36a72387fe806e103de4f838ff493014beb4" -> "sha256:c208e778889b2148013f147d2b61b220762c41853bbf7c061d54ea4565ce5a6f" [label=""];
  "sha256:fc8f7a5a931404bb996ee93e11e03292efdfdf9a150192d59616c38f4796d934" -> "sha256:c4f000457255f0211229f79ad31b58f117cb4348b4a5b2edbe034dbe89d4fede" [label=""];
  "sha256:c4f000457255f0211229f79ad31b58f117cb4348b4a5b2edbe034dbe89d4fede" -> "sha256:9acc3c8262bb223108ad9fbf292bb591c54605281736e7fbe7bdd9385d56d901" [label=""];
  "sha256:9acc3c8262bb223108ad9fbf292bb591c54605281736e7fbe7bdd9385d56d901" -> "sha256:dc97507ff3aad192b81455e2b82aa3b3d011c492293b04af6c7696d18b9dff84" [label=""];
  "sha256:eb308923b6316a78cdcbcbeee88176ed49f94037a2cba49ccf7a9de96ff6deea" -> "sha256:dc97507ff3aad192b81455e2b82aa3b3d011c492293b04af6c7696d18b9dff84" [label=""];
  "sha256:dc97507ff3aad192b81455e2b82aa3b3d011c492293b04af6c7696d18b9dff84" -> "sha256:c002083d47d66c59f288d6a4517a22d34e1d67a8b7f45fb66cb4458e195ac870" [label=""];
  "sha256:c208e778889b2148013f147d2b61b220762c41853bbf7c061d54ea4565ce5a6f" -> "sha256:9cdd4e1a33d639c07b11f7c092090031a4b7946736b2236a17984022c0e9dee0" [label=""];
  "sha256:c002083d47d66c59f288d6a4517a22d34e1d67a8b7f45fb66cb4458e195ac870" -> "sha256:9cdd4e1a33d639c07b11f7c092090031a4b7946736b2236a17984022c0e9dee0" [label=""];
  "sha256:9cdd4e1a33d639c07b11f7c092090031a4b7946736b2236a17984022c0e9dee0" -> "sha256:fe32eb4649e91471c18870cbcd126dda477876f1d34f4d8134b1bacdfeb2f755" [label=""];
  "sha256:eb308923b6316a78cdcbcbeee88176ed49f94037a2cba49ccf7a9de96ff6deea" -> "sha256:fe32eb4649e91471c18870cbcd126dda477876f1d34f4d8134b1bacdfeb2f755" [label=""];
  "sha256:fe32eb4649e91471c18870cbcd126dda477876f1d34f4d8134b1bacdfeb2f755" -> "sha256:3dfb4dc9bde1504689a6792cacd091523288d646d30638372ebdb94335af3204" [label=""];
  "sha256:eb308923b6316a78cdcbcbeee88176ed49f94037a2cba49ccf7a9de96ff6deea" -> "sha256:3dfb4dc9bde1504689a6792cacd091523288d646d30638372ebdb94335af3204" [label=""];
  "sha256:3dfb4dc9bde1504689a6792cacd091523288d646d30638372ebdb94335af3204" -> "sha256:98b496b0965522fbf092a63cef422b1ce8434a95caaf62aef2b719274257a7e0" [label=""];
}

