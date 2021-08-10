[app/sources/345382079.Dockerfile]
digraph {
  "sha256:38d37c49f51676e6bb46f28669b211a16dfe984e043d6b18576f686304fb3b59" [label="docker-image://docker.io/balenalib/i386-debian:stretch-build" shape="ellipse"];
  "sha256:0e9275fe2b6dba41a4000685d2e068d6ddae16d283ab701999e7890c01432bd6" [label="/bin/sh -c for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --batch --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --batch --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/node/v$NODE_VERSION/node-v$NODE_VERSION-linux-i386.tar.gz\" \t&& echo \"cf63881822677c118bb95dad7829afa6610bc53f0f2396335378148f9df91dd5  node-v$NODE_VERSION-linux-i386.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-i386.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-i386.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:628370e93a6cd8b9d8ff38ab9b4507e3afa6b850675f60d1d15f5ac4ccdf216b" [label="sha256:628370e93a6cd8b9d8ff38ab9b4507e3afa6b850675f60d1d15f5ac4ccdf216b" shape="plaintext"];
  "sha256:38d37c49f51676e6bb46f28669b211a16dfe984e043d6b18576f686304fb3b59" -> "sha256:0e9275fe2b6dba41a4000685d2e068d6ddae16d283ab701999e7890c01432bd6" [label=""];
  "sha256:0e9275fe2b6dba41a4000685d2e068d6ddae16d283ab701999e7890c01432bd6" -> "sha256:628370e93a6cd8b9d8ff38ab9b4507e3afa6b850675f60d1d15f5ac4ccdf216b" [label=""];
}

