[app/sources/345381415.Dockerfile]
digraph {
  "sha256:7a44163d2c6ff5f1a9d741a53b441b905abbfbe4722c77b6208cd8e704f6370f" [label="docker-image://docker.io/balenalib/beagleboard-xm-ubuntu:xenial-build" shape="ellipse"];
  "sha256:d690046896c9983ec7f8bfed49929a045d9de8a769cfff4750f872bf36df6bf7" [label="/bin/sh -c for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& echo \"ae6c41d78df4c5ef4032128eda9abd49a549bff5c8a20fd32d1072b6e5e8556b  node-v$NODE_VERSION-linux-armv7l.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:b7de0a39a66c053a41632981afd6462dd8425abe37ad09357936d265b6e1fc0d" [label="sha256:b7de0a39a66c053a41632981afd6462dd8425abe37ad09357936d265b6e1fc0d" shape="plaintext"];
  "sha256:7a44163d2c6ff5f1a9d741a53b441b905abbfbe4722c77b6208cd8e704f6370f" -> "sha256:d690046896c9983ec7f8bfed49929a045d9de8a769cfff4750f872bf36df6bf7" [label=""];
  "sha256:d690046896c9983ec7f8bfed49929a045d9de8a769cfff4750f872bf36df6bf7" -> "sha256:b7de0a39a66c053a41632981afd6462dd8425abe37ad09357936d265b6e1fc0d" [label=""];
}
