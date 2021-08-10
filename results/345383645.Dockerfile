[app/sources/345383645.Dockerfile]
digraph {
  "sha256:10a1ad22d7f2b22910004ba5ddd696e9e3d023c46397247755691670bc2a3086" [label="docker-image://docker.io/balenalib/nitrogen6x-ubuntu:cosmic-build" shape="ellipse"];
  "sha256:d8952412c335e8f99933fc2d65d98244954df4dd0c50d7bc0476d4176a2831a3" [label="/bin/sh -c for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& echo \"756f21a07a5a8c6c1037754a332b3adf7b39fb1d49acf0893488cc545a2438cf  node-v$NODE_VERSION-linux-armv7l.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:a8355eacf070333073c45b3d5542dffbeb86458efedbeaf757da6901f2bcccad" [label="sha256:a8355eacf070333073c45b3d5542dffbeb86458efedbeaf757da6901f2bcccad" shape="plaintext"];
  "sha256:10a1ad22d7f2b22910004ba5ddd696e9e3d023c46397247755691670bc2a3086" -> "sha256:d8952412c335e8f99933fc2d65d98244954df4dd0c50d7bc0476d4176a2831a3" [label=""];
  "sha256:d8952412c335e8f99933fc2d65d98244954df4dd0c50d7bc0476d4176a2831a3" -> "sha256:a8355eacf070333073c45b3d5542dffbeb86458efedbeaf757da6901f2bcccad" [label=""];
}
