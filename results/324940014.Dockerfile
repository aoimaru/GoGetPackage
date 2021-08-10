[app/sources/324940014.Dockerfile]
digraph {
  "sha256:60633010d8f4ff1dba4e26e29bdc2c56d81e84eda57a73002cf247840a68453c" [label="docker-image://docker.io/library/node:12-alpine" shape="ellipse"];
  "sha256:d1b94a6272ffe5f0df75f23406bf6323178f88687de3c1c8415cd137df5a042a" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:741c82b65f2b6605c749b91de6f8ed71a80e7fed5ae8c2fb581c82832c47e3f9" [label="local://context" shape="ellipse"];
  "sha256:10dde216361d9797d38f0acc5828b6f47bcafb4cb2d77071438db49134da0364" [label="copy{src=/package*.json, dest=/usr/src/app/}" shape="note"];
  "sha256:5033f0f06019be2b5d40c540b26540147b4a0bc89e8d114829dcd53598507c83" [label="/bin/sh -c npm ci --production" shape="box"];
  "sha256:5349c3ec36d55f0f711b00576414915108c9cf0d1f487732c1365679af04f76b" [label="/bin/sh -c npm ci --development" shape="box"];
  "sha256:f52f6f0b7db531288cf46ae43b00b5620a1dbdef83f4b8bbce6fa35194879596" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:2e9c405a04a8eb011f1aac0ef07e519f919dc2b7ec1142a8702d025816ac7303" [label="/bin/sh -c npm run build" shape="box"];
  "sha256:8306d1e606d4ea024b1d3eff17018f1ddbe0d4981319c27a6bd429d4e7a97f30" [label="copy{src=/usr/src/app/dist, dest=/usr/src/app/}" shape="note"];
  "sha256:4b0134cbd209b7be450f78309c37a9292c9f11bdb507e50bf450dc4c2b9ea727" [label="sha256:4b0134cbd209b7be450f78309c37a9292c9f11bdb507e50bf450dc4c2b9ea727" shape="plaintext"];
  "sha256:60633010d8f4ff1dba4e26e29bdc2c56d81e84eda57a73002cf247840a68453c" -> "sha256:d1b94a6272ffe5f0df75f23406bf6323178f88687de3c1c8415cd137df5a042a" [label=""];
  "sha256:d1b94a6272ffe5f0df75f23406bf6323178f88687de3c1c8415cd137df5a042a" -> "sha256:10dde216361d9797d38f0acc5828b6f47bcafb4cb2d77071438db49134da0364" [label=""];
  "sha256:741c82b65f2b6605c749b91de6f8ed71a80e7fed5ae8c2fb581c82832c47e3f9" -> "sha256:10dde216361d9797d38f0acc5828b6f47bcafb4cb2d77071438db49134da0364" [label=""];
  "sha256:10dde216361d9797d38f0acc5828b6f47bcafb4cb2d77071438db49134da0364" -> "sha256:5033f0f06019be2b5d40c540b26540147b4a0bc89e8d114829dcd53598507c83" [label=""];
  "sha256:10dde216361d9797d38f0acc5828b6f47bcafb4cb2d77071438db49134da0364" -> "sha256:5349c3ec36d55f0f711b00576414915108c9cf0d1f487732c1365679af04f76b" [label=""];
  "sha256:5349c3ec36d55f0f711b00576414915108c9cf0d1f487732c1365679af04f76b" -> "sha256:f52f6f0b7db531288cf46ae43b00b5620a1dbdef83f4b8bbce6fa35194879596" [label=""];
  "sha256:741c82b65f2b6605c749b91de6f8ed71a80e7fed5ae8c2fb581c82832c47e3f9" -> "sha256:f52f6f0b7db531288cf46ae43b00b5620a1dbdef83f4b8bbce6fa35194879596" [label=""];
  "sha256:f52f6f0b7db531288cf46ae43b00b5620a1dbdef83f4b8bbce6fa35194879596" -> "sha256:2e9c405a04a8eb011f1aac0ef07e519f919dc2b7ec1142a8702d025816ac7303" [label=""];
  "sha256:5033f0f06019be2b5d40c540b26540147b4a0bc89e8d114829dcd53598507c83" -> "sha256:8306d1e606d4ea024b1d3eff17018f1ddbe0d4981319c27a6bd429d4e7a97f30" [label=""];
  "sha256:2e9c405a04a8eb011f1aac0ef07e519f919dc2b7ec1142a8702d025816ac7303" -> "sha256:8306d1e606d4ea024b1d3eff17018f1ddbe0d4981319c27a6bd429d4e7a97f30" [label=""];
  "sha256:8306d1e606d4ea024b1d3eff17018f1ddbe0d4981319c27a6bd429d4e7a97f30" -> "sha256:4b0134cbd209b7be450f78309c37a9292c9f11bdb507e50bf450dc4c2b9ea727" [label=""];
}

