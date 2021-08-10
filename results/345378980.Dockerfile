[app/sources/345378980.Dockerfile]
digraph {
  "sha256:d20ba03c6d211fd39fa8e5ff5f90ff1e4b8a07e13d261bfcd27d91124c523410" [label="docker-image://docker.io/balenalib/am571x-evm-fedora:29-build" shape="ellipse"];
  "sha256:31b14eed165a665184dcd903d4fe88d318af57f9ab1c730dc3e64cb15ff6663a" [label="/bin/sh -c for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& echo \"756f21a07a5a8c6c1037754a332b3adf7b39fb1d49acf0893488cc545a2438cf  node-v$NODE_VERSION-linux-armv7l.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:579cbb40132b9707aca346f47f669727c1c0a8a870009cf257caaa69c8ce3f70" [label="sha256:579cbb40132b9707aca346f47f669727c1c0a8a870009cf257caaa69c8ce3f70" shape="plaintext"];
  "sha256:d20ba03c6d211fd39fa8e5ff5f90ff1e4b8a07e13d261bfcd27d91124c523410" -> "sha256:31b14eed165a665184dcd903d4fe88d318af57f9ab1c730dc3e64cb15ff6663a" [label=""];
  "sha256:31b14eed165a665184dcd903d4fe88d318af57f9ab1c730dc3e64cb15ff6663a" -> "sha256:579cbb40132b9707aca346f47f669727c1c0a8a870009cf257caaa69c8ce3f70" [label=""];
}

