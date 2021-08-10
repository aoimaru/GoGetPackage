[app/sources/345366842.Dockerfile]
digraph {
  "sha256:3bcacc668c4c2f44efd61d4d439849c6830ccae1ef34efe39b5d657f489fbbfc" [label="docker-image://docker.io/balenalib/cl-som-imx8-fedora:26-build" shape="ellipse"];
  "sha256:5b121da65b261c224a606dbbfa9a9c6e72ed51d7b0b869141db97d9ca381ed85" [label="/bin/sh -c for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-arm64.tar.gz\" \t&& echo \"312a7942f5fbd0aa83d6e624a06681275db2cb3c3eeaf3e452ad04aac17b6de5  node-v$NODE_VERSION-linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-arm64.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-arm64.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:d00db9ac20afc4d51a3ce20becf7471e667012ecfede9188a2fb04b5ac019f26" [label="sha256:d00db9ac20afc4d51a3ce20becf7471e667012ecfede9188a2fb04b5ac019f26" shape="plaintext"];
  "sha256:3bcacc668c4c2f44efd61d4d439849c6830ccae1ef34efe39b5d657f489fbbfc" -> "sha256:5b121da65b261c224a606dbbfa9a9c6e72ed51d7b0b869141db97d9ca381ed85" [label=""];
  "sha256:5b121da65b261c224a606dbbfa9a9c6e72ed51d7b0b869141db97d9ca381ed85" -> "sha256:d00db9ac20afc4d51a3ce20becf7471e667012ecfede9188a2fb04b5ac019f26" [label=""];
}

