[app/sources/345376294.Dockerfile]
digraph {
  "sha256:7b4fbb215f00278fb1c46bd8c99947055b8d94b586f89e236e5adcd3b322f2e8" [label="docker-image://docker.io/balenalib/orange-pi-zero-ubuntu:xenial-build" shape="ellipse"];
  "sha256:db27a70151e4607a1f9ddce0d07eab84117b3b7dc3b53d47444f9bcdd0b34ffe" [label="/bin/sh -c for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& echo \"756f21a07a5a8c6c1037754a332b3adf7b39fb1d49acf0893488cc545a2438cf  node-v$NODE_VERSION-linux-armv7l.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:d9a91bdc7894c276886490b140c6396b702b2c03c7b286c31bdd1f81362c71b7" [label="sha256:d9a91bdc7894c276886490b140c6396b702b2c03c7b286c31bdd1f81362c71b7" shape="plaintext"];
  "sha256:7b4fbb215f00278fb1c46bd8c99947055b8d94b586f89e236e5adcd3b322f2e8" -> "sha256:db27a70151e4607a1f9ddce0d07eab84117b3b7dc3b53d47444f9bcdd0b34ffe" [label=""];
  "sha256:db27a70151e4607a1f9ddce0d07eab84117b3b7dc3b53d47444f9bcdd0b34ffe" -> "sha256:d9a91bdc7894c276886490b140c6396b702b2c03c7b286c31bdd1f81362c71b7" [label=""];
}

