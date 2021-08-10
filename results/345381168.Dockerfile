[app/sources/345381168.Dockerfile]
digraph {
  "sha256:0c42004ec33efaf21cdafef9e21bd42be6f7789799d6b40f4e7fa40a2e385734" [label="docker-image://docker.io/balenalib/bananapi-m1-plus-fedora:26-run" shape="ellipse"];
  "sha256:e1ea1de437437a533b0d124150d89b9904bfd3067baacea254c0bfae891167b6" [label="/bin/sh -c for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& echo \"12929c2128f740a47690c5e991c401b213a0b0923383f40ed53c1ca44ae99ec2  node-v$NODE_VERSION-linux-armv7l.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:46731bf77cadade7d8deb5b7096bc175cfc54f08ded98f0d7cadff09b63e37d6" [label="sha256:46731bf77cadade7d8deb5b7096bc175cfc54f08ded98f0d7cadff09b63e37d6" shape="plaintext"];
  "sha256:0c42004ec33efaf21cdafef9e21bd42be6f7789799d6b40f4e7fa40a2e385734" -> "sha256:e1ea1de437437a533b0d124150d89b9904bfd3067baacea254c0bfae891167b6" [label=""];
  "sha256:e1ea1de437437a533b0d124150d89b9904bfd3067baacea254c0bfae891167b6" -> "sha256:46731bf77cadade7d8deb5b7096bc175cfc54f08ded98f0d7cadff09b63e37d6" [label=""];
}
