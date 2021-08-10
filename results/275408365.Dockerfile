[app/sources/275408365.Dockerfile]
digraph {
  "sha256:ec7b304bff21116f9e98130d13dd0d9aaf17f894bdbf053a88fa8e7f9aa5e379" [label="docker-image://docker.io/library/node:10.13-alpine" shape="ellipse"];
  "sha256:9f31c276cbf943a6903393d4b47bc45ffadff31feeb6612e29f67a8a9350861c" [label="/bin/sh -c apk update   && apk add --update alpine-sdk   && apk del alpine-sdk   && rm -rf /tmp/* /var/cache/apk/* *.tar.gz ~/.npm   && npm cache verify   && sed -i -e \"s/bin\\/ash/bin\\/sh/\" /etc/passwd" shape="box"];
  "sha256:4773ae4b084cd037487edf439164ede38dc8bc826e61b43248460a9364719148" [label="/bin/sh -c npm install -g @angular/cli" shape="box"];
  "sha256:0658cd082f6abaa864f047ee85b19894dc75f38c44be4891976192d849b93ba1" [label="sha256:0658cd082f6abaa864f047ee85b19894dc75f38c44be4891976192d849b93ba1" shape="plaintext"];
  "sha256:ec7b304bff21116f9e98130d13dd0d9aaf17f894bdbf053a88fa8e7f9aa5e379" -> "sha256:9f31c276cbf943a6903393d4b47bc45ffadff31feeb6612e29f67a8a9350861c" [label=""];
  "sha256:9f31c276cbf943a6903393d4b47bc45ffadff31feeb6612e29f67a8a9350861c" -> "sha256:4773ae4b084cd037487edf439164ede38dc8bc826e61b43248460a9364719148" [label=""];
  "sha256:4773ae4b084cd037487edf439164ede38dc8bc826e61b43248460a9364719148" -> "sha256:0658cd082f6abaa864f047ee85b19894dc75f38c44be4891976192d849b93ba1" [label=""];
}

