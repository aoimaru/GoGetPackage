[app/sources/479167124.Dockerfile]
digraph {
  "sha256:7396b0695b864ccb41579cb6268a3281271f1b59ed6971402b8c38c881efa83e" [label="docker-image://docker.io/library/node:8-alpine" shape="ellipse"];
  "sha256:22dd38af32ebf7983326cb3b093903234382200d878fbe8b2a6e4798cb04e03b" [label="/bin/sh -c apk add --update git make gcc g++ python &&     mkdir -p /usr/src/app" shape="box"];
  "sha256:f4aeadc94bfdba53e43673ef6db1816ce0803a77d65b2bdee073b926dd3428d1" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:1ae73565f4bdad7856f4978d349f46d590ed0d4970ca5bf3e6850e135f9e62e9" [label="local://context" shape="ellipse"];
  "sha256:00f06ce69826ec99f800394296a92a882bbbbbe02db100d1935e8498acbe48a9" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:2eafa2df92c7cdd5c8ec86d16097e8a090d6f875c34bdbdc4a083e49ab453cfb" [label="/bin/sh -c yarn &&     yarn add cp-zen-frontend@\"$DEP_VERSION\" cp-translations@\"$DEP_VERSION\" &&     node_modules/.bin/bower install --allow-root &&     yarn build &&     apk del make gcc g++ python &&     rm -rf /tmp/* /root/.npm /root/.node-gyp" shape="box"];
  "sha256:0a157337d789c7c890c77d1f424308d0d6bc9bbd137644fd830940c4fd4cadc8" [label="sha256:0a157337d789c7c890c77d1f424308d0d6bc9bbd137644fd830940c4fd4cadc8" shape="plaintext"];
  "sha256:7396b0695b864ccb41579cb6268a3281271f1b59ed6971402b8c38c881efa83e" -> "sha256:22dd38af32ebf7983326cb3b093903234382200d878fbe8b2a6e4798cb04e03b" [label=""];
  "sha256:22dd38af32ebf7983326cb3b093903234382200d878fbe8b2a6e4798cb04e03b" -> "sha256:f4aeadc94bfdba53e43673ef6db1816ce0803a77d65b2bdee073b926dd3428d1" [label=""];
  "sha256:f4aeadc94bfdba53e43673ef6db1816ce0803a77d65b2bdee073b926dd3428d1" -> "sha256:00f06ce69826ec99f800394296a92a882bbbbbe02db100d1935e8498acbe48a9" [label=""];
  "sha256:1ae73565f4bdad7856f4978d349f46d590ed0d4970ca5bf3e6850e135f9e62e9" -> "sha256:00f06ce69826ec99f800394296a92a882bbbbbe02db100d1935e8498acbe48a9" [label=""];
  "sha256:00f06ce69826ec99f800394296a92a882bbbbbe02db100d1935e8498acbe48a9" -> "sha256:2eafa2df92c7cdd5c8ec86d16097e8a090d6f875c34bdbdc4a083e49ab453cfb" [label=""];
  "sha256:2eafa2df92c7cdd5c8ec86d16097e8a090d6f875c34bdbdc4a083e49ab453cfb" -> "sha256:0a157337d789c7c890c77d1f424308d0d6bc9bbd137644fd830940c4fd4cadc8" [label=""];
}

