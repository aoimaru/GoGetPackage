[app/sources/345381263.Dockerfile]
digraph {
  "sha256:d5701edd53c023eeba2618f492953f8053a1148ce044d2b8fe2e30e46850309b" [label="docker-image://docker.io/balenalib/beagleboard-xm-alpine:3.7-build" shape="ellipse"];
  "sha256:fa90524a813d4730ae95991ac4efea768008bc4fedfb840e4c09502e11f84ebd" [label="/bin/sh -c apk add --no-cache libgcc libstdc++ libuv \t&& apk add --no-cache libssl1.0 || apk add --no-cache libssl1.1" shape="box"];
  "sha256:a06a6855e2acc43a3b7abd79906768eddca66eb56e74c349b52abc0a15aee29c" [label="/bin/sh -c for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/node/v$NODE_VERSION/node-v$NODE_VERSION-linux-alpine-armv7hf.tar.gz\" \t&& echo \"cfb788c0c13afda9149add75b2905d61e49a3fa2a2ed28660cc9d81cf2ebc206  node-v$NODE_VERSION-linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-alpine-armv7hf.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-alpine-armv7hf.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:7104625e89571b77277391b80bee0ecc5acd82e0a5bf8e17402e4cb2f32a8d88" [label="sha256:7104625e89571b77277391b80bee0ecc5acd82e0a5bf8e17402e4cb2f32a8d88" shape="plaintext"];
  "sha256:d5701edd53c023eeba2618f492953f8053a1148ce044d2b8fe2e30e46850309b" -> "sha256:fa90524a813d4730ae95991ac4efea768008bc4fedfb840e4c09502e11f84ebd" [label=""];
  "sha256:fa90524a813d4730ae95991ac4efea768008bc4fedfb840e4c09502e11f84ebd" -> "sha256:a06a6855e2acc43a3b7abd79906768eddca66eb56e74c349b52abc0a15aee29c" [label=""];
  "sha256:a06a6855e2acc43a3b7abd79906768eddca66eb56e74c349b52abc0a15aee29c" -> "sha256:7104625e89571b77277391b80bee0ecc5acd82e0a5bf8e17402e4cb2f32a8d88" [label=""];
}
