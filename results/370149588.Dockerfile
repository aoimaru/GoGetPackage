[app/sources/370149588.Dockerfile]
digraph {
  "sha256:b7dea21899426d247331f31dc1534c8c307aa5c14841d11e8d2bdd2d2ef73c8a" [label="docker-image://docker.io/wlanslovenija/nodewatcher-base:latest" shape="ellipse"];
  "sha256:2d4b0a709a6b62a038ffb4e43fd077d7b4aaae6ea0bbc8aa6755bc17d84a2679" [label="local://context" shape="ellipse"];
  "sha256:1b55082a04d621c0024f2fe4ac83b1416a350a4b58b76f17cf26c5bc52664e43" [label="copy{src=/etc, dest=/etc}" shape="note"];
  "sha256:b25208068f51a0c67544906e86332c99aa07671d54cc175ac05e3a14f2ac7030" [label="sha256:b25208068f51a0c67544906e86332c99aa07671d54cc175ac05e3a14f2ac7030" shape="plaintext"];
  "sha256:b7dea21899426d247331f31dc1534c8c307aa5c14841d11e8d2bdd2d2ef73c8a" -> "sha256:1b55082a04d621c0024f2fe4ac83b1416a350a4b58b76f17cf26c5bc52664e43" [label=""];
  "sha256:2d4b0a709a6b62a038ffb4e43fd077d7b4aaae6ea0bbc8aa6755bc17d84a2679" -> "sha256:1b55082a04d621c0024f2fe4ac83b1416a350a4b58b76f17cf26c5bc52664e43" [label=""];
  "sha256:1b55082a04d621c0024f2fe4ac83b1416a350a4b58b76f17cf26c5bc52664e43" -> "sha256:b25208068f51a0c67544906e86332c99aa07671d54cc175ac05e3a14f2ac7030" [label=""];
}

