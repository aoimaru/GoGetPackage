[app/sources/345380001.Dockerfile]
digraph {
  "sha256:077a458775c8ed41b6c15f23f3af4a3099fcdf9ddf834feff6c9175950a0ba32" [label="docker-image://docker.io/balenalib/artik5-alpine:3.7-build" shape="ellipse"];
  "sha256:0fdd2ddb1e2ec7f951339101dc700d3a680c00ddfaa59dea2db30d849b465974" [label="/bin/sh -c apk add --no-cache libgcc libstdc++ libuv \t&& apk add --no-cache libssl1.0 || apk add --no-cache libssl1.1" shape="box"];
  "sha256:ab023ece432eafaf8285dc846b94e6679f4f27937eb74f8abe56decb774a0408" [label="/bin/sh -c for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/node/v$NODE_VERSION/node-v$NODE_VERSION-linux-alpine-armhf.tar.gz\" \t&& echo \"1c59484912033ea8e398ebde62af22e4a4c8688e1b91a3ec8323e201c1aa1cf7  node-v$NODE_VERSION-linux-alpine-armhf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-alpine-armhf.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-alpine-armhf.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:a3bd8d97d4a6c94393fcda0f7c2662bab9dc7738fc48f4b165633ed3c48d8b6b" [label="sha256:a3bd8d97d4a6c94393fcda0f7c2662bab9dc7738fc48f4b165633ed3c48d8b6b" shape="plaintext"];
  "sha256:077a458775c8ed41b6c15f23f3af4a3099fcdf9ddf834feff6c9175950a0ba32" -> "sha256:0fdd2ddb1e2ec7f951339101dc700d3a680c00ddfaa59dea2db30d849b465974" [label=""];
  "sha256:0fdd2ddb1e2ec7f951339101dc700d3a680c00ddfaa59dea2db30d849b465974" -> "sha256:ab023ece432eafaf8285dc846b94e6679f4f27937eb74f8abe56decb774a0408" [label=""];
  "sha256:ab023ece432eafaf8285dc846b94e6679f4f27937eb74f8abe56decb774a0408" -> "sha256:a3bd8d97d4a6c94393fcda0f7c2662bab9dc7738fc48f4b165633ed3c48d8b6b" [label=""];
}
