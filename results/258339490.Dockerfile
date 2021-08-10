[app/sources/258339490.Dockerfile]
digraph {
  "sha256:7997ead0267fe831acdd05d5fa5a571cb20d6e522cfd447e5453494215de6fe1" [label="docker-image://docker.io/library/node:10-alpine" shape="ellipse"];
  "sha256:f482e57eb96cd27fe2aabc55885aff55ff5840750003c4dcdab9a57b639364d8" [label="mkdir{path=/opt/TediCross}" shape="note"];
  "sha256:7941920287b3832e9bcf7088999fa5688e2c73a5667e3ecc34813cf8a8152295" [label="local://context" shape="ellipse"];
  "sha256:9d1477bcabe41966be6b0ab4907813380c3abd255758c535ffd346c8fd1366ba" [label="copy{src=/, dest=/opt/TediCross/}" shape="note"];
  "sha256:8dcd94b5d8ca918cc4b3e7b1e1130f775a35afae4f7d4b2d6c54c827352f55bd" [label="/bin/sh -c npm install --production" shape="box"];
  "sha256:8317f55b803ec54933fdb5fc69c27562b8016c3235b5d5229523ed59d7ed3e7c" [label="sha256:8317f55b803ec54933fdb5fc69c27562b8016c3235b5d5229523ed59d7ed3e7c" shape="plaintext"];
  "sha256:7997ead0267fe831acdd05d5fa5a571cb20d6e522cfd447e5453494215de6fe1" -> "sha256:f482e57eb96cd27fe2aabc55885aff55ff5840750003c4dcdab9a57b639364d8" [label=""];
  "sha256:f482e57eb96cd27fe2aabc55885aff55ff5840750003c4dcdab9a57b639364d8" -> "sha256:9d1477bcabe41966be6b0ab4907813380c3abd255758c535ffd346c8fd1366ba" [label=""];
  "sha256:7941920287b3832e9bcf7088999fa5688e2c73a5667e3ecc34813cf8a8152295" -> "sha256:9d1477bcabe41966be6b0ab4907813380c3abd255758c535ffd346c8fd1366ba" [label=""];
  "sha256:9d1477bcabe41966be6b0ab4907813380c3abd255758c535ffd346c8fd1366ba" -> "sha256:8dcd94b5d8ca918cc4b3e7b1e1130f775a35afae4f7d4b2d6c54c827352f55bd" [label=""];
  "sha256:8dcd94b5d8ca918cc4b3e7b1e1130f775a35afae4f7d4b2d6c54c827352f55bd" -> "sha256:8317f55b803ec54933fdb5fc69c27562b8016c3235b5d5229523ed59d7ed3e7c" [label=""];
}

