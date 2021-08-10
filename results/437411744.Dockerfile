[app/sources/437411744.Dockerfile]
digraph {
  "sha256:7997ead0267fe831acdd05d5fa5a571cb20d6e522cfd447e5453494215de6fe1" [label="docker-image://docker.io/library/node:10-alpine" shape="ellipse"];
  "sha256:3be29a58861a2c06d0af69df604f2b225cdd583b5088cd3d35ff694fa4a7a070" [label="/bin/sh -c mkdir -p /home/Service" shape="box"];
  "sha256:cf3275d0fa6165dfd650108c57704739f327e3a6ca65c24d9c77398c370c8adc" [label="mkdir{path=/home/Service}" shape="note"];
  "sha256:884f7ecf4b587929bb8ddf8091a1e47dd45faae60da92536ad37f80236048ca8" [label="local://context" shape="ellipse"];
  "sha256:dba9902e7f04a2b42d3165b07076ea8375a0d4879b3e426537d9a85808036581" [label="copy{src=/, dest=/home/Service}" shape="note"];
  "sha256:e38f73cf5528c3b71028ee1ffe3d692b203a31260a7e208c198ca5fa37686c75" [label="/bin/sh -c npm install --no-bin-links && npm i egg-scripts --save -g" shape="box"];
  "sha256:7f05e35d3ca7fc7b8e10a61e6a737d510fc725c62d1e974ce092b5750e425993" [label="sha256:7f05e35d3ca7fc7b8e10a61e6a737d510fc725c62d1e974ce092b5750e425993" shape="plaintext"];
  "sha256:7997ead0267fe831acdd05d5fa5a571cb20d6e522cfd447e5453494215de6fe1" -> "sha256:3be29a58861a2c06d0af69df604f2b225cdd583b5088cd3d35ff694fa4a7a070" [label=""];
  "sha256:3be29a58861a2c06d0af69df604f2b225cdd583b5088cd3d35ff694fa4a7a070" -> "sha256:cf3275d0fa6165dfd650108c57704739f327e3a6ca65c24d9c77398c370c8adc" [label=""];
  "sha256:cf3275d0fa6165dfd650108c57704739f327e3a6ca65c24d9c77398c370c8adc" -> "sha256:dba9902e7f04a2b42d3165b07076ea8375a0d4879b3e426537d9a85808036581" [label=""];
  "sha256:884f7ecf4b587929bb8ddf8091a1e47dd45faae60da92536ad37f80236048ca8" -> "sha256:dba9902e7f04a2b42d3165b07076ea8375a0d4879b3e426537d9a85808036581" [label=""];
  "sha256:dba9902e7f04a2b42d3165b07076ea8375a0d4879b3e426537d9a85808036581" -> "sha256:e38f73cf5528c3b71028ee1ffe3d692b203a31260a7e208c198ca5fa37686c75" [label=""];
  "sha256:e38f73cf5528c3b71028ee1ffe3d692b203a31260a7e208c198ca5fa37686c75" -> "sha256:7f05e35d3ca7fc7b8e10a61e6a737d510fc725c62d1e974ce092b5750e425993" [label=""];
}

