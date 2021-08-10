[app/sources/461789004.Dockerfile]
digraph {
  "sha256:9e32c5fb07f1e3801377fef0d7266254c59a45103d6cb4290937234537ed8f0f" [label="docker-image://docker.io/library/node:8.0-alpine" shape="ellipse"];
  "sha256:efd3909ef97137fc5bffd5bd394e1640b8ef15a7a99d94ca11a3589d726d3646" [label="/bin/sh -c apk add --no-cache --virtual .build-deps curl     && curl -fSL  -o dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz     && tar -C /usr/local/bin -xzvf dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz     && rm dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz" shape="box"];
  "sha256:72802a711dfa72484154817701522b168406302d21293b6c9199c006a76b3559" [label="mkdir{path=/srv}" shape="note"];
  "sha256:55636e4642bf90fc932e6c8729db1791d2c6b9334e3565bc6b2fe8b58c8f8132" [label="local://context" shape="ellipse"];
  "sha256:2445044a1dd02bcc1aadce7b05fb287b6bcbe1d1cb3f13a6e0c5b7793bbfb47c" [label="copy{src=/, dest=/srv}" shape="note"];
  "sha256:49699450415afa2ec92be333a0405c69cce286f623793dbca11b7ef85e6de5e0" [label="/bin/sh -c yarn install && yarn build" shape="box"];
  "sha256:20b998ec85934a2708825e25d6533b592b85a5fd8798715db3cebd1df7922907" [label="sha256:20b998ec85934a2708825e25d6533b592b85a5fd8798715db3cebd1df7922907" shape="plaintext"];
  "sha256:9e32c5fb07f1e3801377fef0d7266254c59a45103d6cb4290937234537ed8f0f" -> "sha256:efd3909ef97137fc5bffd5bd394e1640b8ef15a7a99d94ca11a3589d726d3646" [label=""];
  "sha256:efd3909ef97137fc5bffd5bd394e1640b8ef15a7a99d94ca11a3589d726d3646" -> "sha256:72802a711dfa72484154817701522b168406302d21293b6c9199c006a76b3559" [label=""];
  "sha256:72802a711dfa72484154817701522b168406302d21293b6c9199c006a76b3559" -> "sha256:2445044a1dd02bcc1aadce7b05fb287b6bcbe1d1cb3f13a6e0c5b7793bbfb47c" [label=""];
  "sha256:55636e4642bf90fc932e6c8729db1791d2c6b9334e3565bc6b2fe8b58c8f8132" -> "sha256:2445044a1dd02bcc1aadce7b05fb287b6bcbe1d1cb3f13a6e0c5b7793bbfb47c" [label=""];
  "sha256:2445044a1dd02bcc1aadce7b05fb287b6bcbe1d1cb3f13a6e0c5b7793bbfb47c" -> "sha256:49699450415afa2ec92be333a0405c69cce286f623793dbca11b7ef85e6de5e0" [label=""];
  "sha256:49699450415afa2ec92be333a0405c69cce286f623793dbca11b7ef85e6de5e0" -> "sha256:20b998ec85934a2708825e25d6533b592b85a5fd8798715db3cebd1df7922907" [label=""];
}

