[app/sources/376129495.Dockerfile]
digraph {
  "sha256:b70dbced8634783ec1bf732ea9fada2d3790dd50f247a7d024839e03430758bb" [label="docker-image://docker.io/library/node:10.15-alpine@sha256:aa28f3b6b4087b3f289bebaca8d3fb82b93137ae739aa67df3a04892d521958e" shape="ellipse"];
  "sha256:8933bf172e05c857d7b223e1ece384cbc6796821da55064d254cbfd36c51574a" [label="/bin/sh -c apk --no-cache --virtual build-dependencies add     python     make     g++     && npm config set unsafe-perm true     && npm install --quiet node-gyp -g" shape="box"];
  "sha256:1329282154da91fae48020ff58c3411115c16e6907aaf5fb38571f3f0ce01d8d" [label="sha256:1329282154da91fae48020ff58c3411115c16e6907aaf5fb38571f3f0ce01d8d" shape="plaintext"];
  "sha256:b70dbced8634783ec1bf732ea9fada2d3790dd50f247a7d024839e03430758bb" -> "sha256:8933bf172e05c857d7b223e1ece384cbc6796821da55064d254cbfd36c51574a" [label=""];
  "sha256:8933bf172e05c857d7b223e1ece384cbc6796821da55064d254cbfd36c51574a" -> "sha256:1329282154da91fae48020ff58c3411115c16e6907aaf5fb38571f3f0ce01d8d" [label=""];
}

