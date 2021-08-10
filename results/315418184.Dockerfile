[app/sources/315418184.Dockerfile]
digraph {
  "sha256:7997ead0267fe831acdd05d5fa5a571cb20d6e522cfd447e5453494215de6fe1" [label="docker-image://docker.io/library/node:10-alpine" shape="ellipse"];
  "sha256:5a8ededcc7df10c9eb0f53c1cc990685e0e541833b966544b1f2a2b9f392f5d1" [label="mkdir{path=/home/node}" shape="note"];
  "sha256:e21a29bb5ff825aac5b8a6211dc4043a01ace3a8955dbade6b528af388b03626" [label="local://context" shape="ellipse"];
  "sha256:a4abecf6aa84a16d3317de538f3ad40cc99a370ea78d283e08d04c694a3c00cd" [label="copy{src=/, dest=/home/node}" shape="note"];
  "sha256:f47cca3267df441964a719f7b5d71fc7c48cd7567970edd034aa54571e582dc0" [label="/bin/sh -c npm install     && npm run build" shape="box"];
  "sha256:7537b1dfe4773116cc391990cce77a3e6c27df2ae7bab6b84af55424d5de350d" [label="copy{src=/home/node/package*.json, dest=/home/node/}" shape="note"];
  "sha256:b1baef68026e08648f1e5f93e6eaae624bec49981a3c464d9c6715a734abc7ff" [label="copy{src=/home/node/dist, dest=/home/node/dist/}" shape="note"];
  "sha256:77c018a9e691b56446d36154ece6731b59a39d300a5bf050ce9c36471d05cefd" [label="/bin/sh -c npm install" shape="box"];
  "sha256:70f83d959ea9b81a0bb6e3783a741194aa94284e4d91b060da87290cb053b4e7" [label="sha256:70f83d959ea9b81a0bb6e3783a741194aa94284e4d91b060da87290cb053b4e7" shape="plaintext"];
  "sha256:7997ead0267fe831acdd05d5fa5a571cb20d6e522cfd447e5453494215de6fe1" -> "sha256:5a8ededcc7df10c9eb0f53c1cc990685e0e541833b966544b1f2a2b9f392f5d1" [label=""];
  "sha256:5a8ededcc7df10c9eb0f53c1cc990685e0e541833b966544b1f2a2b9f392f5d1" -> "sha256:a4abecf6aa84a16d3317de538f3ad40cc99a370ea78d283e08d04c694a3c00cd" [label=""];
  "sha256:e21a29bb5ff825aac5b8a6211dc4043a01ace3a8955dbade6b528af388b03626" -> "sha256:a4abecf6aa84a16d3317de538f3ad40cc99a370ea78d283e08d04c694a3c00cd" [label=""];
  "sha256:a4abecf6aa84a16d3317de538f3ad40cc99a370ea78d283e08d04c694a3c00cd" -> "sha256:f47cca3267df441964a719f7b5d71fc7c48cd7567970edd034aa54571e582dc0" [label=""];
  "sha256:5a8ededcc7df10c9eb0f53c1cc990685e0e541833b966544b1f2a2b9f392f5d1" -> "sha256:7537b1dfe4773116cc391990cce77a3e6c27df2ae7bab6b84af55424d5de350d" [label=""];
  "sha256:f47cca3267df441964a719f7b5d71fc7c48cd7567970edd034aa54571e582dc0" -> "sha256:7537b1dfe4773116cc391990cce77a3e6c27df2ae7bab6b84af55424d5de350d" [label=""];
  "sha256:7537b1dfe4773116cc391990cce77a3e6c27df2ae7bab6b84af55424d5de350d" -> "sha256:b1baef68026e08648f1e5f93e6eaae624bec49981a3c464d9c6715a734abc7ff" [label=""];
  "sha256:f47cca3267df441964a719f7b5d71fc7c48cd7567970edd034aa54571e582dc0" -> "sha256:b1baef68026e08648f1e5f93e6eaae624bec49981a3c464d9c6715a734abc7ff" [label=""];
  "sha256:b1baef68026e08648f1e5f93e6eaae624bec49981a3c464d9c6715a734abc7ff" -> "sha256:77c018a9e691b56446d36154ece6731b59a39d300a5bf050ce9c36471d05cefd" [label=""];
  "sha256:77c018a9e691b56446d36154ece6731b59a39d300a5bf050ce9c36471d05cefd" -> "sha256:70f83d959ea9b81a0bb6e3783a741194aa94284e4d91b060da87290cb053b4e7" [label=""];
}

