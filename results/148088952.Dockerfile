[app/sources/148088952.Dockerfile]
digraph {
  "sha256:42f024eb565dadfc60002e45d148e05393ce220bcc440360e620a85b8bcdafbf" [label="local://context" shape="ellipse"];
  "sha256:a0efb754dca7ca5220c51986a055a4d257cf5119ef5b27ef1a7d1fc19c480685" [label="docker-image://docker.io/library/openjdk:8u171-alpine3.7" shape="ellipse"];
  "sha256:ff8cadbc01cf4fe17d44c002b10b0c05424572aaa2bdb343a39132a2fc7f86cf" [label="/bin/sh -c apk --no-cache add curl" shape="box"];
  "sha256:28fa26ec38afbfaa9d8980d92bd4dc1652f1e56d257046acc7f7596bbbc3ed77" [label="copy{src=/build/libs/*-all.jar, dest=/accountquery.jar}" shape="note"];
  "sha256:e20f44daf643854d42511d8b7687a0e475e31a0d22011cae8d9ddbbc673334ca" [label="sha256:e20f44daf643854d42511d8b7687a0e475e31a0d22011cae8d9ddbbc673334ca" shape="plaintext"];
  "sha256:a0efb754dca7ca5220c51986a055a4d257cf5119ef5b27ef1a7d1fc19c480685" -> "sha256:ff8cadbc01cf4fe17d44c002b10b0c05424572aaa2bdb343a39132a2fc7f86cf" [label=""];
  "sha256:ff8cadbc01cf4fe17d44c002b10b0c05424572aaa2bdb343a39132a2fc7f86cf" -> "sha256:28fa26ec38afbfaa9d8980d92bd4dc1652f1e56d257046acc7f7596bbbc3ed77" [label=""];
  "sha256:42f024eb565dadfc60002e45d148e05393ce220bcc440360e620a85b8bcdafbf" -> "sha256:28fa26ec38afbfaa9d8980d92bd4dc1652f1e56d257046acc7f7596bbbc3ed77" [label=""];
  "sha256:28fa26ec38afbfaa9d8980d92bd4dc1652f1e56d257046acc7f7596bbbc3ed77" -> "sha256:e20f44daf643854d42511d8b7687a0e475e31a0d22011cae8d9ddbbc673334ca" [label=""];
}

