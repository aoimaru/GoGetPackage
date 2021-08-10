[app/sources/256810420.Dockerfile]
digraph {
  "sha256:7997ead0267fe831acdd05d5fa5a571cb20d6e522cfd447e5453494215de6fe1" [label="docker-image://docker.io/library/node:10-alpine" shape="ellipse"];
  "sha256:b6ba50cfaadd9f530f0ccbf1b585c691e685a8c3d81e52b32c72358ca48c026f" [label="/bin/sh -c apk add --update     curl     python     python-dev     py-pip     build-base   && pip install virtualenv   && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:c8e93ba5e259b92b11c65f92442ea0dd7325875337ae00bfc5b45a697387538d" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:bbdfc2c92b9838e387be002d9f09fe21a5549d01ccd9915c5ba76c41c0deb4d4" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:a25bd600d58c838832a3ee91efa431be2d516871f5b1a2284c9133aef0d26289" [label="local://context" shape="ellipse"];
  "sha256:056489a0bb656d0baa32776abbba291973f6f1bd5e32c6087c51fb5087b6008b" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:1b9c62b450510a97d79e99d9cb471ce643e4530c6db456943dc5be7844606d1b" [label="/bin/sh -c npm install --production" shape="box"];
  "sha256:0c931ae464958bb9997b61cc89e1fcea9c977769572b8bb21ea34a2a4a16dd0e" [label="sha256:0c931ae464958bb9997b61cc89e1fcea9c977769572b8bb21ea34a2a4a16dd0e" shape="plaintext"];
  "sha256:7997ead0267fe831acdd05d5fa5a571cb20d6e522cfd447e5453494215de6fe1" -> "sha256:b6ba50cfaadd9f530f0ccbf1b585c691e685a8c3d81e52b32c72358ca48c026f" [label=""];
  "sha256:b6ba50cfaadd9f530f0ccbf1b585c691e685a8c3d81e52b32c72358ca48c026f" -> "sha256:c8e93ba5e259b92b11c65f92442ea0dd7325875337ae00bfc5b45a697387538d" [label=""];
  "sha256:c8e93ba5e259b92b11c65f92442ea0dd7325875337ae00bfc5b45a697387538d" -> "sha256:bbdfc2c92b9838e387be002d9f09fe21a5549d01ccd9915c5ba76c41c0deb4d4" [label=""];
  "sha256:bbdfc2c92b9838e387be002d9f09fe21a5549d01ccd9915c5ba76c41c0deb4d4" -> "sha256:056489a0bb656d0baa32776abbba291973f6f1bd5e32c6087c51fb5087b6008b" [label=""];
  "sha256:a25bd600d58c838832a3ee91efa431be2d516871f5b1a2284c9133aef0d26289" -> "sha256:056489a0bb656d0baa32776abbba291973f6f1bd5e32c6087c51fb5087b6008b" [label=""];
  "sha256:056489a0bb656d0baa32776abbba291973f6f1bd5e32c6087c51fb5087b6008b" -> "sha256:1b9c62b450510a97d79e99d9cb471ce643e4530c6db456943dc5be7844606d1b" [label=""];
  "sha256:1b9c62b450510a97d79e99d9cb471ce643e4530c6db456943dc5be7844606d1b" -> "sha256:0c931ae464958bb9997b61cc89e1fcea9c977769572b8bb21ea34a2a4a16dd0e" [label=""];
}

