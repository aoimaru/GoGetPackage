[app/sources/345368966.Dockerfile]
digraph {
  "sha256:6b971062df06962948604fd45d149518d90364a9144951654fd8dcb09644d56c" [label="docker-image://docker.io/balenalib/intel-nuc-ubuntu:artful-build" shape="ellipse"];
  "sha256:335722f26261835b3678854ab4c90f7ae69acb5555f1f011faf155a6af9655fc" [label="/bin/sh -c for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.gz\" \t&& echo \"98bd18051cbdb39bbcda1ab169ca3fd3935d87e9cfc36e1b6fd6f609d46856bb  node-v$NODE_VERSION-linux-x64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-x64.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-x64.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:b3c01d24055dccaa0266868909822849693c9e8c68e4191b386c87408dadbdb0" [label="sha256:b3c01d24055dccaa0266868909822849693c9e8c68e4191b386c87408dadbdb0" shape="plaintext"];
  "sha256:6b971062df06962948604fd45d149518d90364a9144951654fd8dcb09644d56c" -> "sha256:335722f26261835b3678854ab4c90f7ae69acb5555f1f011faf155a6af9655fc" [label=""];
  "sha256:335722f26261835b3678854ab4c90f7ae69acb5555f1f011faf155a6af9655fc" -> "sha256:b3c01d24055dccaa0266868909822849693c9e8c68e4191b386c87408dadbdb0" [label=""];
}
