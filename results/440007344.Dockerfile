[app/sources/440007344.Dockerfile]
digraph {
  "sha256:cfb10d89c2a2a6056093ac0df99954426ca548036fd1edf261a2cdb276b75c1f" [label="docker-image://docker.io/mhart/alpine-node:7.9.0@sha256:03f5cfca0497c84e7b5698e96bd757e388a352ad8ac8d940f88a2575840d04b8" shape="ellipse"];
  "sha256:034b5ce71d60c0dbc9b462c9ede9ea46a94c97ec0d5fd2974258483973e15623" [label="/bin/sh -c apk --update add --no-cache build-base python htop &&   npm i -g yarn" shape="box"];
  "sha256:fd8b5f235fd5af9a830cac372513c0dda0ae725fe9c298fb617ee4af2cc1153c" [label="mkdir{path=/src}" shape="note"];
  "sha256:c90a7cf259f538e78b73614d0f50f23646770a7ed53ea12d29bed1f202215229" [label="sha256:c90a7cf259f538e78b73614d0f50f23646770a7ed53ea12d29bed1f202215229" shape="plaintext"];
  "sha256:cfb10d89c2a2a6056093ac0df99954426ca548036fd1edf261a2cdb276b75c1f" -> "sha256:034b5ce71d60c0dbc9b462c9ede9ea46a94c97ec0d5fd2974258483973e15623" [label=""];
  "sha256:034b5ce71d60c0dbc9b462c9ede9ea46a94c97ec0d5fd2974258483973e15623" -> "sha256:fd8b5f235fd5af9a830cac372513c0dda0ae725fe9c298fb617ee4af2cc1153c" [label=""];
  "sha256:fd8b5f235fd5af9a830cac372513c0dda0ae725fe9c298fb617ee4af2cc1153c" -> "sha256:c90a7cf259f538e78b73614d0f50f23646770a7ed53ea12d29bed1f202215229" [label=""];
}

