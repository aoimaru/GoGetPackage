[app/sources/345381315.Dockerfile]
digraph {
  "sha256:08d9d29e428292d12fc6015999e8512c8b92da1e9567e5d367ec0560c443c4f1" [label="docker-image://docker.io/balenalib/beagleboard-xm-debian:jessie-build" shape="ellipse"];
  "sha256:33caa4aba9e4c64a8d43e6f71d73612562383280cf170254faaa994f0f35ef7c" [label="/bin/sh -c for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --batch --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --batch --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& echo \"ae6c41d78df4c5ef4032128eda9abd49a549bff5c8a20fd32d1072b6e5e8556b  node-v$NODE_VERSION-linux-armv7l.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:3ef982f8e8889520ee3669643643fe5472061b33c7483167843b2d4f627120de" [label="sha256:3ef982f8e8889520ee3669643643fe5472061b33c7483167843b2d4f627120de" shape="plaintext"];
  "sha256:08d9d29e428292d12fc6015999e8512c8b92da1e9567e5d367ec0560c443c4f1" -> "sha256:33caa4aba9e4c64a8d43e6f71d73612562383280cf170254faaa994f0f35ef7c" [label=""];
  "sha256:33caa4aba9e4c64a8d43e6f71d73612562383280cf170254faaa994f0f35ef7c" -> "sha256:3ef982f8e8889520ee3669643643fe5472061b33c7483167843b2d4f627120de" [label=""];
}
