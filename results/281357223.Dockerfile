[app/sources/281357223.Dockerfile]
digraph {
  "sha256:11339827c614c05d2023aab9917d963864f68fecca2d07d350561512ef4f3d6d" [label="docker-image://docker.io/lucee/lucee5:latest" shape="ellipse"];
  "sha256:c4742605982924b57d40a93304ba37d184439c8d5307302edcc4e1f05a4913e4" [label="/bin/sh -c apt-get update && apt-get install -y git     && rm -rf /var/lib/apt/lists/*     && git clone --branch 7.1 --single-branch --depth 1 https://github.com/blueriver/MuraCMS.git     && cp -R MuraCMS/. ${APP_DIR}     && rm -rf MuraCMS" shape="box"];
  "sha256:bfb260ced6255d93d1c36997e45b2ddb8d528489c1c4c9ac91bc4aeeb3beb17d" [label="sha256:bfb260ced6255d93d1c36997e45b2ddb8d528489c1c4c9ac91bc4aeeb3beb17d" shape="plaintext"];
  "sha256:11339827c614c05d2023aab9917d963864f68fecca2d07d350561512ef4f3d6d" -> "sha256:c4742605982924b57d40a93304ba37d184439c8d5307302edcc4e1f05a4913e4" [label=""];
  "sha256:c4742605982924b57d40a93304ba37d184439c8d5307302edcc4e1f05a4913e4" -> "sha256:bfb260ced6255d93d1c36997e45b2ddb8d528489c1c4c9ac91bc4aeeb3beb17d" [label=""];
}

