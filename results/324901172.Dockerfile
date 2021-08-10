[app/sources/324901172.Dockerfile]
digraph {
  "sha256:05dea8382deb06eb8d79a44d1434cd143895c762e22827505765c81cebc96f8b" [label="docker-image://docker.io/keymetrics/pm2:8-stretch@sha256:7b3406a703ec03b6f3438237193bf789efcf82966afe02e2978039de214633ed" shape="ellipse"];
  "sha256:c5e4c4a0be707c8aca0c0cb62296b37ad96099794de831363ffae31ec56dcb9f" [label="/bin/sh -c apt-get -yqq update &&     apt-get -yqq upgrade &&     apt-get -yqq install libboost-all-dev libsodium-dev" shape="box"];
  "sha256:58f170cf9dc182bef1292340a3283e9feaf2b8edc5de39c192d0e48afaa4a34f" [label="/bin/sh -c apt-get -yqq install vim git zsh tmux silversearcher-ag &&     curl -Lo- http://bit.ly/2pztvLf | bash" shape="box"];
  "sha256:08e1b2fcbc865cc1f4e561a57ea42df270e4d377c3c8d97ece3710085eedaf98" [label="sha256:08e1b2fcbc865cc1f4e561a57ea42df270e4d377c3c8d97ece3710085eedaf98" shape="plaintext"];
  "sha256:05dea8382deb06eb8d79a44d1434cd143895c762e22827505765c81cebc96f8b" -> "sha256:c5e4c4a0be707c8aca0c0cb62296b37ad96099794de831363ffae31ec56dcb9f" [label=""];
  "sha256:c5e4c4a0be707c8aca0c0cb62296b37ad96099794de831363ffae31ec56dcb9f" -> "sha256:58f170cf9dc182bef1292340a3283e9feaf2b8edc5de39c192d0e48afaa4a34f" [label=""];
  "sha256:58f170cf9dc182bef1292340a3283e9feaf2b8edc5de39c192d0e48afaa4a34f" -> "sha256:08e1b2fcbc865cc1f4e561a57ea42df270e4d377c3c8d97ece3710085eedaf98" [label=""];
}

