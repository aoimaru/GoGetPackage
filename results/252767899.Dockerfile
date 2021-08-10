[app/sources/252767899.Dockerfile]
digraph {
  "sha256:9f95c2c37227401b1fc46119c39a45f93c0075f2e387818d47ed65ae3fdf076d" [label="docker-image://docker.io/mhart/alpine-node:6" shape="ellipse"];
  "sha256:46385ad33a2001c8c3daa4f17d1c2a0abf3ddb9169a0818f50e96c7c2a9cbc82" [label="/bin/sh -c npm i -g azure-cli@0.10.0" shape="box"];
  "sha256:2cdc53ad3d35a27f391de7941ba493b07e1515cc5ba316777460eab581ef6de8" [label="sha256:2cdc53ad3d35a27f391de7941ba493b07e1515cc5ba316777460eab581ef6de8" shape="plaintext"];
  "sha256:9f95c2c37227401b1fc46119c39a45f93c0075f2e387818d47ed65ae3fdf076d" -> "sha256:46385ad33a2001c8c3daa4f17d1c2a0abf3ddb9169a0818f50e96c7c2a9cbc82" [label=""];
  "sha256:46385ad33a2001c8c3daa4f17d1c2a0abf3ddb9169a0818f50e96c7c2a9cbc82" -> "sha256:2cdc53ad3d35a27f391de7941ba493b07e1515cc5ba316777460eab581ef6de8" [label=""];
}

