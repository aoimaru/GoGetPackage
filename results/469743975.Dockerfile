[app/sources/469743975.Dockerfile]
digraph {
  "sha256:3e67117b84a55696424565a9dbd97927da17988faf8c11cb4c47a14339aba5e2" [label="local://context" shape="ellipse"];
  "sha256:b4d80dccab164622f6c45c9f517b9dd8bf1a2fe5a3ac132048461059b91760a9" [label="docker-image://docker.io/library/node:8-alpine@sha256:38f7bf07ffd72ac612ec8c829cb20ad416518dbb679768d7733c93175453f4d4" shape="ellipse"];
  "sha256:92e2974263a2e4af1cd577dc031e9f639b5a6ab2fe3b0086295e2284369122ef" [label="copy{src=/, dest=/opt/app}" shape="note"];
  "sha256:d360d78db82607357cc07fb23fb98ba2c4e14a8a7dfa623cc0df08e08600cc86" [label="mkdir{path=/opt/app}" shape="note"];
  "sha256:0bac55cc4263f54b1946dbff0257d778c49760cf2d0e62018c4bd86866e3befd" [label="/bin/sh -c npm install --only production" shape="box"];
  "sha256:4d3a0dfb17d07f706dec609051742fb1af5650a939a199282da6cdfce0224fc1" [label="sha256:4d3a0dfb17d07f706dec609051742fb1af5650a939a199282da6cdfce0224fc1" shape="plaintext"];
  "sha256:b4d80dccab164622f6c45c9f517b9dd8bf1a2fe5a3ac132048461059b91760a9" -> "sha256:92e2974263a2e4af1cd577dc031e9f639b5a6ab2fe3b0086295e2284369122ef" [label=""];
  "sha256:3e67117b84a55696424565a9dbd97927da17988faf8c11cb4c47a14339aba5e2" -> "sha256:92e2974263a2e4af1cd577dc031e9f639b5a6ab2fe3b0086295e2284369122ef" [label=""];
  "sha256:92e2974263a2e4af1cd577dc031e9f639b5a6ab2fe3b0086295e2284369122ef" -> "sha256:d360d78db82607357cc07fb23fb98ba2c4e14a8a7dfa623cc0df08e08600cc86" [label=""];
  "sha256:d360d78db82607357cc07fb23fb98ba2c4e14a8a7dfa623cc0df08e08600cc86" -> "sha256:0bac55cc4263f54b1946dbff0257d778c49760cf2d0e62018c4bd86866e3befd" [label=""];
  "sha256:0bac55cc4263f54b1946dbff0257d778c49760cf2d0e62018c4bd86866e3befd" -> "sha256:4d3a0dfb17d07f706dec609051742fb1af5650a939a199282da6cdfce0224fc1" [label=""];
}

