[app/sources/345379843.Dockerfile]
digraph {
  "sha256:5b2c0007e68ed0f8eae3c662f34bf6f82a52a3581a1ae5b92cc80df81ce45514" [label="docker-image://docker.io/balenalib/artik10-alpine:edge-build" shape="ellipse"];
  "sha256:dc2d907dfcf5451edd161a3610990828c5501f6dd93d5a932918bfa5b9c3f129" [label="/bin/sh -c apk add --no-cache libgcc libstdc++ libuv \t&& apk add --no-cache libssl1.0 || apk add --no-cache libssl1.1" shape="box"];
  "sha256:4f1755c00622fe6788b96cafba31dcbf8e3a4a10afcb437257d79c7c3047bca8" [label="/bin/sh -c for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/node/v$NODE_VERSION/node-v$NODE_VERSION-linux-alpine-armv7hf.tar.gz\" \t&& echo \"cfb788c0c13afda9149add75b2905d61e49a3fa2a2ed28660cc9d81cf2ebc206  node-v$NODE_VERSION-linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-alpine-armv7hf.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-alpine-armv7hf.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:7d98c34df3d3f980c622fe40610367f9191c5565390ae721a219d4c19ec47c80" [label="sha256:7d98c34df3d3f980c622fe40610367f9191c5565390ae721a219d4c19ec47c80" shape="plaintext"];
  "sha256:5b2c0007e68ed0f8eae3c662f34bf6f82a52a3581a1ae5b92cc80df81ce45514" -> "sha256:dc2d907dfcf5451edd161a3610990828c5501f6dd93d5a932918bfa5b9c3f129" [label=""];
  "sha256:dc2d907dfcf5451edd161a3610990828c5501f6dd93d5a932918bfa5b9c3f129" -> "sha256:4f1755c00622fe6788b96cafba31dcbf8e3a4a10afcb437257d79c7c3047bca8" [label=""];
  "sha256:4f1755c00622fe6788b96cafba31dcbf8e3a4a10afcb437257d79c7c3047bca8" -> "sha256:7d98c34df3d3f980c622fe40610367f9191c5565390ae721a219d4c19ec47c80" [label=""];
}

