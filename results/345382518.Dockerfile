[app/sources/345382518.Dockerfile]
digraph {
  "sha256:1483b98b987ba8e877a6e679b8c1fa01d700f61433b46fc443969a6a054aa737" [label="docker-image://docker.io/balenalib/imx8m-var-dart-alpine:3.8-run" shape="ellipse"];
  "sha256:d0426c8a5b1403e88c8a012ee35c12eb25e95e80d0f587136f41054c2244c335" [label="/bin/sh -c apk add --no-cache libgcc libstdc++ libuv \t&& apk add --no-cache libssl1.0 || apk add --no-cache libssl1.1" shape="box"];
  "sha256:da7c712a80d1f7b9ee1a6550ea6f09345456083d7e1e1b9be3346f28f1aad39f" [label="/bin/sh -c buildDeps='curl' \t&& set -x \t&& for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& apk add --no-cache $buildDeps \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/node/v$NODE_VERSION/node-v$NODE_VERSION-linux-alpine-aarch64.tar.gz\" \t&& echo \"42f76198482f885581d98bfe4ca9560857c68d08f5ae078f2584558bd8b4c1a6  node-v$NODE_VERSION-linux-alpine-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-alpine-aarch64.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-alpine-aarch64.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& apk del $buildDeps \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:fcfca0160663208cebf9b5f130a0f94ba432d6f68e002453407c4c9572769712" [label="sha256:fcfca0160663208cebf9b5f130a0f94ba432d6f68e002453407c4c9572769712" shape="plaintext"];
  "sha256:1483b98b987ba8e877a6e679b8c1fa01d700f61433b46fc443969a6a054aa737" -> "sha256:d0426c8a5b1403e88c8a012ee35c12eb25e95e80d0f587136f41054c2244c335" [label=""];
  "sha256:d0426c8a5b1403e88c8a012ee35c12eb25e95e80d0f587136f41054c2244c335" -> "sha256:da7c712a80d1f7b9ee1a6550ea6f09345456083d7e1e1b9be3346f28f1aad39f" [label=""];
  "sha256:da7c712a80d1f7b9ee1a6550ea6f09345456083d7e1e1b9be3346f28f1aad39f" -> "sha256:fcfca0160663208cebf9b5f130a0f94ba432d6f68e002453407c4c9572769712" [label=""];
}
