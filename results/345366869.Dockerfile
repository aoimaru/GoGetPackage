[app/sources/345366869.Dockerfile]
digraph {
  "sha256:4be82b0723cc0f75b0fd8d1b01a5b158f93a3ec05522f95fd400dbf003b0f97a" [label="docker-image://docker.io/balenalib/cl-som-imx8-fedora:30-run" shape="ellipse"];
  "sha256:e1c79d4192fd34af7050b18dff09102254ddde3fbb31a5569cd7a0bc84b363d6" [label="/bin/sh -c for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-arm64.tar.gz\" \t&& echo \"2d84a777318bc95dd2a201ab8d700aea7e20641b3ece0c048399398dc645cbd7  node-v$NODE_VERSION-linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-arm64.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-arm64.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:5d8c93ff54cc87bb96bed6817b14ac30c8a1e5bf3aa8f8c67e97293defc871f4" [label="sha256:5d8c93ff54cc87bb96bed6817b14ac30c8a1e5bf3aa8f8c67e97293defc871f4" shape="plaintext"];
  "sha256:4be82b0723cc0f75b0fd8d1b01a5b158f93a3ec05522f95fd400dbf003b0f97a" -> "sha256:e1c79d4192fd34af7050b18dff09102254ddde3fbb31a5569cd7a0bc84b363d6" [label=""];
  "sha256:e1c79d4192fd34af7050b18dff09102254ddde3fbb31a5569cd7a0bc84b363d6" -> "sha256:5d8c93ff54cc87bb96bed6817b14ac30c8a1e5bf3aa8f8c67e97293defc871f4" [label=""];
}

