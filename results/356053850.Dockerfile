[app/sources/356053850.Dockerfile]
digraph {
  "sha256:de60b4a855f83645e62d47185d0d50b620849ae64525914a5098509a9f7dd34e" [label="docker-image://docker.io/rackhd/on-tasks:devel" shape="ellipse"];
  "sha256:03b2315b5d513ce871c7ed1067d99f3a7171549060c7cbb81883a2ca6b4bc49b" [label="local://context" shape="ellipse"];
  "sha256:2db842bdd8ef05bf2523f604e1401081d7a9050cfe33fe582254cf2a2df31e3d" [label="copy{src=/, dest=/RackHD/on-http/}" shape="note"];
  "sha256:68836875bfb9456eeb346b8b173d52db1a15a753a4fb0e6edc479af25f81a337" [label="mkdir{path=/RackHD/on-http}" shape="note"];
  "sha256:34f68c48761142e8f256ff1b2ce7abc9c7433aef8cf2308958fca54c2f26f008" [label="/bin/sh -c mkdir -p ./node_modules   && apt-get update   && apt-get install -y unzip curl   && npm install apidoc@^0.12.1   && npm install --production   && npm run taskdoc   && /RackHD/on-http/install-web-ui.sh   && /RackHD/on-http/install-swagger-ui.sh   && rm -r ./node_modules/on-tasks ./node_modules/on-core ./node_modules/di   && ln -s /RackHD/on-tasks ./node_modules/on-tasks   && ln -s /RackHD/on-core ./node_modules/on-core   && ln -s /RackHD/on-core/node_modules/di ./node_modules/di" shape="box"];
  "sha256:f12b04d94ff7768a5543dd29707aafb3fe134af7c903f3d5743d523fb6e42e4c" [label="sha256:f12b04d94ff7768a5543dd29707aafb3fe134af7c903f3d5743d523fb6e42e4c" shape="plaintext"];
  "sha256:de60b4a855f83645e62d47185d0d50b620849ae64525914a5098509a9f7dd34e" -> "sha256:2db842bdd8ef05bf2523f604e1401081d7a9050cfe33fe582254cf2a2df31e3d" [label=""];
  "sha256:03b2315b5d513ce871c7ed1067d99f3a7171549060c7cbb81883a2ca6b4bc49b" -> "sha256:2db842bdd8ef05bf2523f604e1401081d7a9050cfe33fe582254cf2a2df31e3d" [label=""];
  "sha256:2db842bdd8ef05bf2523f604e1401081d7a9050cfe33fe582254cf2a2df31e3d" -> "sha256:68836875bfb9456eeb346b8b173d52db1a15a753a4fb0e6edc479af25f81a337" [label=""];
  "sha256:68836875bfb9456eeb346b8b173d52db1a15a753a4fb0e6edc479af25f81a337" -> "sha256:34f68c48761142e8f256ff1b2ce7abc9c7433aef8cf2308958fca54c2f26f008" [label=""];
  "sha256:34f68c48761142e8f256ff1b2ce7abc9c7433aef8cf2308958fca54c2f26f008" -> "sha256:f12b04d94ff7768a5543dd29707aafb3fe134af7c903f3d5743d523fb6e42e4c" [label=""];
}

