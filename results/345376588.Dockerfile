[app/sources/345376588.Dockerfile]
digraph {
  "sha256:8ce2eaee8d7b7fa0e581b0c8d71168b31cb9ec09f08ee5fb17045af656f2814c" [label="docker-image://docker.io/balenalib/orbitty-tx2-fedora:26-build" shape="ellipse"];
  "sha256:e3d0ccdfb3a3f1228ec232d656a8ace78fc24af6c8a9cff5c88cfeae2878bb6b" [label="/bin/sh -c for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-arm64.tar.gz\" \t&& echo \"312a7942f5fbd0aa83d6e624a06681275db2cb3c3eeaf3e452ad04aac17b6de5  node-v$NODE_VERSION-linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-arm64.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-arm64.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:a1f2ae2586f20d081af0b697d29ba6ae8740b944fa87076b5997144dd897f809" [label="sha256:a1f2ae2586f20d081af0b697d29ba6ae8740b944fa87076b5997144dd897f809" shape="plaintext"];
  "sha256:8ce2eaee8d7b7fa0e581b0c8d71168b31cb9ec09f08ee5fb17045af656f2814c" -> "sha256:e3d0ccdfb3a3f1228ec232d656a8ace78fc24af6c8a9cff5c88cfeae2878bb6b" [label=""];
  "sha256:e3d0ccdfb3a3f1228ec232d656a8ace78fc24af6c8a9cff5c88cfeae2878bb6b" -> "sha256:a1f2ae2586f20d081af0b697d29ba6ae8740b944fa87076b5997144dd897f809" [label=""];
}
