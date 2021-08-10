[app/sources/482029557.Dockerfile]
digraph {
  "sha256:7077218447266e5a704d22d47e5ff0136a5ec7d0c4ddd8118f56ad15e12a53c5" [label="local://context" shape="ellipse"];
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" [label="docker-image://docker.io/library/ubuntu:bionic" shape="ellipse"];
  "sha256:532abe997e2d426456e7b80c281ff13f4cbab3424392edc07c3f68d5c125e7ec" [label="copy{src=/conf/solr/crawldb, dest=/crawldb}" shape="note"];
  "sha256:faae43f1b4f663d91ab27a8510f7b600516436f6f4bd03736bdca777ea22644b" [label="mkdir /solr" shape="box"];
  "sha256:7a4a086cd9ae6dec12506f455f51e43131905a303a265e48a9fb6a0c5d644d3e" [label="sha256:7a4a086cd9ae6dec12506f455f51e43131905a303a265e48a9fb6a0c5d644d3e" shape="plaintext"];
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" -> "sha256:532abe997e2d426456e7b80c281ff13f4cbab3424392edc07c3f68d5c125e7ec" [label=""];
  "sha256:7077218447266e5a704d22d47e5ff0136a5ec7d0c4ddd8118f56ad15e12a53c5" -> "sha256:532abe997e2d426456e7b80c281ff13f4cbab3424392edc07c3f68d5c125e7ec" [label=""];
  "sha256:532abe997e2d426456e7b80c281ff13f4cbab3424392edc07c3f68d5c125e7ec" -> "sha256:faae43f1b4f663d91ab27a8510f7b600516436f6f4bd03736bdca777ea22644b" [label=""];
  "sha256:faae43f1b4f663d91ab27a8510f7b600516436f6f4bd03736bdca777ea22644b" -> "sha256:7a4a086cd9ae6dec12506f455f51e43131905a303a265e48a9fb6a0c5d644d3e" [label=""];
}

