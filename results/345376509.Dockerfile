[app/sources/345376509.Dockerfile]
digraph {
  "sha256:3895ac64183e5ae866e44267fc87089872b8f8f868b65b806969a2ab157e9423" [label="docker-image://docker.io/balenalib/orbitty-tx2-alpine:3.7-run" shape="ellipse"];
  "sha256:3b021a899fad5ff6a1e05de6d270bba932d94f1025e5e332b55771e6bcc14ba6" [label="/bin/sh -c apk add --no-cache libgcc libstdc++ libuv \t&& apk add --no-cache libssl1.0 || apk add --no-cache libssl1.1" shape="box"];
  "sha256:0bf08e1450b2f720776597bb262b089755c31b47f94219dc92ee83cfaef62134" [label="/bin/sh -c buildDeps='curl' \t&& set -x \t&& for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& apk add --no-cache $buildDeps \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/node/v$NODE_VERSION/node-v$NODE_VERSION-linux-alpine-aarch64.tar.gz\" \t&& echo \"304250e38ed66c5763c757831d30dcf384e58d767a05b0731adc09a573446a2b  node-v$NODE_VERSION-linux-alpine-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-alpine-aarch64.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-alpine-aarch64.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& apk del $buildDeps \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:13501ccb61bc544af5a296e790110b6d2a151efcb1549102e39213d267ead030" [label="sha256:13501ccb61bc544af5a296e790110b6d2a151efcb1549102e39213d267ead030" shape="plaintext"];
  "sha256:3895ac64183e5ae866e44267fc87089872b8f8f868b65b806969a2ab157e9423" -> "sha256:3b021a899fad5ff6a1e05de6d270bba932d94f1025e5e332b55771e6bcc14ba6" [label=""];
  "sha256:3b021a899fad5ff6a1e05de6d270bba932d94f1025e5e332b55771e6bcc14ba6" -> "sha256:0bf08e1450b2f720776597bb262b089755c31b47f94219dc92ee83cfaef62134" [label=""];
  "sha256:0bf08e1450b2f720776597bb262b089755c31b47f94219dc92ee83cfaef62134" -> "sha256:13501ccb61bc544af5a296e790110b6d2a151efcb1549102e39213d267ead030" [label=""];
}
