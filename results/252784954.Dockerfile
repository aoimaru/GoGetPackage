[app/sources/252784954.Dockerfile]
digraph {
  "sha256:aade18f3164ca88a5d297c9a13085fdbc757cbd4788d1779fdbfa0e51d314f9a" [label="local://context" shape="ellipse"];
  "sha256:7396b0695b864ccb41579cb6268a3281271f1b59ed6971402b8c38c881efa83e" [label="docker-image://docker.io/library/node:8-alpine" shape="ellipse"];
  "sha256:afb1a41835d98e5689ce2551fa8766cdb8fdf913240e8d84642ef72ba9655b30" [label="/bin/sh -c apk add --update git build-base python postgresql-client && mkdir -p /usr/src/app" shape="box"];
  "sha256:c44207953302ae84cb8c66731178b515edea9c5957c4d6105a13e858fe1b03fa" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:063be0a43feb5115e31a07f743518cc28e9e5769f5a44d6069772dd7acffe995" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:41f54fd88f8344574bdacc9a8450d5781253d2e6eb621e2f42b29852ce99df71" [label="/bin/sh -c yarn && yarn add cp-translations@latest && apk del build-base python && rm -rf /tmp/* /root/.npm /root/.node-gyp" shape="box"];
  "sha256:0b4189e6590a35c981cd3db54e297a7ff1cbef0973d3717e9148d02df0272974" [label="sha256:0b4189e6590a35c981cd3db54e297a7ff1cbef0973d3717e9148d02df0272974" shape="plaintext"];
  "sha256:7396b0695b864ccb41579cb6268a3281271f1b59ed6971402b8c38c881efa83e" -> "sha256:afb1a41835d98e5689ce2551fa8766cdb8fdf913240e8d84642ef72ba9655b30" [label=""];
  "sha256:afb1a41835d98e5689ce2551fa8766cdb8fdf913240e8d84642ef72ba9655b30" -> "sha256:c44207953302ae84cb8c66731178b515edea9c5957c4d6105a13e858fe1b03fa" [label=""];
  "sha256:c44207953302ae84cb8c66731178b515edea9c5957c4d6105a13e858fe1b03fa" -> "sha256:063be0a43feb5115e31a07f743518cc28e9e5769f5a44d6069772dd7acffe995" [label=""];
  "sha256:aade18f3164ca88a5d297c9a13085fdbc757cbd4788d1779fdbfa0e51d314f9a" -> "sha256:063be0a43feb5115e31a07f743518cc28e9e5769f5a44d6069772dd7acffe995" [label=""];
  "sha256:063be0a43feb5115e31a07f743518cc28e9e5769f5a44d6069772dd7acffe995" -> "sha256:41f54fd88f8344574bdacc9a8450d5781253d2e6eb621e2f42b29852ce99df71" [label=""];
  "sha256:41f54fd88f8344574bdacc9a8450d5781253d2e6eb621e2f42b29852ce99df71" -> "sha256:0b4189e6590a35c981cd3db54e297a7ff1cbef0973d3717e9148d02df0272974" [label=""];
}

