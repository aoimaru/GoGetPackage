[app/sources/345382765.Dockerfile]
digraph {
  "sha256:fcb5aa63c8592ee32dfa36018fb0531ddc5fddc49af291b0bfa34181b913a258" [label="docker-image://docker.io/balenalib/kitra710-alpine:3.7-build" shape="ellipse"];
  "sha256:ad2d2d2568620ba5015c8536df9490072d32a70f5537e6a54d80381846ee72c0" [label="/bin/sh -c apk add --no-cache libgcc libstdc++ libuv \t&& apk add --no-cache libssl1.0 || apk add --no-cache libssl1.1" shape="box"];
  "sha256:a910e678a9b961a8ea645f20d5f45d2392cde2fcc6da9718773e52c89d954374" [label="/bin/sh -c for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/node/v$NODE_VERSION/node-v$NODE_VERSION-linux-alpine-aarch64.tar.gz\" \t&& echo \"42f76198482f885581d98bfe4ca9560857c68d08f5ae078f2584558bd8b4c1a6  node-v$NODE_VERSION-linux-alpine-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-alpine-aarch64.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-alpine-aarch64.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:06b9270bd35a1a11f738c516ee304b8c0ef75cadf18932c9248509136616684e" [label="sha256:06b9270bd35a1a11f738c516ee304b8c0ef75cadf18932c9248509136616684e" shape="plaintext"];
  "sha256:fcb5aa63c8592ee32dfa36018fb0531ddc5fddc49af291b0bfa34181b913a258" -> "sha256:ad2d2d2568620ba5015c8536df9490072d32a70f5537e6a54d80381846ee72c0" [label=""];
  "sha256:ad2d2d2568620ba5015c8536df9490072d32a70f5537e6a54d80381846ee72c0" -> "sha256:a910e678a9b961a8ea645f20d5f45d2392cde2fcc6da9718773e52c89d954374" [label=""];
  "sha256:a910e678a9b961a8ea645f20d5f45d2392cde2fcc6da9718773e52c89d954374" -> "sha256:06b9270bd35a1a11f738c516ee304b8c0ef75cadf18932c9248509136616684e" [label=""];
}

