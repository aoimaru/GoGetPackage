[app/sources/252776921.Dockerfile]
digraph {
  "sha256:65a210a6517929b3764434d251aee638d74357e8612ff2d03a748ffaa024c2cd" [label="docker-image://docker.io/library/debian:7" shape="ellipse"];
  "sha256:b468544d3559b2372159aa65958dc586c4658969dd0b94484f7d2eb4c72dfc3a" [label="/bin/sh -c set -x && apt-get update && apt-get install -y --no-install-recommends ruby ruby-dev gcc make ca-certificates libffi-dev && gem install fpm && mkdir /src/" shape="box"];
  "sha256:dc0601e70b1529b5de0cf536d69a9de382bd7c3a64ba5238e40912901ea32a73" [label="mkdir{path=/src}" shape="note"];
  "sha256:9e037155ed967e9461d734425aee12e995f1203a55e3119ce222bc24f929577c" [label="sha256:9e037155ed967e9461d734425aee12e995f1203a55e3119ce222bc24f929577c" shape="plaintext"];
  "sha256:65a210a6517929b3764434d251aee638d74357e8612ff2d03a748ffaa024c2cd" -> "sha256:b468544d3559b2372159aa65958dc586c4658969dd0b94484f7d2eb4c72dfc3a" [label=""];
  "sha256:b468544d3559b2372159aa65958dc586c4658969dd0b94484f7d2eb4c72dfc3a" -> "sha256:dc0601e70b1529b5de0cf536d69a9de382bd7c3a64ba5238e40912901ea32a73" [label=""];
  "sha256:dc0601e70b1529b5de0cf536d69a9de382bd7c3a64ba5238e40912901ea32a73" -> "sha256:9e037155ed967e9461d734425aee12e995f1203a55e3119ce222bc24f929577c" [label=""];
}

