[app/sources/345381563.Dockerfile]
digraph {
  "sha256:41b759cbe4fbf49c76630192249b0ccb01809a0b98198fc9a88576bafa7ed76b" [label="docker-image://docker.io/balenalib/beaglebone-black-ubuntu:bionic-build" shape="ellipse"];
  "sha256:e08b437725f845e0664534768438750418ce12f0a578e196f3a14f776b9b9a62" [label="/bin/sh -c for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& echo \"756f21a07a5a8c6c1037754a332b3adf7b39fb1d49acf0893488cc545a2438cf  node-v$NODE_VERSION-linux-armv7l.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:3b79ff70060a5b1efd1b35bfbae133f0c96e1bbba62ed34fbe5ca2eb1b6288a9" [label="sha256:3b79ff70060a5b1efd1b35bfbae133f0c96e1bbba62ed34fbe5ca2eb1b6288a9" shape="plaintext"];
  "sha256:41b759cbe4fbf49c76630192249b0ccb01809a0b98198fc9a88576bafa7ed76b" -> "sha256:e08b437725f845e0664534768438750418ce12f0a578e196f3a14f776b9b9a62" [label=""];
  "sha256:e08b437725f845e0664534768438750418ce12f0a578e196f3a14f776b9b9a62" -> "sha256:3b79ff70060a5b1efd1b35bfbae133f0c96e1bbba62ed34fbe5ca2eb1b6288a9" [label=""];
}
