[app/sources/345379332.Dockerfile]
digraph {
  "sha256:1df17e17148d16cfac53816f82dd1118c9d85a5e6d6176161f35d867ead93078" [label="docker-image://docker.io/balenalib/apalis-imx6q-fedora:26-build" shape="ellipse"];
  "sha256:da811c9f2e43acb87c6cfe7a4793d397f82f80518387cd426143bc042720276d" [label="/bin/sh -c for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& echo \"ae6c41d78df4c5ef4032128eda9abd49a549bff5c8a20fd32d1072b6e5e8556b  node-v$NODE_VERSION-linux-armv7l.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:ca195cc9119051696b5c3b54df0d3905b3bed8b11e6fc4c930556b2882d5ed1a" [label="sha256:ca195cc9119051696b5c3b54df0d3905b3bed8b11e6fc4c930556b2882d5ed1a" shape="plaintext"];
  "sha256:1df17e17148d16cfac53816f82dd1118c9d85a5e6d6176161f35d867ead93078" -> "sha256:da811c9f2e43acb87c6cfe7a4793d397f82f80518387cd426143bc042720276d" [label=""];
  "sha256:da811c9f2e43acb87c6cfe7a4793d397f82f80518387cd426143bc042720276d" -> "sha256:ca195cc9119051696b5c3b54df0d3905b3bed8b11e6fc4c930556b2882d5ed1a" [label=""];
}

