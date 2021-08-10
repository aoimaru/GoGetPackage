[app/sources/252775581.Dockerfile]
digraph {
  "sha256:6ea5410fa606b97b0a016e4d8799105e1aa273aaa63d30b8cce074d6cf8eec5a" [label="docker-image://docker.io/library/node:8.5" shape="ellipse"];
  "sha256:74961b677b23940e16d93612f73e22e4090e23f88af330256ac711f50e7bd8bc" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:559f90f13c407879f718d4622fa3d339f2315734f312a3a1abb3b66446c18512" [label="local://context" shape="ellipse"];
  "sha256:511e209f410c59667498dbaaddfd7eebabbcf66601ccca61dded8aed58f8e833" [label="copy{src=/package.json, dest=/tmp/package.json}" shape="note"];
  "sha256:ed0258ecc84c42a8de0a5995deacb56fb468637c61c9655eb77861d2e0d07cdd" [label="/bin/sh -c cd /tmp && npm install" shape="box"];
  "sha256:cf58985737dc188118b57e08aa68e61cab79c867de54ff5f4ad24d5dc00ebb37" [label="/bin/sh -c mkdir -p /usr/src/app && cp -a /tmp/node_modules /usr/src/app" shape="box"];
  "sha256:268d28610e105259b4f4d8c860f21f264814ef784e58a0f224ac1367840ca3cd" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:1e407990dd0ff520cfaa1d608fb7b9ba9fea1f9b4e2a3c91a6f47d5de008aaea" [label="sha256:1e407990dd0ff520cfaa1d608fb7b9ba9fea1f9b4e2a3c91a6f47d5de008aaea" shape="plaintext"];
  "sha256:6ea5410fa606b97b0a016e4d8799105e1aa273aaa63d30b8cce074d6cf8eec5a" -> "sha256:74961b677b23940e16d93612f73e22e4090e23f88af330256ac711f50e7bd8bc" [label=""];
  "sha256:74961b677b23940e16d93612f73e22e4090e23f88af330256ac711f50e7bd8bc" -> "sha256:511e209f410c59667498dbaaddfd7eebabbcf66601ccca61dded8aed58f8e833" [label=""];
  "sha256:559f90f13c407879f718d4622fa3d339f2315734f312a3a1abb3b66446c18512" -> "sha256:511e209f410c59667498dbaaddfd7eebabbcf66601ccca61dded8aed58f8e833" [label=""];
  "sha256:511e209f410c59667498dbaaddfd7eebabbcf66601ccca61dded8aed58f8e833" -> "sha256:ed0258ecc84c42a8de0a5995deacb56fb468637c61c9655eb77861d2e0d07cdd" [label=""];
  "sha256:ed0258ecc84c42a8de0a5995deacb56fb468637c61c9655eb77861d2e0d07cdd" -> "sha256:cf58985737dc188118b57e08aa68e61cab79c867de54ff5f4ad24d5dc00ebb37" [label=""];
  "sha256:cf58985737dc188118b57e08aa68e61cab79c867de54ff5f4ad24d5dc00ebb37" -> "sha256:268d28610e105259b4f4d8c860f21f264814ef784e58a0f224ac1367840ca3cd" [label=""];
  "sha256:559f90f13c407879f718d4622fa3d339f2315734f312a3a1abb3b66446c18512" -> "sha256:268d28610e105259b4f4d8c860f21f264814ef784e58a0f224ac1367840ca3cd" [label=""];
  "sha256:268d28610e105259b4f4d8c860f21f264814ef784e58a0f224ac1367840ca3cd" -> "sha256:1e407990dd0ff520cfaa1d608fb7b9ba9fea1f9b4e2a3c91a6f47d5de008aaea" [label=""];
}

