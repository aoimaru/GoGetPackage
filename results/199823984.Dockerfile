[app/sources/199823984.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:1d739b6dbbfc5667d45f44239b41abcf67b008923d458228b986b125c6c6641c" [label="/bin/sh -c apt-get update && apt-get install -y ruby ruby-dev" shape="box"];
  "sha256:9fb5c7dc16bf9fe910a12c146c3106676148e5ade4c6ce62e731112c626ffbcf" [label="/bin/sh -c gem install sinatra" shape="box"];
  "sha256:05d41926b016bc073142f92bf962fdd674460f36f217e2954547c8cb654002ef" [label="sha256:05d41926b016bc073142f92bf962fdd674460f36f217e2954547c8cb654002ef" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:1d739b6dbbfc5667d45f44239b41abcf67b008923d458228b986b125c6c6641c" [label=""];
  "sha256:1d739b6dbbfc5667d45f44239b41abcf67b008923d458228b986b125c6c6641c" -> "sha256:9fb5c7dc16bf9fe910a12c146c3106676148e5ade4c6ce62e731112c626ffbcf" [label=""];
  "sha256:9fb5c7dc16bf9fe910a12c146c3106676148e5ade4c6ce62e731112c626ffbcf" -> "sha256:05d41926b016bc073142f92bf962fdd674460f36f217e2954547c8cb654002ef" [label=""];
}

