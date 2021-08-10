[app/sources/345367592.Dockerfile]
digraph {
  "sha256:fdd467262675bd109fd5efd7341056a8cdf8052dc1a9db9aeac65e01626be3b7" [label="docker-image://docker.io/balenalib/generic-aarch64-fedora:29-build" shape="ellipse"];
  "sha256:a73fc4a18330835c607436854b06a9d7f1c976d5d920af2a5ca6451353c17157" [label="/bin/sh -c for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-arm64.tar.gz\" \t&& echo \"312a7942f5fbd0aa83d6e624a06681275db2cb3c3eeaf3e452ad04aac17b6de5  node-v$NODE_VERSION-linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-arm64.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-arm64.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:08c0715aa56a61b5c03a696445fe31a41065d203b8c81adf7e10c072aa794cce" [label="sha256:08c0715aa56a61b5c03a696445fe31a41065d203b8c81adf7e10c072aa794cce" shape="plaintext"];
  "sha256:fdd467262675bd109fd5efd7341056a8cdf8052dc1a9db9aeac65e01626be3b7" -> "sha256:a73fc4a18330835c607436854b06a9d7f1c976d5d920af2a5ca6451353c17157" [label=""];
  "sha256:a73fc4a18330835c607436854b06a9d7f1c976d5d920af2a5ca6451353c17157" -> "sha256:08c0715aa56a61b5c03a696445fe31a41065d203b8c81adf7e10c072aa794cce" [label=""];
}
