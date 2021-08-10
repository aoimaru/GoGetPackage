[app/sources/345380701.Dockerfile]
digraph {
  "sha256:e7901db2502e2feab20f84dcc6b083b5b80dc67b0f92b28fe78d8d4cbbc3920a" [label="docker-image://docker.io/balenalib/artik710-ubuntu:xenial-build" shape="ellipse"];
  "sha256:5e8a51fe2b204943aa418b221efba26c1a01efcdada85be4d545b4a34c32fa6c" [label="/bin/sh -c for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-arm64.tar.gz\" \t&& echo \"78f600a8690ae34aac8079142c77bb0f0f09c6ddea2272b9a135285610ad71d1  node-v$NODE_VERSION-linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-arm64.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-arm64.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:588749879fa84e1b0c46dec92668d195649bfa0b8790047344a6b9e3b9039e70" [label="sha256:588749879fa84e1b0c46dec92668d195649bfa0b8790047344a6b9e3b9039e70" shape="plaintext"];
  "sha256:e7901db2502e2feab20f84dcc6b083b5b80dc67b0f92b28fe78d8d4cbbc3920a" -> "sha256:5e8a51fe2b204943aa418b221efba26c1a01efcdada85be4d545b4a34c32fa6c" [label=""];
  "sha256:5e8a51fe2b204943aa418b221efba26c1a01efcdada85be4d545b4a34c32fa6c" -> "sha256:588749879fa84e1b0c46dec92668d195649bfa0b8790047344a6b9e3b9039e70" [label=""];
}

